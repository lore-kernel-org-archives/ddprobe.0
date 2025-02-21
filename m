Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7876D2236E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740157134; cv=none; b=G6SgYaauhoRw8A/ui0KNIyphvRwFFcpieoBTkquT4ZGmVRLUfLfQVybuslSIrsiqddVMNeBEa8ajHwvHwHm/yrlNA269qdO7rkNShC/Wd1Y0L6AoOy83JOJZxt0e3dlp7xnpLoODvnIujr5IHlEX1XstlrQCI9MObO4MdSX0BG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740157134; c=relaxed/simple;
	bh=C3Y9i0oRDz3g7gsglHgBroFq8RBX7m4yr6EU8ckV06A=;
	h=To:Subject:From:Message-Id:Date; b=faTjEuwFsvp7b3LUVuqCTYF5Wwz+g62B2ALFu3Te5iMHkIfnkgtjxsTlV2ipEFynIy93dhsbiYYlcHIRLONID5cNs5eAmR4E6xTZRWQqtdfHSj05UDRb1rW9Yl5knRMUTejMPAobEODYtGiRkX5n8NwpWcThx1//Z6B+8ATaJQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvJuXjfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvJuXjfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1152FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740157134;
	bh=C3Y9i0oRDz3g7gsglHgBroFq8RBX7m4yr6EU8ckV06A=;
	h=To:Subject:From:Date:From;
	b=FvJuXjfADCLCT+dN/OXPd19fxq4nEyKtjdm/EAzJn9PygBMekHc0zAF77RRKcZSJP
	 605WW8cKB2C9/eTFRn754Zd4dKmWuIZsnLMytHHigPfqU9z0uWvFYo0bWeOD1FgAda
	 Fcoh2V9x+tw6azmgGh+mf/8S+w0msc1LNdBUYpWnoRqsmlBFVZnTILMAjsb2Zgfo7m
	 23907Q+Io9gfbxyEuVQehkTRguUvD4cAt6ldnTL9duCPo8xIuImc4116OHy5o2cCRC
	 eDuiT0eRZw3xrJGhWmxtyAMzyC9ZRhoUnl4yu3UI3iDE6lPWY0vvyH0lqrqo36Az7n
	 3lLAVw5BVNmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F372C021B6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174015713364.7919.14077037621342212433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4d1a5c8132f776475efd125de5076b65da43ac4c5da614cd6680d85b5bfd41
Date: Fri, 21 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740157133
