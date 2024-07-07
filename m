Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B82125DB
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720349783; cv=none; b=GjJ13SQMsGq7AMM/ft2FJX0Xht50zoLW6ae0VAklB/ag+sqj16mhDfWGAceu+67z5K7x4CqOuGgPRnQlArw/OfzPUE+NHnMl6KcvacthfGWsiTQXZJy582trhWIifIBwvvCplKA3OUdlg3R0jLNBM2O3CmBSQd3UVZIVxY9rBOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720349783; c=relaxed/simple;
	bh=H1uq2llWf7XqKEZyuG54ZACr18mUnMY3rXxQdCQ2gVc=;
	h=To:Subject:From:Message-Id:Date; b=lylbCmGP/mpbjUsizISoW/CeUmIX6jKGbenwXCOQImJAV9Aqfrl8gRYNXz0puK8AoDFiGK12Mc/aktnZVX/xN01dMrA28DVvNoApV3TdfJuzovtwzo/0ObVaLrmMcJbMvsljVTBk51+TcuIuL3F818MxuzmB8zvYkVvPkFt7BeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAlgz2SV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAlgz2SV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0244C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720349782;
	bh=H1uq2llWf7XqKEZyuG54ZACr18mUnMY3rXxQdCQ2gVc=;
	h=To:Subject:From:Date:From;
	b=mAlgz2SVDGfT7K0idoTFbJwHLxfzJjcM0cxtg7yFqmAwfc8RFeHkIcagYpqLPwJ94
	 bjSWJ/XrDSr9dua8+iooD9Dy9hozEEmZ3YjI2gx3+pTFb+FmKtwaUuCra47i+gK1Er
	 vvVxQDQfWbB6+IsQ5SkherVdRHmIAFH1NYKauFdpo50uLucI0yfghvChGZOzIIc6zW
	 O87UTGmcnOOAnh1L5dSfSeLRKQZpepgSGmXoo27NdxzAMs8h2eWj8hByX62/A1MVnz
	 7XHdKDgLhUhs+fobmZlZxZXHlJ4m1FNci13WuAreqoxbowg60wBQL8S+yn44OL59lv
	 l7FN3obyt70lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9548C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034978278.8898.10871731752188174700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c854a615af76078db222e7da4edf76af42e75ad58e1574a37634441e8abd712e
Date: Sun, 07 Jul 2024 10:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720349782
