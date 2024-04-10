Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6803158D6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712746696; cv=none; b=Q6gWneQpGRc3HRqA2QkWYFAlz7mmHMFecWu2WkaUkSpRbPWAcGX7IlB03Hy18lGF9sNZLqQK9cScg36gUOv5CdFizBzp1objQ8U1ArPXMVRW4o/8OjRRwF8efnylotfwHrHjskM/MFgZhM5oQa6eJg5A9jaw5b1Btt80qUu57u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712746696; c=relaxed/simple;
	bh=PkkRl3t4rXsPqfCHUP5vG52ScvMHWuaPEFsD9skn+po=;
	h=To:Subject:From:Message-Id:Date; b=iWVkGlxxymj/LqKoYqPcqPSEeb5v9mTfDGIOVH9WLGeJ5NfFCSMBSd5Uz9d0uPhGfgc1zDaoL8CLEpM1KlWYmgX2Xx6x/EnBwqM40AGwHGSSztDjwacpG8od7fPZ07yIHrIVrR8vQXhDUkQAPmsRFlcLcbnHq9qdOLyKr2cbAsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7qrtsIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7qrtsIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 797EAC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712746696;
	bh=PkkRl3t4rXsPqfCHUP5vG52ScvMHWuaPEFsD9skn+po=;
	h=To:Subject:From:Date:From;
	b=i7qrtsIWM5QOgSDBcQNbut9Th2hLmVfLMHehF8WPz/4ejhgIrs0xOEodYr/gGgwnM
	 S2//YidPcgKSztf07IFO+/9ipJo6r3F+33dqU1PdA8I70LDWBtAlJfvF5DhTf2ycTG
	 FTNp5wxldFD0AIlNfdzAr0KjfSq3M2AzL+pmA7bLQYDToBIFWrALtxNzM79HMRWqAm
	 JF8cIF3G1rWuhsCSBg2uNqf85/IccblihXHjtYXZuF9UdZ16aYSRdUkgYjr1U6hufF
	 SYnnkNKoWj1xOXaTXfPE2zy7L3udwgKkOOBqpSN83cgGpRE3srr3H88mb0mowONGoo
	 8132UEZWWBWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 653B1CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274669640.9306.14852240541276670316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea130019a33edac6c3dab815f3162fbd3afe6c45dd0d7094308a3101c935675e
Date: Wed, 10 Apr 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712746696
