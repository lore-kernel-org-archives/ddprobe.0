Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1802EEAD2
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724585754; cv=none; b=L3CgMZxQqxHXX8qTbrWYI9zPuNcQ1lc8ww6OXaeMQ53Oen76qK/7KYIgh3RaYB0lOANaEBRhP9ocPvFcLhUYp22KejcfQnFgn9UCU1QLT2RbpqHQBLoznXvvzgDHSEfNv7JIruDwr1q+v6dePFOHBoGYfQjx78ymHBKIKALJ/Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724585754; c=relaxed/simple;
	bh=37RGUwSmf+1t4pyYQ1HOplTgnQR3dBV8MgzHN5MuGaI=;
	h=To:Subject:From:Message-Id:Date; b=fXk7M/oiqQtsTaPw3E7qiwq24h4b9epSlhuRQbqVEkqJpQHHQ40p08MYvHdV2Hs8G1J/TIGY3HFwt4Iib9URNkXgsBh/Nt0QQVaA8QdR1/jZ8DV8J8nby73WbbguEDMLuuQTGV+vznzu1QpyGQQpdeDqy0NCoryw5KK+uyO8XAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTOQrqym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTOQrqym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09B8C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724585753;
	bh=37RGUwSmf+1t4pyYQ1HOplTgnQR3dBV8MgzHN5MuGaI=;
	h=To:Subject:From:Date:From;
	b=dTOQrqymEutJ2LB5q2zf6/qRAtgjvqhCe4yc/UCcoJ+dzMKkEhBndkdGkcDG28NVj
	 zti+PyJVI7Q9LazuMLfe/OVbfY0uZ1erY8kwp+kpNFwE7pnYj/mfkZYvqcuCrz3eS9
	 Fxox4/HxSQydTJBvW+CluzqywhfIDjLDSjILOc2sX1GuBH5lFf47UMF6xLXML0yNHu
	 moxDFxKynurSoclJY2ej1OWS3rsBsdVoo53pVJkCC2sJWKtnX7R6yWinh3gAlJ5bim
	 2wupcD9JQzh6uqLpkkJfy3n99+N5uepOwbz2tPK1PHzABazgvxlp0X93k4fuXeePGk
	 LXk1mND8ilAYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92701C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172458575359.7646.7821924383133052027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60c1e6fa445e50182e5a7ad42f062453eada6c39a87d074261be9e38010bc9c
Date: Sun, 25 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724585753
