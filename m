Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488C019B59C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737225954; cv=none; b=hZqoU+BpDnEG9AyN0ne+mdnJY3Up/V9SRtCrauOh+t8u/MTv96f9cpzRE9aqY88v745tPqvVY7yLkUdu68EjUWMerSi9sMmkgOEVbN7/yoilHsmJPGvqB9UE+1FT4CaFcRJrD8gWf/o/BTL/hpPA/MTfJnOM84YBHFtFMTbZ7ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737225954; c=relaxed/simple;
	bh=/L1lKBD9p3AjDURpY061L+3acHGI3moCTHV2/osObrI=;
	h=To:Subject:From:Message-Id:Date; b=BlUv8yV1AFLrQy1E6H+f/JGZFStSNCFB4aqtXremd1wGjy8zDjDM52r3iqIfAy2hpmmyDaAdIiPIAYiUKmS50tDc6IH6oU7faeDv+5sggQRPKJseII4Pr6f7sVLM31lcW70yBMoHFQM3TjtxF1p4YgpPl9XWXo7zcUF8+VCgnaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgsQva0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgsQva0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8824C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737225953;
	bh=/L1lKBD9p3AjDURpY061L+3acHGI3moCTHV2/osObrI=;
	h=To:Subject:From:Date:From;
	b=jgsQva0MqqHxB6f8mTYnJ+0XZ3zAfgzICi5fy/xXto9OqTA+JsnzpBuQoN8NAq4UD
	 i/U61XaxYX6VV8TTAdYCROsoZtmI2oZns/jGMlgVHYZn0DJ8WD6SizYlapqY1jh6Lz
	 AXfoX+vxo85CErmQh7zsDa8sZQhZqD8S0/QsS5df2Vc1FiwLOg3NyxZOj6fhLqPdzq
	 Ojp89O8H+X8fgCOG2gN8a9Ud/QFW7HhLIKa0dECc5O9hCPbp7Bw8RuTp1rUnSLK4c8
	 c2pIyjHTdZuHa9HwJgcbkmIW1vvs0gAPU/eVb1JbYcWckHZvVwHMIDKPgVTKix5IBW
	 pu6DZMiHB44IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F2C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722595357.1020.7386890577316756481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0298fdb3b27a90dad807d4ead12d89e865bee7380d9ab04bd67f59457c3ee1
Date: Sat, 18 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737225953
