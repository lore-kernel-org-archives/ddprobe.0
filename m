Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD512AD00
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747538994; cv=none; b=U9MMieIQkzLQtM90inCFHrKr7+DD5nUbfFGmjbHcbFSI5XK1NaG6GsRJqKz/laU3EBF43G1mZK2UxizVZBNSO510M5GgnK60wYPPdRQxwlZ3z48G+npcsY9lEapCIjWtHYs9MwTHEoj804RmWaKIdWU1Bjjw4vIKijmmDkfVuA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747538994; c=relaxed/simple;
	bh=p5FbYKpRaYpVgE+fGhh0Pznlk7Jd++ME0zYQRrBeZFc=;
	h=To:Subject:From:Message-Id:Date; b=r2mJDTFINzrkZSBU1mdDE5kChAnxiDIfSpGEvZ9pyGjCBEsWJ5a3YgxAcqSPuRmLQkRdnd/Am87NwjZZgyDQ02E0wYlvwxIKYzFFfMhKW8qYfF+qYIiCTo4OojM0Sr8/oYemBxMwOI3bBR7pxadac5WprqYHLJZKl5E4Ic9MMQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxaQmHoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxaQmHoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3220C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747538993;
	bh=p5FbYKpRaYpVgE+fGhh0Pznlk7Jd++ME0zYQRrBeZFc=;
	h=To:Subject:From:Date:From;
	b=bxaQmHoIWNswYpRNm7yohGYFm67fiCJtPLLH/okcvek3g+pDrjGG8oQpQhxmR42zW
	 Bee78e9444+OfUq4XZQJANs3a1m545rFh2pYALt2UAsbya83TNWzAqVXsQFzHl5zLM
	 qpBt4TZvf+SkNADlZMKZdqLgm6UTsIsIlQLSXCt4skhXC8dPUH9wEMMfQCittZ2M43
	 tV+OgwPFKMHogBHdpXc1frCxFvAOZwKoDTnfATjQ77TiQ1/NSmnD6W7M3xNCxbw27S
	 onvGyJsNZudr1VFUAecKy7cVf6YGSM79rRYBlgCaPeLOtt5kXRA3sd9IJtlDJY3WKO
	 oYIw323NTzkNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF4C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753899357.531.10791792269200758737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2bc4359501479db74d39d2f97e752772e2b23f7eeed0b8edf33f445b80bdf2
Date: Sun, 18 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747538993
