Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42977155A30
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747457394; cv=none; b=Rgqa0zASe3MHndc5lGU5wgoBAiadsHYeFPbTBJwKhwxySvV5cvZUSYl9ZhbrHDR9oj3RlOu8T+IXh9AsGiMoOPGrBRFyojrL9aB+l7n7GyDmDIMFj46W/rNslPltDc7RH6q7QAoi4DoeLZz90vapYaVr2supoH6cl5mjpVKAWxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747457394; c=relaxed/simple;
	bh=VGRH0PT+heyj5LfoseOqfDLoeeyJ/qYI/hwEuCiwZGY=;
	h=To:Subject:From:Message-Id:Date; b=AkfhhxDVNBn++CpNfy9kycM2tTs5iMM1XzVwH5rbSLUP1h4vwErQe5++DjWQr57kdzjx6O3De35vpDZiS5xMxlr2rA9Z1FMQziEkxmyL1hj7G3GeCGwlLAFtRmWHoaZ4wAHdz7t5P9IdMr+CzRDSEVHg//WXoCT0AuLut0L65Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPUDcU5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPUDcU5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747457393;
	bh=VGRH0PT+heyj5LfoseOqfDLoeeyJ/qYI/hwEuCiwZGY=;
	h=To:Subject:From:Date:From;
	b=KPUDcU5pNbHgsp3PA5yTIym+J9Z5Z6feVKmqEdjBwTOUU0ADqtd5l4vaPSSZz8z8O
	 pl8MUSVOqYPewPp602Vo3KHCtdjpHM0GzIkBpOQ0Blu6Z5IQducXkYkL0AdAr2aiZv
	 H23zw+wkW4dceM6ENr1J9vb+MItO51eJgVmhqKRbNajeEJlAbOqDaPNIVHBDgYv/33
	 HkRxPGt877trzxpD5w/4IEyJRNlgsViaZ0nFhSpxOBhCsQAv7avuoEPjMCGe7qglTI
	 vMipiPwztybpvrRCPlJB8INmCc6ENWz2exteNfM4lPqD9QC4X08fsUAvSWbWIKVSSQ
	 dBkNayAKWqFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7DC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745739357.19552.11117523654415413667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1867377bbb167011852307a761e0b14e5c201213f2598ab29a430713c9d4eb38
Date: Sat, 17 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747457393
