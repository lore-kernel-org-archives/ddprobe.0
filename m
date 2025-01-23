Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3558520330
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737600354; cv=none; b=iQpon2/tOXdIixf/8Qozx5dJM0fB7/gk6ogxSs2h0jRIUiSOfBUbGT5uCVORGHzk6ydoRI1mfTFnpAEkfezcTOsNiAqpHQEoYlRiyCgybT1CQwpd5TiRarEVketkvOgIBDMie5M9oZlaIdTKGz0BAkklfoe5wvY2ILOsqZIwJCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737600354; c=relaxed/simple;
	bh=jkDJyBZTAAoewqS+sT5yV0vwy3o64mzTEX4qvs0bQp8=;
	h=To:Subject:From:Message-Id:Date; b=s9BiuJTnHMvHzIaDP6GdlozCXUZsAWvlG1Baw0M+EB8ultgsb/EiAF3pkwKDvn4xjtp9T/qKMRvMDE4N+TU8N4SxqEVhyl5t0CaYxUsMyjOpYoVeXM3slmjKkchuInWUkHh7T+6hOFbkgawxs2y0EEn72h0nhVMrFcr0N8ttNvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7kfGaAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7kfGaAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F6BC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737600353;
	bh=jkDJyBZTAAoewqS+sT5yV0vwy3o64mzTEX4qvs0bQp8=;
	h=To:Subject:From:Date:From;
	b=O7kfGaAyVnoUB8TEA+x7A4HPkB9K3MHxxpIVRg9Zny0YjqzFmmm3QT/4kkl/legZJ
	 ctFGoABNugDOOxY1udNYTLoxjSqDZKnI0hurhRRmmSq74+qyFRsKpV74SJo6PWkWWB
	 xu2jgRhqlXqie14d8ZwO86T+OdtiDDWNA/mtCO9GWVEE3UYEdaBTFQRrCkhmcNQZ42
	 iuK9IAfJuudjYzGc8CsklhcKVic9Tix+fTuYFJTzZQPOUu/x9uq21KI+Vh+vZyyPDK
	 /aumj9BfDOwYk+5yMPalVU8+61AZiA5huvYAUKqr9MEJZrJbsNDSvD+e0GDpsADEc9
	 zcMzaQgEzQ5dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B9C02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760035357.31529.12035552534705923269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168107d69dd83d3384e1b95cc4b6aaaa7666acee8ed397cbf210babf32c7be79
Date: Thu, 23 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737600353
