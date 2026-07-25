Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467202836F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784991034; cv=none; b=FYvvtI8TzMEodQy9skxf3NGeEFeRp8drdDQr1qW8E2TXxwM/cBNap1khVnoNI6o+dmeqpwC+OrRFe+hqerfqf0+meQtmsuv6061Of8xNegf1EUr0v+ULakElX3kVH9hgTkTquf5quCl+acao9Jdta8gAEdohnMkrAf0IRcQRPn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784991034; c=relaxed/simple;
	bh=OVXfrlwu7Qb21N6XJU3GGyOI8K9r25rPCIbpMUYdMJ4=;
	h=To:Subject:From:Message-Id:Date; b=JOK650ktAm6ig/yhi3F3dqttvWRuV3yFhYEBY3eEVs57StOiXtfah6QH1nuXaamcxxUk/4rGhMgMeZujyOUuvGkWiZW0J/v73DdECR9CNVlpRmubT8goHbB6xNigv+Jx2ELTd4aEv51Vw7ymEDtqWxO+08M2jR06xyjnpkpPaDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndJx3gc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndJx3gc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5D9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784991033;
	bh=OVXfrlwu7Qb21N6XJU3GGyOI8K9r25rPCIbpMUYdMJ4=;
	h=To:Subject:From:Date:From;
	b=ndJx3gc2vwpUAa5tcdm4g/nluOMSwvOuIv2NtY5sExM1UQZr5wrc/CwSnI50+HazK
	 iEviTjlxhcr7b6ZrhJ1AZnoGwr4Gg7WyniDDQNh9RwZsBYLy4Qs4s99401ZQqtNJI8
	 JoJljTmQ+Rykzn6nJsAIeywQPCgyi0njusVLAQz9og1gNOLLCVimT1VoQ19srAxd+6
	 04xUfketVRP1IfHH/GkC16B3Z20EKhftaWALPZ7GMqoYnmu+DIGlo5G8g8d7uOrDCk
	 H2rPTVXZYfbbclFH2Ud8LCNESmDMmeWWTmvv2FHZc477a49FvJz6XHdSklEKfbiq12
	 Nod8W+KChGcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB2AC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499103368.11040.17962440083872630909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19c22711d6b945c9a004177b44649248be6a74ced99473ed7fef6e13595e179
Date: Sat, 25 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784991033
