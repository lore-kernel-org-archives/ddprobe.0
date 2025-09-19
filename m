Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F73A1BEF7E
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758272994; cv=none; b=PDnoqSePg3VQo7K09a2mN3rryIEddYzek76tkI91peGVKIlEawEOXKwwiiGSsaYuKfySrFCGwQ0nduNVnNjtHHKoPMEamRO3Yw1d9wKXlDLx/JvNMdxq/TEx4IGVAr75zQl7sJDN/64yEB1nI6k1lAUm65DroU/sOqEYvsG+dfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758272994; c=relaxed/simple;
	bh=qBabDXIDN4le7upXpXxTHFHLxpbNRk6NWeA+3cgXif8=;
	h=To:Subject:From:Message-Id:Date; b=i+kzJvH757MnNrkgLsAjTYJE89boL9QUIgkA4Vsgmgg+v8iCYmdn0J2ce+elw8zXCARS20zqbG/OIpXrI4Rgl+sZx3TJllLkwgVxPzehDNNFI35UUJ/6R51Rekv8jKR8j8HMiB61dykeOucdKEpXSrCf6zLNFleX8mygqoSvGRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7QVnHqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7QVnHqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67AFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758272993;
	bh=qBabDXIDN4le7upXpXxTHFHLxpbNRk6NWeA+3cgXif8=;
	h=To:Subject:From:Date:From;
	b=A7QVnHqbPuiW+r/kaWAKb77+2dyWHrgcD/4tpckqHU1KW2xxzsJ7+Isp0pRTu4oDD
	 SfdxgvjjMov+ygbj/WLV/33s7Fc437V97Af/PDPhsr3mGYZuiEVov8ywkh53NkPGBX
	 PDtOP0jh6G9CXKKFWtUDhbq02kFeh87E2MC2jUcOP6IvX9/eN/ysEj15OjNBG3v255
	 QngZ31GYXQsj01QvFHQYjViup+tSrTl7xrKDhS6Ef5uL0RboGoLn9ZA5JsXjHQ6Tik
	 Zk0+ODJKkN6wqXR6FDj6Qv508BFwVTmzRk0S13rkzncXgWUA6I9nccgXenqzp0ThrG
	 q63k0iuCEAkMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B6CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827299359.14063.8271154158880658183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a849f4926b56b87a60062a5c5e465c725adbda424c84e1ade9ca40e5bb7ec6a3
Date: Fri, 19 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758272993
