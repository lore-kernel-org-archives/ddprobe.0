Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B68847B
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722672354; cv=none; b=oLxLECMaiUcrAM4INlhuHyVrknDzTkDdg7DiC4tVgy+9i2Xu9tiMhTi72P5sEBJvvmYHZBOFAV7rMBBRgHim6kfxgK4VZ42UD3TBl8YZzFYY1Th+MwiLZJwFENi7ceMWxoN/D5PdQhDBkpa2WH+A0uwrpZrBNXfGhKD9WqlZJ60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722672354; c=relaxed/simple;
	bh=rPvY4cPYxA/3IjgW10hPl+TERYClrhQbJ6jTDosQeC8=;
	h=To:Subject:From:Message-Id:Date; b=e2w9fnAt8xl91aHiXbj8e77DZYhUZ6NFEmrK6hj2oArXwfSs2KU+uHfNQ1wHoNYx95d7mqr1OW/sGjLDzkQxPj6B5Zsqf6TRFfzQK6g5TBWsOV7sbOavhG12aDFz/k3hodCx9wEBf5bfI6HatSZxpKEpwyhxzn9MWQloYXAZrtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzletps+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzletps+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAB3C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722672353;
	bh=rPvY4cPYxA/3IjgW10hPl+TERYClrhQbJ6jTDosQeC8=;
	h=To:Subject:From:Date:From;
	b=Nzletps+5va4Hi+4BH4HFxNoiVx8Hvky4AumtVAWUn0Ft0tUwT1uJLuSzPQTE5NT2
	 KRRo9GLbxxDppn7DsjogpSsxWQ1n0lnv2rP54oiJ2ys8VA3osVr7paM+VeQLbNDMQJ
	 h8JOtRQz12VkzRFsTU9T4Ulli9fAlSZAXmWtEPHaG5kKuqr4dfvj5Rh7OSJIgRwouM
	 Uco+XO+7CRdCMM2pFiGeffsKvDKP3KuWtONHP1j4u0nea20Le9OSnH26qt04TeWG53
	 Zw4CHrWwJjfj6PQunlKY/bdu1PCDQN3tlmHkj9rh1Mw6m8NlraJNutbK9nGiyjGojD
	 +OgBKW226LFGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9DAC52D6D
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172267235362.10056.621285987872340040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad70399c64d8127cff9c1d1716414d89c426ec4059a9e2de92c4de504875605f
Date: Sat, 03 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722672353
