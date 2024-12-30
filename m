Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA5F185920
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735580154; cv=none; b=V9GBBywk2aSMtwJuSlRhYgKw8vOqQengYX2wLAjKibnDeaAeh0stfe/JhHYxMW7huPNI+qLS/R3vgLevH8FUhLGj+YyILqYuJL+K7Km9L3GnQr8f0fQbuzgCHmO3ueg7ucHvp8peDjXHg1g1pZLWjjwGhv3/MT3dlVFeAYBngFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735580154; c=relaxed/simple;
	bh=Hlgq8CSfz4PZRuC+P6oJ5uJALJ1NZpbKUMN0mNJtSMU=;
	h=To:Subject:From:Message-Id:Date; b=MI3qxMplHeXz/ws6SImqw1L0w7U1GvMusvEwCh3Mf1NvhqHFyj8qe9T8a48tsykvhMZ5XI5pLkoHB8ITfVsViE9grVwNReFm2RoQ8mqbFLr8M+5Ny6QUXWIRgxktBR/iL3T6kbQkm+SCFUjJ4/Mdw2nUS4cLVtGGo9n696Y+p7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLuTENGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLuTENGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA082C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735580153;
	bh=Hlgq8CSfz4PZRuC+P6oJ5uJALJ1NZpbKUMN0mNJtSMU=;
	h=To:Subject:From:Date:From;
	b=fLuTENGhQHevZWH0tJay+uz5nDJyDOojemNVdY8lU2k+oNeYp+hfrTa6BgAF8wq3N
	 Y6Pi/HECJjqWVfxFKlLArsXLHrTswrDqK+RbaNYMAIERbjjf3HXSw/S44GPvAPFaA3
	 jcQFqNjMsCh7TS2rPJ6Zf6Y6TF6bSBUZ/4085hf5NfMSJdyuK0ETgtepnCv4rAINVO
	 a1/ijpZVAi4rSrq5QJwR+T6lObFXBdtWH4eKi1g72cpTnuMu15dOR6cGhpbEvasc1U
	 oDCAZ9gsbZTevfZiD4PuvV+Tp/EQ7ZHmw9SMCoD01yQXdTJC+R7Cs0SD9mu0URxJfl
	 5P9CqDoL12G+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97233E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173558015359.30838.7999307799248260579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4e4729a6fb889ca3f0069533e3f0585ac32d0b9bba280525f160d18821ad38
Date: Mon, 30 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735580153
