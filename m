Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219013164A1
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777247854; cv=none; b=ZCqKEDDv5pDKwtGqSa/OyA6Ad016C8stuAoXRlAx41k7PTPaA+xHQTwlJyHCou2joGFSTCw6/7M0coDRLDhO2hePl4vj8phCRyFYNv+y8936pDERzelhFwD6W6bQYtvoQ3U3eNv41TyIo2VOEBg7gIVUuWQ6CuH/P9znW3AqfyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777247854; c=relaxed/simple;
	bh=EdnSo/fEn79Tq11V39Eli5ooOTCd+LGSbV9HrgZe64Y=;
	h=To:Subject:From:Message-Id:Date; b=PzPzSRkck445pkRObnimXe0Br2xriQNCKzp46dA1go9807CdPlx16/NW2+p1T5ld/batGzX/KIorQxTqNLjimANzL/rkTY2GqoOD+CSI3U0CuRc+DBsV8OkmvGQGJ/GqZPTBzrE6XyXh3QqBhVyhBI1Q3Frg/ULx9Woqr5/nDjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvbIrGXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvbIrGXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20E4C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777247853;
	bh=EdnSo/fEn79Tq11V39Eli5ooOTCd+LGSbV9HrgZe64Y=;
	h=To:Subject:From:Date:From;
	b=LvbIrGXY7CfEYo1Y4L0Wd8lf8Ru/dRaAJmnU/+kNk7VYYU1OuFbW34SPMLuh54FGW
	 ibRyDnPvNWq6rfuPMEJJ00XJGD10ajuLKXh9jftl22QlSOMhInyNEhuJtNQ6Y+akZf
	 B2CUAUw4alyGq4/XXqd4CXs5zgD/5r/680hG8+bKvzKdEHBWqu5SinXIq7inBwiptg
	 JAcPNBXe44GIE8HVyjjYsxGr3nctD14hpTQrgZbWo4Iqjr8sBYEnftgA0MPXuCiUpa
	 2jP9vmZiTUGjtgw2dOEW1ZZtPwX6rrCpggNv6ipitC8LAekOUrALk7V7Hyz5uv2vFd
	 uUqXteZZxsbKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE56FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724785368.24841.10256253822777868311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e662e066a33d3201b9a6ac10452c71bcec28c029fe31b95a33608467c01e8e
Date: Sun, 26 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777247853
