Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C4A3A1E70
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767443634; cv=none; b=LVYd1xcq5qxyF9Qwf7KOq6Cijt6Im1ghNd8V741q8fSvwAJATMYBBdux5rsi/Gy9WDMORvbg2DgV9Rb1cBllM31LtktzhzCj9Y9htdBk/pwguNk9w3klAkdHIjvmuJ3SyT7F0lmZ+rpoFbRxqXDz3PyFYzRMpdRkxq+q881o8lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767443634; c=relaxed/simple;
	bh=OhifRLdEff1F61v+24dvjJPAQ05wIrWsnj1WYh0+DuI=;
	h=To:Subject:From:Message-Id:Date; b=YKLBEQGFJWatyaKIoHMSj9SYD1BrC799z5JLYnZT7bKHFjiXIT7sDxbQBGWc4VfZ1oOZYo2xXp6wdpKplEcDX3ma/cwN6Tsse9XqHTcByliuMnb+YuwTBh/XkrrQB2p9ATWVggmD9G0f7gH7sO7dry6NkCwGrRYOD5g8HQM3K64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NR91gVor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NR91gVor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E53C19421
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767443633;
	bh=OhifRLdEff1F61v+24dvjJPAQ05wIrWsnj1WYh0+DuI=;
	h=To:Subject:From:Date:From;
	b=NR91gVorfnK/5oC8vJdFLezw2ci0eNkbnTGGRI3RFb6jJEfeVC15GpBXFgKswAX2k
	 SAeb8g0zhiz9zyHSjaoAqXfvkIHEPsvcxvyk5MftEf6drMBBxip9rRnTsRdIeOo7AO
	 r+l03Q39mOvIxgCwT5HC3ezn4ZOaJwX8eKXz2His/NHrPe1dUQMEbSkPnXwzC3G5W2
	 bZFANAve6Yk4njdtB4k6k2taQw19kqrXpn73SVmS9YgJmwNfbjQDUY6XJhVDa4mAlV
	 XxAbJVM0O6em7YqKHtbpa8MMmo+3GRyyLLSZ6rkK7do1WAx+JNyY2VJdFfuR7KbyGs
	 VvVmOrnaUvVxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94777FA3750
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744363357.23905.16003230275099683410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6c18efe3a9a6363a0fb8b4dc0d537d258fe3035e47630aecfb899a512af676
Date: Sat, 03 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767443633
