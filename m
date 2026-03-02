Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D643FFABF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772465694; cv=none; b=mMaJc0zLI5G3DMOa2CIDEsY5PI9FQkGFmrSwLCf9cNx8xp23UGjk0FKg4tRdwZBpjYKqi+1nD3LTaG7S5EUoHz185oosSQ4GIPlFBsRyzBy/XEtUwiX6Oc/rfyl2uZKX510E/zLghTxCLnswJZN4mggMMY62YAR9bJwbURY1SXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772465694; c=relaxed/simple;
	bh=ndLRD41Bdw7POmB/nneEU1aF2eOtGWKZF2O4GempE38=;
	h=To:Subject:From:Message-Id:Date; b=YTA7aq40fcEhNUagVocQx7QVnqz5qwhOcg4EGafo0CoxleQCsZi5znNSYyXgUdiZyM+ZrYaviNuSOfIbMYDNEGv4PpdKTaWcDW5OxEnXlrG0i/K0ksL1Og4DdFEnV3niQ+8xsUzvnhkmSVqfdDUW06jJ6McuTH21SDYLC+JqXc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odSKY8oC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odSKY8oC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE57FC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772465693;
	bh=ndLRD41Bdw7POmB/nneEU1aF2eOtGWKZF2O4GempE38=;
	h=To:Subject:From:Date:From;
	b=odSKY8oC5Tc7i+SbcF2beAdfr6Aog3Sbg/FIp+YkzDwASohulPaXFNmH3Ja/B82SG
	 RUxAEd8y7Dku1EDWTUM+iIgL3xqiJmst7jrzFUWGGLXrumyfkjbNplBK07xIvnKxE0
	 yOD+lsxP8kj8gu/5T36jkANcGloSvfF88TU09i/4gYBBfjehPvryHJqwz7y98lmPaY
	 PYvJZRclhhrEdXmvacmMvjg+jMmLcwwVJBWdWoMp+/efljfUP5856h7xDrjWPaOW8l
	 XpfeVps6R0KbRwdp7a6Fk5Q2IXcBEvZZQrT+hBN3BDAgKpC8aneP1ndkW29rhPI7Q6
	 0BUD97yqV/ZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990CDEA4E24
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246569361.19165.11866838302712047219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5522abdd9c3ced63c1d838a1153452ce463eb2fbdaec6891945d9a4052a0460
Date: Mon, 02 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772465693
