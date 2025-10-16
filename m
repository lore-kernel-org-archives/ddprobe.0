Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EE910E3
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760573394; cv=none; b=nZlCqyEEEeHrXgpFmgFfpGsfQT21uHll1wwNI3KXbgEGEKIV7UU25WTZv6rImGxAWmcz7vxIsH3poMZmHNHZup8Xu5CZqcXfHeLXAyKBt8Wi13g6NAudFYZVXObaQdVfyzM5Ah6IKDv4Wc29uFuKNJPI31NVaxXG4TrMJpGl4vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760573394; c=relaxed/simple;
	bh=7qic+a2fjOQsjQbw6DcFyFREjt/7tILOlqFOMgOieb8=;
	h=To:Subject:From:Message-Id:Date; b=XjxkrNXvfVGjcCRu1UMo6YiJ0IzTwIY2wJ6m+O3jcBf2lUsqhDIkCgfSYGjtkjwsnHP8pf49VV7QRGe108oiRPRYVh8AW0ruYcrvURJRx2nFbfTPye4u0AyqIqzfvOpDdV8aVZ4BuEEPfVH1rtFkDpyMPtFtnGa524P7p0DK1lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5M8HqLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5M8HqLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8892C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760573393;
	bh=7qic+a2fjOQsjQbw6DcFyFREjt/7tILOlqFOMgOieb8=;
	h=To:Subject:From:Date:From;
	b=c5M8HqLB594IARUuY9RM9lwemblIsGAsgVYur3jwFqqcOaLYeEIEkLQAzvHFXJohA
	 DfL5c72tyQW9aP8LoqRrk1oMeH3hedE+8LDqRdYd4WBXrom0Mm+vILZqHtCUc9BPuX
	 BWSNNgkjNSjXMYgJ2DEJ6zErZhfWG7TaLjY3jxNpjpUMfnc1RNNvdNWSOv+jI8Nb1P
	 fAdoXg9bFtJtsrZmgWqgca1NGKFUg6Hpq2SpmF+ObQNiLdu7jwdKIR85uoFrid1wgB
	 WlRUGVC3GKuXZSlBT5c8tMsLA2n+vwzeeZ9qGwsHYOR1mAy0X+ZZOPGydYnlew8snp
	 fDX5R5Zw3Rc2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EEFCCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057339358.20996.13633735091359327157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9cf5c13678900e9cc93a6f22d7ebcd4fa7e65cae0910c0d230f4b7e739efef
Date: Thu, 16 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760573393
