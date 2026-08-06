Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D82732E143
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785989434; cv=none; b=fqYWzc+QRk96n4Heg5eMdzoCqaRoCUQpI3vgo+nsKepoxyeNcxE1VDCwHekeDOCJC3YEBGbHiNOR9kPHpCHKStZmHyqlyvEqtivaY50nJwDPdiX+qCcDcaR/wYIZ/dNNS2jV+8SalY05UaznwSGJTwcTBClHpVlI1/lAozP6Th4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785989434; c=relaxed/simple;
	bh=2RDLP3GbEtwYPCKreM6DW7uILeEcPhrcAIx+135pICs=;
	h=To:Subject:From:Message-Id:Date; b=B0RGvNRxixfhMSu4faQF61qzl3WU2LVirReZhTuQVDGFZwNnPZMMtEGTw/o5GswFEiE5WGEt4N97W7HvK+SWGN0nqExef6n/Pk3VvHU3CmFL3Cn/4rRGg/Cyou2W1/ySn3e/OerFKTUEM3TgIUojgNCMWbi1CZw4FP/sCJvNhGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnGUH/ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnGUH/ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64ADC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785989433;
	bh=2RDLP3GbEtwYPCKreM6DW7uILeEcPhrcAIx+135pICs=;
	h=To:Subject:From:Date:From;
	b=tnGUH/ritqj6ojfamtn9acrlo7ntk4xbp7zdj+L4sqj87M46FLMAG4Ez7IMaBwJX6
	 Qpwr7kYjgRgSvYzNDNPVN/4sR4oxH6ZkgZXLP2Gy2xGJWxVEQ6LnPwIApiRBRxjASQ
	 RSHynoWgAdA+/b05t1jUsl3sHxBrTb6Mrvj7WzssRmh2pPTiUoNCClqqBL4++m+cTW
	 1rcKiRNpKJz467q5zIGafcUrpSJ3StuTDg3FTasVWAR4FMjTt6Fqw1A0tlBpSbE83b
	 Kkb5FV1+AGNNFuMCklFrmPsdEbOkQIPhsFKe9AzHC0xOBW4WtF8GVQooqmH8st/yQV
	 mHxEpkJSx83nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2214C55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598943371.19241.8062618740105477345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da28bb122ff16c229950437d8e36bb59261fcdb27b497a4ab0afb9a068be4a9
Date: Thu, 06 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785989433
