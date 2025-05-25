Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E453FE5
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748203794; cv=none; b=nxb3Z6JHvgwA3HWTw6KZcrkaGEkNSdBymXoGownRP88Hm7d3Qq8d/sICej5TG+iu9HClgmcE32iucRF0n0/fZA4YuFr4AZ+48TTX0DRWDQKJRLRbe+lzqoUOmku/UICfQHlzNtsX2TmRf7DMkpkGNg2JHV/gf8nrnxr7+KQifew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748203794; c=relaxed/simple;
	bh=naxCCNrl2vSG/SeBuvE5vSvZ6jc7+6NV0nSCSM0mxWI=;
	h=To:Subject:From:Message-Id:Date; b=N1hmN4w/mw4O1t8MDvSsRFj1KPbkVIZWOLftYOu5ePLCN+xHeOJErcffW+QcqIQW6owHxPLSwHPSbM05F3vYmMuNACGWtH/53HCJ+KjCRLJyWjuKB6ssEvkTZTPF4nO3/bGaubp75yaGPUVGVEteVkQ/DwdwspHivzxvQFFToJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLMk/07o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLMk/07o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A581AC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748203793;
	bh=naxCCNrl2vSG/SeBuvE5vSvZ6jc7+6NV0nSCSM0mxWI=;
	h=To:Subject:From:Date:From;
	b=aLMk/07o471IcSffLHSkO/uNLKLKkaxycLIxzGMZiEg+rCmc+Sq3Q3qxVTrG0ixtB
	 9K7rU9A+/qAeUr4ZdRb+r+a5YQA1gEQn6bvXbk09odOv6V0c6pyS9O/TpCdpch7VJA
	 Bql2BRVP4L0MXkuyyo3iEf1y3Jr+wFLb60tknVl3L3df5WZ96BscqKZiJYoBmny2qO
	 ga2gbFb7omUabZJR9VJanKW+9J9CvjqFGxr8NbNuXQTpp/1/KTKgZQ/y9tbf9NVX4L
	 lBIAqmPaokwMIJSGrAcPMK2e9H3slOaNNIeA3lKirly6HnuCAsI1x63Ek31BL0p1x6
	 kYPPJiYbrcrMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922C5C5AE59
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820379357.32076.12449469527014858498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93f7958f4e649533766adce43e91d03392f8a73f29c0c1e11cbda885db7aaf6
Date: Sun, 25 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748203793
