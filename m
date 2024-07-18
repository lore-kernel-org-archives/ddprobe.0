Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BCB47A73
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721322354; cv=none; b=oICFYYoPmyLmjGLuxaHEZBlPVr/3lv8vDhCKO38EJqMvu/+nHAdXoEZTNsB0heCsxBSIB50UctwcqgNFmbpDYn+iTRJbet0PmVYTC/9AzI/ZpH8yVuxVU8QtEVyCMsa5+/sa9McqxaLDxsw7yYBjeUYyzahaOJjLGfVUOVsf+zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721322354; c=relaxed/simple;
	bh=AreqjbNuoXoEkop7XBTFBDHbgyyi+1Wc5lJQVccD/vI=;
	h=To:Subject:From:Message-Id:Date; b=aspd2KpMiyo8JSCVILJtygU2CITiIIA7coKUUSq2/Vyw7SoAsB5qxS5yd5FmO0GG3b2sAP+HNMWcT161sUDYPLaWP9d9bfbnvrAih9XkvN6b4ulJU9hZrAyTdt7Qp9CxOcUYjNkXIBHV6+nNh6+uEX0ogoGDkY2FxXcgQvejlTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jADAnbJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jADAnbJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F40C4AF0C
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721322353;
	bh=AreqjbNuoXoEkop7XBTFBDHbgyyi+1Wc5lJQVccD/vI=;
	h=To:Subject:From:Date:From;
	b=jADAnbJmHDWcfsxZEhfleso1VeZ/7Spl0d1GFE1G69VtNcnJTXAtBRkYzpFqB+TPR
	 iyDsLTlZ0XOTkshAnoR4aM2bIvh9VAmoSUYbPp2Yr+7L7mabwypu4u4R3SC7+CaDoq
	 SAh9V2duywSsN1sH7XR75JpSobArt86onqomKgMcNJPxVwsGPt4lIxSpQDbxZjRjh5
	 zfBboORP/AOy2TLHOTkhR4TmIzoPEuPqHpFAR1FskEjxvqY42IQuKwCtczk29BQrzz
	 PJTZK1DlEnmhdwlQ6XhvtZdd5WICIwUL+f8GQcLc02G4YHzqbDgwzep1QSn4pH6SfB
	 O6JGc9MvfwUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2FC3DA63
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132235360.30849.7403461481218126395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f7a3ee885592578ca77d683da9614540395de8e8e4bfc370e242ecce819257
Date: Thu, 18 Jul 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721322353
