Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DDA1FA8D1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737108354; cv=none; b=EbNyll0RAiwXlWdum3CIxQIuAufxB824NgyWHtI8l1Ozk3lX8RKRNKPCPh6ARK2AQguJyhLPQDH1jPsusHsoH/+PVeajSPnmV4q8/hNZi6yae3oiw1O3vwjThXf/VNilqoNnoQ54hqhJqCK1PRDtgd+EC23Q9GR2MbDd1gEDPHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737108354; c=relaxed/simple;
	bh=jL5BuENWnsLbg/6liLEKJ4iBpBhiLGmd8SkuMv0ompU=;
	h=To:Subject:From:Message-Id:Date; b=rLpJXNZsAm3I2zZ55vIilkWqvrRPkdhacZwGNiZwjcPtIyMQHFd9plPR/gkx7z9qX7Y6aRG7UhmEAFUCTu2qx2DsoclXCtBqu/njSsLjQdYSrYLuVs0raeZF/u9MrwpvmPOkmreSnX9HV+H9seiNLSSHLiKvhO03S5WNjVAEr0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZUfUQI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZUfUQI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA2C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737108353;
	bh=jL5BuENWnsLbg/6liLEKJ4iBpBhiLGmd8SkuMv0ompU=;
	h=To:Subject:From:Date:From;
	b=UZUfUQI0/md1AxOsJSIFXHHW86rmSV0BwDB5G66PeL1s+i5+Sg/oquKo2u6dZYWcl
	 5Mdapi6mSR7k0jqdsZi3yS8UZ+XsIF3TwE8z0S/DuCrKwwizuJGOVEfbIO0FLUNNI7
	 4IAWuZbxcmM9SQyN1mMImCcT6LnEQRkn7euz90Sq6Yxdourd/eEjPlilgiiAEM5KNR
	 iUVdexdAPty7fr2OxfhZeUmGuqnlOglJa5CP4AErz5n1giLNS/ryd+VT/geaYLKVoJ
	 lutsYLS2qWWmAJs+Ku0qOaUvosC7+DfP8RjI56z9IKb8ODAZmOU+7/WD5B8wVertms
	 XF0B1GCtt2How==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93287C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710835359.30975.17116205348391031322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b554e18c6df25984fac486f290c5fe9f6f45186b5bac13d69922c52b64bd2928
Date: Fri, 17 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737108353
