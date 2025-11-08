Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FABF1FECD4
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762568394; cv=none; b=N9qk6u8NoGrBEbKikCfYjbd1qIhbDXXhTAOGnkjoTw3Yan1ydMhGiV2AdF2GhtUA7jQnn7IWAhggA63wgoEOdUf+0gAYK+tQzDl4rkOyvW6S73yTbI9qP2MV1apvpyiq4JPw3hFRdJE9zK4pBMRgRfYdEZt1UjT/PP6lFMAVu6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762568394; c=relaxed/simple;
	bh=z+UZUvthf0i42hL46sBydgK6G3LdLbqcQ2qOC+7mzwo=;
	h=To:Subject:From:Message-Id:Date; b=RTZRhSx7SchCVL4wM8P7/WEB6bIF2z7XQqwhUL3cCvugbDDz2OwX6F3ehw80HICfGoO92qjEp3Fccz1y+qnYf85dil/ZSwUxS0cSQ0cI2w3w/ij2QcKUSAfKEUQYaFGPbymymsh2ixpVaFbhr4xqYPJhtFJAW5os3DCrx0IQcPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kijl0IWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kijl0IWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53DBC19421
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762568393;
	bh=z+UZUvthf0i42hL46sBydgK6G3LdLbqcQ2qOC+7mzwo=;
	h=To:Subject:From:Date:From;
	b=kijl0IWdPY9KEiHEGLVr7ZyHnmEMFuEaFs7a+x1SqhjKUXhf1xtTsNHQGjo+zZr7U
	 i0UpypfGtMugy7a4vcgferlYNw9cYXuK9I3VAW6wzdpK6vURR/OqENpIfdPdZyhqKz
	 zYNWwazxJzavEEjy9EStRm+REj9nL+svlRinLGEMWXqpxcZAYd2uVjXntH7Fglpb9h
	 6dWmzytLN3hTpND7GQjlUhb1/c+5fDqI3ZkjODwf2juv6F9qt1BMyux89GQridGCHg
	 LjxHcOL/waGHXrJTTEPAe8u/OQ8SLKFwK9eeYHdZUbjm8SVNGO+tC0t37puTkv8Ttt
	 VeDPNPgLcDCGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9893FCCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256839358.12964.16770261334664507178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355929fa4a3560efdd4d8b8a5c5e72a25ac19055557f91f1bb8dbe45b0949e7f
Date: Sat, 08 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762568393
