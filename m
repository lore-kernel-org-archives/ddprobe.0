Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366D8296BB6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766744634; cv=none; b=Chqlbo5CQnea/cWPqW1adFxFnAM6K8HBF70Dg9xeOa7Pn86umVVcYiUgjX7EIOU2LyGCJapdzunVRsjClfRifOqZfCtpE5itOIpzcpWBiGRI2NQaI8fwqLVOXGcEOQFjBg1kfV2CsPzTR2qzVM/WOHARuaTUcidmkPi42HL19CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766744634; c=relaxed/simple;
	bh=TRFSDA8JUlGA0bPdXDu1InlJULm4vqnafcNxqsj+u8o=;
	h=To:Subject:From:Message-Id:Date; b=DMPg+4wQfEnCbS0TQ/1WIvBZwOR5wug3Uh/jTIw2Cb366NrDIsWAVf1JuVuKpqo1wiffmgTdpfJle5lYV6Ogu1IvtI8n4VaPs63eNs9x5bHPGFCpdxAz6TQMQ515OkgS52Joj7523eLvQ99s3TP13Qp+gF3ZBRVj35hTdnbnMXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMzTgYOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMzTgYOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D85C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766744633;
	bh=TRFSDA8JUlGA0bPdXDu1InlJULm4vqnafcNxqsj+u8o=;
	h=To:Subject:From:Date:From;
	b=SMzTgYOOaPdcgPc5PF69L+zwlqiCB1xRe9REXTycFbj10EyPzXWXJ77FX7MY6apuL
	 MWlF+yQv0bEoP2R9AgFgOBUgx7mFy03FdpNiGfMH98cjLv69kOOhj/fmSZM4wZb6+a
	 WKB9sMh6ffD+HDT6AqbqGGbu6QE684duvJ0++WWoMekrkO+G3b+IymXltLAo8SPyER
	 lwB2pukB1M+dpdNsoa5q1a3MtnW1Te/H0m57/aNxLMyD0+VPJXBIgYk2M67zi6hj2n
	 MHvmTZEQniivPEzNNGpzsYtx6yz9upRlICljoUGWZ7rOSpd0Z1yo3MJw7rj33gOmG1
	 8BypzPHXEuNzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F0AE8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674463358.32556.3932154992987612287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a3463e15854a592c448579eac964d9b6b924a0dc6d439964a695c3cd1e5097
Date: Fri, 26 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766744633
