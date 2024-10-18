Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E370F155C97
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729233954; cv=none; b=NQRyDoBLf9Bna/wWisiFSt7wykfM1dZjre1uIv00aB2KaBRBJmd34xaSCceo/Q119sscIRiEdUywf63ou805V1csc6HiyCprRxn+BHBG5d304TlHXQjTb/whbylOa7srvnakWXw1KsYMuNX8evJ0C/VeSwTLmtnpdWVPPeS4HPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729233954; c=relaxed/simple;
	bh=2uzXIGbM3acIv22m7fsx5gku5/1wvlFLAshY5aZqHCU=;
	h=To:Subject:From:Message-Id:Date; b=Q3+fZXKa1akvz/pue3FxfnXnnqC1fSp9Ey8o4FoBCOUIq2iXWsJu9wuxmXu9BLhWq2hc1UO//fGH0n6kxjw2+O0cN11s0PE+YBt/L1+PkrtsHdIEg/hJPgK6oLRoQoOzmsS9ZzPTttCQnIkj83Y208wznbtiHfQnf+r1DRpIgbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNtb/8M3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNtb/8M3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F1C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729233953;
	bh=2uzXIGbM3acIv22m7fsx5gku5/1wvlFLAshY5aZqHCU=;
	h=To:Subject:From:Date:From;
	b=MNtb/8M3+f1iGJByH8OcI8/rM5wVWeDzmJj7CZJJCTehwt8r8yTvSHo1hemhKxUqN
	 UbcO1IAVvSuZ2hg7M8mpse4q2bRQ+Vd+HK9kRNKUVs/Lg8/PuRWQYraH/Dr/lbI+cW
	 M1DNEvSlCJU29ogfbyDT5W8bLP4AsBGDTEl2GhKMcUhljSnPcXX+HM62Tg8zhtUF9V
	 H3YnAZkJL/Qu2YqU4AUIhFMwKkU0ISII3dNYWSfPJ49pb22xtnwVeeXf78mjD18Pox
	 EFjI3UAgkqXIrCXp45fBmYyM6sUrZHw8Dm401oFXqWN8e6CHKO/NR+YUTsPBB6n5eA
	 zEaJk+S5WUzPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A539D3C550
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172923395362.11813.107163931565209575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d348a1fa9104826288faaf32c79a1142e58e6f16570514b609e8a07c66c53d95
Date: Fri, 18 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729233953
