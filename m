Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239ECA59
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768349034; cv=none; b=EynCXQOnhtXYqJaQ/eOCUiofrxdq9a0gJr9GU+M7W5Q84M6c25sW7KrIrEt880FZNMcIMk/0h27RUdEcFc6ebEzavnWQJSmuBJ2NvUkJLeZGiCn7h/YHUlKRhVdd1fMWwTJleZgHQH1O6EPRC6KQ/X1waXLclCrgZvKkNdjqQ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768349034; c=relaxed/simple;
	bh=5GOhbXGoci/mWNS/78q94OahrqA3Ql3Sb7JVZiwFIhk=;
	h=To:Subject:From:Message-Id:Date; b=gQsuGUBrH0EbXGXi0PAH7jq0zpU4XKvk18O6DuIRjSegBO7xluXAtiuzZWKP4tNVvkQxC4+wSqE/kWg/1HC0c/cP30djw0ifmU1QNTgbGw7H9AyLuqY/QsuO8c/4NKi3CuN7jSfcK8hpng2IN67w+c1eSzV4mdh/QuzgKUdU+OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSWe5BHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSWe5BHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773DC116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768349033;
	bh=5GOhbXGoci/mWNS/78q94OahrqA3Ql3Sb7JVZiwFIhk=;
	h=To:Subject:From:Date:From;
	b=rSWe5BHVIiMya011smY56CLORLa3Tbaf3/Z1PDqxtAh4gZX88imsbI45UNo67Cx9o
	 RTFnMassjsPQm1n9fSBpH873p4YPdpJIHYvc98ckNvkYH/znY/oENfIXNP6okp+Q7x
	 ND4P+IIrQpavSAzxe6dzO/KaosSlmJsl7LVDeOEa0LOv9QctCt0OksjkTZS4Z3dnni
	 uGZBGnk6PViWJa8JMkHxI4Cq1HgeKd9t47tihffOJC/4j1JpxMt0q8EzB8drGkKtLy
	 1Rk7FETOU5Ro0vm00k5hHwadvyxSfeWLW2fPzk1fGFobi6Buq3e3T4L+YCDFhyAeaR
	 Y6ZDz/Sfa0lvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE6D30CF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834903358.25797.5464197631843200778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06449caa8d6e219bc64737b1045026a81a01ba5fb53a564bdf24199002fb2995
Date: Wed, 14 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768349033
