Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D1B14A4D6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727412954; cv=none; b=pfS8ATwtCbvBdNELXJX7fvpAlGufEClQctnEbo3j1yilYbXZ6SuoAm2Rn5UitB+ei+yMGq/8o7Zf1fkq35rl0wulgKHvJUwlH2kKKsS9xO7SZsIvkRnPX2dbG2TAO17bUTxOTXEOoKYVsmul9T8VLraCAsF9m38TGCnI/y1Nb2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727412954; c=relaxed/simple;
	bh=RxWJJ3vq3Ugr5UsJmeFBSQ/wAtF3kBRmVLKuk1RV42w=;
	h=To:Subject:From:Message-Id:Date; b=eFcYgZFI/8hhZOZxdFchf+cZlK6niknzYpmjYAZ6xTmIfmmCv4mYtDVzjMXGiB3Ofhxm4fclfX1a1OrwBd4aRWVr7z/EUr8WEYT6vRMaINNieP0J+WT3D+sbvFa4/VCndmUJxah6w3HdxTldEjjOOZ2836KRMCWFXGccEUEz69M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUmLw43n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUmLw43n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA049C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727412953;
	bh=RxWJJ3vq3Ugr5UsJmeFBSQ/wAtF3kBRmVLKuk1RV42w=;
	h=To:Subject:From:Date:From;
	b=HUmLw43noOvAmpb/2U4sHsWpETMKkmgHt3nMSkbVcEzhHfJvlQbRhRcQazS6hx3Jp
	 NPaU4sGkxakwaMf/17HL9pZ0buvbfIkjlFuKw8+cwFE+K5DGzLlG4GHUcC7EQ2oup1
	 9yB1ERgtLcq+e4ldvi/sztTeB8Fz5yhWosdBB58MRLMWan63HLwiytTiekQffeyF7C
	 muPlqfdK3h5b7B7EEePrxlZmQAa3+zpYVoRGQQKE8g0A8vnxbvMfYFZ5Ys8GHBN2kd
	 U7pMFLWS92EO7aAe6ccgZSVYgCAkfxbKdCxxuXhfY0EPHZEyNZrEc1aSBJc49o/WpX
	 2fYowf7ELR7Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E0ECEBF69
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741295363.31618.8689850372883222811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912101194cbc1a224a460b41da5f51a8dd0f48acb965507b28bfda0a87616737
Date: Fri, 27 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727412953
