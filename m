Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BF34595D
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712955563; cv=none; b=MpaIhiBIISfpcrTNhK9EFK5y57lmLszSZ6jxhEo+HNvLK504TAcbYG1uuxC8X2gjnCY7KjRfSa/eNkUqY5Z34eFcO+LhMnSKyCpksALKZ/sUWH5VD0v7V3dKqUukaY/oFkh0UeWO+oaNzAIJr6XY6FfEoco8CjYu2giyHFUi/zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712955563; c=relaxed/simple;
	bh=o8UV+j11yQZqTDJPF2IQoZVqqMtxmxvBkd4WNo+hd+E=;
	h=To:Subject:From:Message-Id:Date; b=mmOZr8oatRlJ5sy3hgPfVSlmO9XyXATH2A8sCIzfibH4+fvKHYJnLvXXrvPdsUGZePhr+zK4bY9loUFsyQ2IgI7tkSKGNirsE83xc8H1Q66RgxRPPztbHauELD46K1MX1cw43iEufN6XM/J7z2J02HucDsOprX7Ha66mvfKsfVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBMscF8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBMscF8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC23EC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712955563;
	bh=o8UV+j11yQZqTDJPF2IQoZVqqMtxmxvBkd4WNo+hd+E=;
	h=To:Subject:From:Date:From;
	b=lBMscF8h6+v+Jy6aGyR5H638GucsHNhw8hQhKrPictPXl0nbpBgRXoCrATOlW1Ig1
	 pqKTacxx19f7sLuFi3ps34MWJAifDOzqeNl/0POIsp5NtfqEf/7GX6n9axzcmX1boZ
	 7egGlXBhEFAn75iY9MGZqQAwzMovtQdEANMFKeph83+6X9ia+qGAaEd69b0CCf/QTq
	 M26Z0kaYa8aQYi/wkugZrifTsN4trYU4GKD7PIjOVNCSYGFuW/MWEYimO8c1+ZUUio
	 Yml3Ka9M0GUYKv+ptevFVchNMYoMAKxHZXdSETGnN9ov74Bz6TSPiZEo3sI4o3vEtD
	 CYGIQprLXAtVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D89DFC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295556287.27803.8395447604850217651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b08a6dd8ef08af8a546a5ec4029b3890447804ee5e3cd22b8d0fef24c2c9a34
Date: Fri, 12 Apr 2024 20:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712955562
