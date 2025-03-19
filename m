Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657228F5B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742351394; cv=none; b=fV6jzTEkmurnseG6abiewgfOrQ91EYGrLCgKBg5V4/L+5eLptsIx1PhKKSWMpFIHyv1C6A0w3wcXOfEx9vTKPYsVSKzplJdSHXoaz4ETbeAmounzhhR1UcBVb4XHDpo4FB570faO7keMuEPMohV8lgnSVIXLGIRAYoN9cHMNBsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742351394; c=relaxed/simple;
	bh=cWs17vGzjMzMFsDC3O4oorZQXgvhAjTww2rQAZdkID4=;
	h=To:Subject:From:Message-Id:Date; b=YJAk7XE7viV523id+r1w0s83o4S62vUnk+dIHYHWtdntFjnHcOq2w2uaOIXSvKQrTa39Or8n+QrISpoNPTY9ruvVaxlF8/PLmKzZkEXoO752IX3VUCCsqbtAl6rGQMaC4SWeOeViCRlxkTHyLWDm2/4HMdDZBRlYXmaEWjn0UAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldBvMAWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldBvMAWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71F5C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742351393;
	bh=cWs17vGzjMzMFsDC3O4oorZQXgvhAjTww2rQAZdkID4=;
	h=To:Subject:From:Date:From;
	b=ldBvMAWKQgRXrv0wm2wn2miAiZPapMtVAR9x/BxbuVuZ8PW0ufNITnkLOzpRVbbZB
	 RlAr/wEajADZzoFa98Y4VOPUN1yhQCvBXI2NmV+f6GMb4U6VgIyxIwKEN9+MxN9GUn
	 WgphnWv0S6OFQGu4hSquMgfLtvwdZVo/YD6gNoz5lxJS0P62kyhPHE0CsXCx+vH+At
	 iA0GjUMpsg86TrVbSAJExMDD0lCvrUQzTKVrM72eTD6Qqu+ty110k6N54JSp2YRgNF
	 aEALRwBFGIoL+dz2FA4Yjh1pjb9QlT1ycBzspw3ESt+UPCpvGmdrvzfYEyeU36dttd
	 16flxoBk9I2kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE30EC282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235139366.19408.3384644651150576606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d06714257d32a045a483ac0eb74339c885bc80d48c40d1cb380a3fbbde29df4
Date: Wed, 19 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742351393
