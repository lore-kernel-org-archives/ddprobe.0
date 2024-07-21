Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524591373
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721530554; cv=none; b=G4xrHEL8z/YrwN8b5CEHNeqBioOWX0qdX1YNTQG/4HqBKKDSznq1uFj595mMljcb+AcJbKwdEuLV30w+JcgupGxEoCwDgqi4qxfKUpkvZmjIokYGIuqzPkbeOjhRMtidVQRTeNFXIg+kH8qU5GN/IMVWYUD1U+WTARehO2mi7pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721530554; c=relaxed/simple;
	bh=7a/IgWYvqwxPHiyymWDaa5L4MwBCuoVhiz5IEFpwQI8=;
	h=To:Subject:From:Message-Id:Date; b=WMkSNrbVYL4o4A0Zn1KSP1ETsVdLsFi4o2lBt2AiYaTAJQgw6ZxYbbV3DB3plkHdTy02f1LvIVifzxnNGGZAezZWiMc3/lTaGr/MW5kSocIWA3s0ULX29A/xBVDHIohFeD2YvcFnIVKMadA0aY736heVkjJkbOVcw2t0KVg3Eig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxEi1K7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxEi1K7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EB2C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721530553;
	bh=7a/IgWYvqwxPHiyymWDaa5L4MwBCuoVhiz5IEFpwQI8=;
	h=To:Subject:From:Date:From;
	b=OxEi1K7WxyjcmqdX/bElMGq7Ca+FBd9BWKUzodwM98kKxMDhV5A+l+SxTpt5tqnfm
	 /gBrP+kvdRcuRUqU0S67w+hcJSwK8INXUUPjwDxEwZLDuNEEUqOuRamMXX8jI4OjEG
	 fXhws8OzI+Uo/DWeT0P4NcHcxL1H6cUfJMp1a4S4H4dC/mjrxvHVsRGyrEokKMJBxr
	 TReIg2v8O8o5Gv80cofu0gYhpfaVfttsInLGKapcXirtdi7fSQrvBzt3drvqc60y1J
	 FPgwiCs9zrqf20ibDJ5Lp5qxZzAaeOVL89A+EhkZ07eXPtG2snSJUgGbfkjxUv5HDG
	 rDk+yaGSqFxAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC07EC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153055365.10942.1364831670346742780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fa1291534185b3dae5ab6869c2f791b7e5b3738402c4584d0a930347298512
Date: Sun, 21 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721530553
