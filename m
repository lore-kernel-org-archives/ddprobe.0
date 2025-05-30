Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A598EACD
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748610594; cv=none; b=uvDVPzvQnxvLCvgoY2kG+TMtmyBL5HuIFjzRVT7ATJQ7o87iPooHomWTCVDWZY/04lPvbelR78/gEzKs8bzbLoR4AO4F9tx2PnKhqcb1g3o+ivhSDj/29F1nbEY3DRscbs051ldizs+oo+A5zSksuqnFGbwgdkB7vCd/WXhxBiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748610594; c=relaxed/simple;
	bh=ULIhMD/HH17ffGbt5vR1LKSrOqwGer6czLJ87h+8tAs=;
	h=To:Subject:From:Message-Id:Date; b=lLlTh9NCXeSx3O/ZCbImyePvP8RD0AsAmW8GBtBZd4fMAT8+niy/LLKriJfu4sZowyxzDthnmHv1Dogz/pkOnRKjxZ+BHYr0vsaZA7gk/IDuQzS6BiTblvnBepW/kFum3e47eGMnpRUBI/jG7wPZUaBgSwAV+kGXbR/LIMA84Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoAFKX2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoAFKX2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A195BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748610593;
	bh=ULIhMD/HH17ffGbt5vR1LKSrOqwGer6czLJ87h+8tAs=;
	h=To:Subject:From:Date:From;
	b=EoAFKX2hdfyHKhph0X98g1tAZY5R8Bu5A3IQe1tcWumfsI2g381dNUb3qvq+PXwq4
	 ShkzAUiMLerh3uEKhMRVMH1kcda76X/YD+e4qWJx28Ky4nAsEn7NKZwpeJfiU1ijYP
	 105VH1WT/gEh+F0Qn2T7f7CybYboyhTxtEGJRurn/Qd9e51tUL1r7vFEfdPWfUfBkD
	 d4hUsyblJcG2GSa2HS6/e4POVO3EmDoIN2z8iL0qRWN9c3nh0M/IDbJJilxTiEvjZm
	 rx4BfYLaZVs2MADHTCVRijU1oY1ojsmogs2dQVRQtBPsNKSq4qILuWyMLTiGq4/BbS
	 kUv24a//qafcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB0C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861059357.30524.9745959827862919017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d5bdd26458a60b0041d0e7a9d28ea42bf887f0f863a6621ad6aba73c138020
Date: Fri, 30 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748610593
