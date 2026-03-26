Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29A238656A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774526694; cv=none; b=IYhUvBsVXYMyfBtfflnmiW/SDMby6g0CyFEW84LH3Dis6dMu1V4W6F2Of4Nk1DVnCuyIM8asPdhaLSvqyhiNYXoexh99b99E7rov1B7rZC/F3IuebC4xeq+oogdepMwSLWT4EJfrdRyuAFpHFx5WjvE0KFehBiyUH7c7GUD7QgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774526694; c=relaxed/simple;
	bh=30vGiRYcY9Nc20fJ881d4XvQvLps/XKIQFQlTL4UoaA=;
	h=To:Subject:From:Message-Id:Date; b=FJBVL/AI85gOH5Hjl+GX6CiGqirbCF8CN2vkt3Mk924GjUwvCZHCVwj/yTJEssHQcZ0ZQ4bTG/y2/bHRYEYLPGlrZaeuaza3rQwNiPjN5pw8FZgIg4qvLn1QVg6XCyb5BjfR8NBLC+fXDp6/KvLwO/hFv694HQmT/TRZanbaC2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/A42Mvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/A42Mvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774526693;
	bh=30vGiRYcY9Nc20fJ881d4XvQvLps/XKIQFQlTL4UoaA=;
	h=To:Subject:From:Date:From;
	b=B/A42MvpSsS6R265jlMuoFCRYhtk1J82aK0vWR6/simrmkpR53BhmXcJyeIKZ+tvj
	 sKqoBidJ67V9rSTUsVhDFggxxzWloFeMmKCyFVRQA18utYLaHClboWd4FI9W9M12py
	 xkHC37bKcvuKHX20WYvf878cXal+PKb5vlc6/g1NYO3kPaZS7QjRetgK9wqQDVTYWb
	 zOY2WLaaOz80HOS7DnzM/lg7py7j4aXJHNio1lm5Ck9/RGbbJDbTLbjuDqMFWRarRo
	 kqzG8RBYTZXqYvdqe0K9jfMaWSrRowXCCrlFvJv01WVcWqiwbjCVnrmBRcRhG7BeNS
	 md1HN/6SDeb3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172A10A3D80
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452669358.24538.2783632505988022232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5b3854d0b6ef20af5c3fd1cbe47220b7e427e427102827e34524539ab77984
Date: Thu, 26 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774526693
