Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A455153BF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734543354; cv=none; b=jcq7esiHqoWtNVFeIg09tLHsN2KYiv66sc7tzQPX2MTn8SGHeGVWlU3T6pnhax4KRaKVO6UqMhlGHcmZwE/8R+HnVouvV9xxibvzeTFKKznyac5ksBPLk6iR7qvVyd7Ugu0lBG976427LrUzrVVraa2j9ltrH2opV0YBxQuFo5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734543354; c=relaxed/simple;
	bh=0U3wzRknYgq58BY81Pe9hWbvjiu4DHnkUIXNbrLShJQ=;
	h=To:Subject:From:Message-Id:Date; b=OshafQhCORtmeyrD8ommMcxuo2G4kzoM34rEkwGOB22Xt/M+nkImSzujIV54yqONleO2jJQFYnHKfIPKAOdGEp//hPo98fHbF9wfAboACWGlIWK4dHTci5a2taXNELTwyBW2y9rAK+06rbZnb2+fMqPXD2ZX5lOzz8ahFJ2kqMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THxNOhec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THxNOhec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A782EC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734543353;
	bh=0U3wzRknYgq58BY81Pe9hWbvjiu4DHnkUIXNbrLShJQ=;
	h=To:Subject:From:Date:From;
	b=THxNOhecj5QFmC+z67F6gloeJebb8oYSMGDWRPaJFL2/yyEhJHw71/BbsZz+odj+s
	 ZfmZlYfA7FSWIsW1iviDsKElYRS3FE+rG9N11r9Oa4nDitavGVFwgBd3i2HwvuEoi0
	 0CrQpzwi7dNOFMzltvGMDZSxPGo01DFyV0NiBX8YD5ThtbXO3ccMb5ZmghQI4XAXww
	 1Yfu5lW9ZdSh8uhW43WoOXZllOarNg6dyy4mpuxKymmoRQbDlaY639pbueA1EW+NJ5
	 jHbx+rn6vBCVsa6y5E6WaXCNQJMGCfiLKS1IllcDH9ait03Zrb+tARtcaCeHQOzdvW
	 pQmvrqZ1ZK8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7DE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454335359.21925.17536832293763120708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26e00c932a856ec32a06ace731ff8cf239ba4c5ee48c66a95d791b0cb2468bd
Date: Wed, 18 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734543353
