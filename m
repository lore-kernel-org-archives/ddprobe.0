Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D92914A60C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736882754; cv=none; b=tSy0cL2Z8v7uX8dU3lKP/frQGeGJq+uXUsEcHBoG6t6vk8+M1TLfo7DmL99gHWT0U2bwzT32zlWAj35WG5D2xHMu6vT3Ns5ET6RUYHoNbbjAVJPI9dpv/doZRaRN7E6H6tZLelqk5JQtNE8Qd9gyczu2CSq3D60hGtvidC8QtcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736882754; c=relaxed/simple;
	bh=goWLZXvZ7Y51iqldAUfDhv2U3SAz8pguUuCEa/6v3Ig=;
	h=To:Subject:From:Message-Id:Date; b=iFRTxFA6ik537/V3Rp3DVgKIg67ZIyFXrW/XlyAuiz53a9IcUY7wgcV2L8op0SlZAGmMYWgEDMNU/+PUEhmzxldRxTyJq3Oug8ytIGaExRIBd8OtuX/R2XegPfqy9vj4wiNZQhhLF3Nou91NOCraMa04Xe1ViANYNgs/ID4O9HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cP/b+kqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP/b+kqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90BAC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736882753;
	bh=goWLZXvZ7Y51iqldAUfDhv2U3SAz8pguUuCEa/6v3Ig=;
	h=To:Subject:From:Date:From;
	b=cP/b+kqqJnhweOa+qO6j0CMmyqes8ypG4gHmgkKC25F5KEUzgPukTiDflpA/RT5I+
	 GpPyxPqu1ExcfXgkASd5BLPfObIB2bOsam31+SisPWW197IH1plDKUJ5C5jTcqNXsI
	 lxmLvKgywaX7LYqlNp9yPWDtRJu/8I02JXjZDBNHw4MQod5Xj8egjn3lZLxhG/BlSI
	 B05KPNx6bjbWrMMlpH3EuKeSaZZ4J4e/bmPokChQWTxUGbhJ+qWyzpsmzh9KWEiQU7
	 ox1m4MqMbH1LiYtz+0yWtLeX/4TCtLFteKKBsTE5Zh9kMWrebAHthpKHOdkRNFC7UI
	 ny0z/l6dt1CSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AA3E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688275359.31271.14538477170357498677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e879af7143f3b0053e626a3f6c3faf87882b258c301078e06fb75f1230df12
Date: Tue, 14 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736882753
