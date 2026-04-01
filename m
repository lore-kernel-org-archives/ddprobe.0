Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3151C3E959F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775039134; cv=none; b=EYU9bQfiN32do98dIaXmnA/nHJo8H8W1tr3ityKWHFOLUoMv8fGW3PT0ciWGNvX6ZOVfjVOD8hfTq2/8AAdW0s8zQQHFABAv4dSPQC0dnzuATC+3GEpw0uxmUZWp7C/xTp8PA6D8+SjQ7280XW/vUdFs3UJryRb5jDVg6kwuGb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775039134; c=relaxed/simple;
	bh=uF3bnkXxtGh5eCwJbNQ7Y+qzlzno2Yt4BOcQXq255wY=;
	h=To:Subject:From:Message-Id:Date; b=hTjMrMDk1V1PXlkCOWYItumeKgiRnQWDjxlfz3tL/goUsVgWR2ihc/f3spfrtuxOrUPJi8S/+xy4UHmozkyJRYetVVS5ShRZ12Im5P7+8f2/+fognuBYqXO8rytZAKl2Ot3Q7+SVGitrOFZX2lKMOhUgMXLZvNT2AKsxsJX1FBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHc+Ytn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHc+Ytn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BECC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775039133;
	bh=uF3bnkXxtGh5eCwJbNQ7Y+qzlzno2Yt4BOcQXq255wY=;
	h=To:Subject:From:Date:From;
	b=nHc+Ytn5uuk/akC9J35PoMjtw1PBzbR/0tAl/Zj6rIR+wBfAG859Fflhk09zoh7lG
	 ISLLkb2k57Hjl/sXWZun/h5qBJK+hY+90hMZ2S4599VLbjnKCwg/PEHvad+fFqHFHi
	 jqctLR4mY1/69gp3D/qbTjjsBtK3SXaS0VKgYhIyPdWCtBhlOm/XWQOTWbDU6XlyV7
	 /0svAk+6g6Mv4wbAEyvwrqW8pEVag/nzp6idqZncRnz8KIiZoxzo6UFJk1feq8BNGi
	 CS9kPK5BPIgzm0YVYRrZS3HiWRtHDIR2Z4I/0hV6VhXb/WhmvBN7f+IiH3mfcnW+56
	 n8jYZaYdw80+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF61FD35173
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503913369.6794.4079932983769988829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558febdf21adea129fa2db5ddc593acc5a514e01d37ab660ee4e00d73a1367af
Date: Wed, 01 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775039133
