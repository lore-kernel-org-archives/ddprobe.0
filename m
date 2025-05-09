Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3921F13C816
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746770394; cv=none; b=ayM7SduIh0u7pWbDBLgpapk854d0fShUHxh4DaUZ+HsckymIq3JsJGy5nnREYKoqlQzXFkg/JVmnzCnnMxE5JYtwBRtUm1JOfA/BOwwdSvhcZSYSI7Bk+WJcEc7Dt9paPMAEEbaBo474WREthL59wJrkRI6qk2AH+FxOSB/IMIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746770394; c=relaxed/simple;
	bh=VjSknEUUTFj/0A/fKSIqfp0DY+ccD1uQabhQI9Ifo6U=;
	h=To:Subject:From:Message-Id:Date; b=X/pVTSPoc3gTdCInIHvHKMbFrId2ed4W7oFk2E6aGgz6zqoDkfjicbDkkJmsb25CCn5pegDkWBEDpML9q2rAbDKQZjKBDazzZWItzX+sXSMRRjIp8zMeAVrO4gT4jwirCAkirp+XeNM/ItLDTIcFmKYiaG3iUcJFvBgd+rd6koc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUW77uwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUW77uwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6419C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746770393;
	bh=VjSknEUUTFj/0A/fKSIqfp0DY+ccD1uQabhQI9Ifo6U=;
	h=To:Subject:From:Date:From;
	b=BUW77uwqkQVFBuRr3X+O+nlAsAahGFwmgfDHoUfFdbNTchchpdObfEhUnqFaWO2Va
	 E4jPE5el72AZEhJzCacFBDwOJ50KFxk7PBuIeetx//Agp1POmGu9kS4BRncv21DBu7
	 zcOb4G2RHaI/k2o5HghBN60Q6zmxEEbxRjwS/th70k7h6XQkeVQ0mFw5aNNLuWcUkY
	 KeON1RVUGMJcNHbmZOZmElhv0CnGOfeurHRLDfTRrLBnqiNM4bYhB+xZBZwXxBmvpK
	 h6UtVUIMgCDPfWj093fSWJOYLOrYHV4R981BDmc+VlbEPmOMLZ2IuMUVUFJ+09mLe3
	 OqIT5UeVkd0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57CC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677039357.6598.8701827720615760344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282f5aabf2d5c4043fef14161c2de1b56c3d9e1b9e5f37d04ea2dcf1a83898cb
Date: Fri, 09 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746770393
