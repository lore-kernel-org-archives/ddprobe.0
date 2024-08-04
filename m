Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF148468
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722747954; cv=none; b=O7U++/SPBlaIwTctQos3n4JgXyQarfUIaKHrRlGO8JekrNEgUs8vW7RkpiF/VaiprxgMJKH/3Np3aigHfRUeeuxape5HQjQb86F2lkG1k+8eVyDR4jVBU5nAlaaNimq/XKc9p7bZxBA+yRqzt30AinzOGQJ6WXtV3l4eS6n274A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722747954; c=relaxed/simple;
	bh=ZVSUVLClkS5OL80c1wk2OCXmtQhSh0geth5tl80PoPg=;
	h=To:Subject:From:Message-Id:Date; b=iyoA4INcCvzdUa3c91C2uQDD4azX5Ri39ercYv8+P9Z8203QCNAvzblxuqt0oPdTh5evF9juuSBzz8UxcPGFQKbQfCgpj5GXXMxjuUrhXMOPJNO6/gGxh5jGbUeMjXfxR6D6heTCYlpHt2MSmdEuk9krIWKMbo1Ma+adiFyuKgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCy+CTXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCy+CTXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90EFC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722747953;
	bh=ZVSUVLClkS5OL80c1wk2OCXmtQhSh0geth5tl80PoPg=;
	h=To:Subject:From:Date:From;
	b=RCy+CTXrMAk5IUHXDVxZ51CogzOPIw64NA/9Hac212bgSEsf7iN/sYG6oVuUGkVRO
	 Nk3V7sQrjzKZTvbcOVcjqGSntu5VQ6COYSOQ1GbgzXGfv7C2b4Qg6a1Yf6tJiODkBa
	 +bL+q4at2mRJf3LpRD31pO7D9uDJtsmbR+8hu/ClzCA3pzr1qm8Vttdr/YC1jf7Dz1
	 5rlaMJYd8lS7TpyZyVf0+pch4I6Gbx4suttmtN/hHuyXACf6pDO4dRO0MShyhTfmSF
	 l1npTgSD2T4OVwLWzWyCvqzGQ7HXNuc0s36ThK2tjUKLiZg4NXA4ePY0jEGlKwbNqR
	 MAc0NnSPxbbdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9440CC3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172274795359.636.14996067702223826948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4d0c8ca33e1cca514f71bddb57f9fc886861ef9ee465bbe500fca841ca14f8
Date: Sun, 04 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722747953
