Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305DB42A9D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778460034; cv=none; b=JACRNMnMU4KIZazoYDgUQlLWDI6i24GoHKMScxBNKpJdQDlpLparAuwJaeauX1yPxQVXsaFkB2DKsPwTOU5yHCaxGfNH4L7CGdAHFXuh5C+hqHpcW65yJTtqzLjdKirdzoGRt2H+ZRUhwGwbcZFFmyp6VoGEo6gxxkY/Wx1Yvig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778460034; c=relaxed/simple;
	bh=T8vIAz6KD8JWghg8mE5nKC+vNxngZxANqlET8DJ2zCU=;
	h=To:Subject:From:Message-Id:Date; b=hYZYOEhvxfECJ6nyOoVp6gBMxSqzBskTFkm0EdlYDZm+RJoU43x2llO64VjCq4ISuYLpts3Ek/jeSXj1xrxkpDhnRiyw8Ne1vB2dn7pYrkAgdct0raTX7j9wKnGoEr+60lAn++6Lx4HNQk0DSvodNJELvQBQ18Q5TdUnLxBzS+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luQ3rGCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luQ3rGCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FEDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778460033;
	bh=T8vIAz6KD8JWghg8mE5nKC+vNxngZxANqlET8DJ2zCU=;
	h=To:Subject:From:Date:From;
	b=luQ3rGCbimtdOvVAFa4LVEyuTbG9upulzHp08cSFaTt4Bkeu31oFbbQEVFngeRqEY
	 qe6Uy4t1su+juWsusUBIVyTCB9S6uuzr+B+2S2gtEyifd/KE9iecHb9k+fRd+NRrWT
	 Ttr4T3Od5Vlrs4Tu7IrUzMS+sDvpuFTV9PhEGQy68CMd9eCdmDxT80DMJjmZGa+EaV
	 BNwQkOqdPCZKNoMFH/lyRZsJVAojxJe0bi1RRlfnT+7uXRKCSMtVbXDtKJEyycUtWo
	 cVVzheCKEj+kk1couhzr9YMlC73xGX3Rmm006ING3IZolIN2gPXvBLu4uhmm0hwOYx
	 ippPvBd1H3nLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CDCCD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846003370.27528.12901201241795791535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44f103f49bdce025faf8a9a96db594fb59f5128a386807086a12354568cae8c
Date: Mon, 11 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778460033
