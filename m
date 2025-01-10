Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCB13FB9C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736486154; cv=none; b=eoZbFLoJp5qpZl7gYiq6BveedboYwgI1EesPgDLU+mqWwofJGnEGBtsf9w87SCdz4jVm8e1IQtzsT54A/K0fobkab4pDI10J5VNdkxu04YyCNFlsUmzQeKVwJ6EDSTCy87otDXPXqYrNmoqQ90b0/AtrgZo1bz68RqG1jrQeJ30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736486154; c=relaxed/simple;
	bh=YFrMa44uVHy86Gt+wfon+ipWJRWIZWbIRbbXUhuhUeI=;
	h=To:Subject:From:Message-Id:Date; b=JnB4wJYJcTlQt/wa8vCpJHe3zG/KpaeGu0Q3sPvH16QaqUcXx+rwcxbvBuGogopD+CSWHPBZdp6W8OIS2Dm2yIPXB7uhiV2UZnxkA8qB/cnu212qw8Y9fcHlhw22bbK19s9/fRz+18B+9f0VzTKE4Swnif0gPiZPIcoec7Kai5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrTUXBZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrTUXBZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15AEC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736486153;
	bh=YFrMa44uVHy86Gt+wfon+ipWJRWIZWbIRbbXUhuhUeI=;
	h=To:Subject:From:Date:From;
	b=NrTUXBZCaXCBqlsUJszKd8sgKjypSBEQH+uXFIIbjWjVsLJLAHddSe1pKu9+0wm0m
	 mclpBtyjayriQgsLegQf/qVQn3BHFoWFHgD+wBWSdKqhCsdnVouvP9juqHNuSMwlCM
	 dF1MR1i8q8YJ6mT5r0jMJ0pWNa9LbJx3FReRjWyNS9156BRSUSRI9LsK13DjvVaiuZ
	 HH4ZAw6w29dnuadSrdx+oX+svDdanmQFi3E18uITWl31XLffeb8ccLHDMf8OmcPPQ9
	 JAzoB5OOhS8oDkwODiStWQdTwq3PWqZkO12gwQOCp8qkxs8irPdekR0rz+K1+3+5pj
	 OTGdr4fCl/WLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07B5E7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648615364.13611.13492245682443622068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284c3d10abf18a39ca0a141bc1e35d57e4dc633fe5d1a65972d89eea20b476ce
Date: Fri, 10 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736486153
