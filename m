Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E52218AB9
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750936794; cv=none; b=iuiDC7kFAcyp8iXxdspo143eKQryxeEhy4FAZiQCoRmjtNuXIh1X7pp64IprzrgM3p1OYXmeBsJ3mevjm0abSQQytQRoGFMrSMS7T8UkDVup+0QN02xBn9wkxVewTrSZNbnDU6wl9ryESFAd/t8WElmV3V97aQ8OiQQ+yk5E1qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750936794; c=relaxed/simple;
	bh=nAJu4z1etkrBC03/VW8qaFx1J19Db2ABpgR0A+GALYw=;
	h=To:Subject:From:Message-Id:Date; b=pt8vcEcKn4dR+b8HbwDlzVqMGlKmrXNOG0cFeRkmxnP287m080iwrrLke+/NILEyGSzfJXEpwPNWLAqpPY0jSEpJGlKfnAff4owQLujyO5d+xjnQQJzbynAmoRxiJy+vH8cEH6Od5NTH9FQQU0LZ6IjhnbRIeHZqgNGiBrAyPk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcMMtW+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcMMtW+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5033C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750936793;
	bh=nAJu4z1etkrBC03/VW8qaFx1J19Db2ABpgR0A+GALYw=;
	h=To:Subject:From:Date:From;
	b=OcMMtW+whtquPJACllqUxUHyLMFeI2BuNb/vN3urBAPhhyNUGhmygbL2UMCwnJapk
	 3p+H7BwHYg12p7asW7u8BsrZ08PCLG+4VfWbnSkuFVvwUO5gR+PvFrcXq7oLwMUlKq
	 lu3dpgnnhYygQhT/QPr1N7LtlIPuVXgAFTFAl2qJd1x5fwEh94/4ExGHioRCl9EMhJ
	 z2yboRzTn674kh871GgG8tFatYYYfntYbUkpKXqnkmD0pHB+Lt7zvBbLy5Ww2rt4Ax
	 zPpa5umZlos124JR9AWCKULsO2dEDY6TwqZmTPq01DEsIbFA5ceesgG8sm+1fksMmb
	 /lwtlPDO0glPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ACEC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093679360.4908.2014123351270132533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc6e96a99bcc09c88a2ba5ec9fda5801b0497f2a0bed88d8876773340a6552b
Date: Thu, 26 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750936793
