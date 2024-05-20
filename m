Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632B0D52F
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716171143; cv=none; b=Z1Maui+mTIDk/jZXbjjlWPgsarytH8g2jbPsZ/AB1l3M4AzrjHtfyommYSUiBk7z8vJ9x8fHzuKlnKN5l0yzgRLlQ/XEG7SvJnPxJBKawhB0yeXLrYCWcNCjzpIT1iR8Hihy60IoB2WH0nYKKqiAH+bTHm245VKvpqiAY9mhJfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716171143; c=relaxed/simple;
	bh=qBb4gtv9fl+swJenpVfkruiL43505FbReADSiIEcJdo=;
	h=To:Subject:From:Message-Id:Date; b=P1e1IOXXlAIOPgkjgwPm7nTl8KPHmvEn+11XLRIJE7cDjj6aj0YNx8HY9X/41wmoUh0cCM/uHmwngkjni1OZ+F6/TKGTsQDBlcV5w/WIoimavIFaRmddX7W8talh5LBfeI1724/zPd5ZQIPhuL2P1HOYdvGTR2xVeqEq/HwaWec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu/MdDn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu/MdDn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2A7C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716171142;
	bh=qBb4gtv9fl+swJenpVfkruiL43505FbReADSiIEcJdo=;
	h=To:Subject:From:Date:From;
	b=Qu/MdDn+5DuMljbxZugfM+FoNarQHRKogEVHZg1ziJCU+TAlCSWgKNxTZkPdlf6nM
	 KYZe1hqzVm9qxV58dnvtT4+o415y39Xv6KTCgwGl2d0wNzyYpHWOYS+WT9QnUeWkIN
	 MzxBXSQJCSRDvTD9OK7wEE5w3uYIT+uQ8PUAtcF807gulPBiPJPW/SbfaKUFCFZkOq
	 7ecSpR6X4mmvho1SHVjWa/9MFlt0Q8cJ4KZdilb+jRYPPN+EL4s+BZnNolJpI5tA/S
	 VtNjWd9AP5q1M7T63VC7KnrSPi8+BXSHQdr6hY/JKsq7HVbbMyI8b+uglXUBC0XWQS
	 g5xgenO7e/vlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6671C25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617114277.7277.8216962465752623396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abcedc0eafa0f1742e6f7e808dcbe3f848878a3f2bdd0a02f6a864b014fcf3f
Date: Mon, 20 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716171142
