Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21232A932
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725129354; cv=none; b=unMewN6TI/jn/3bt4i9pcZftM6aguTPclCdNI46NPfsjJAN5EcdE76W5NSmcA6ulNz/Vbe1mFaPyearDh9zlx5CA6iQ0PMAwuYle6/ga/NO44BmGv9u4646s9CHNg/8cZnPHNKuKUWkQHX+cPyd55y+whzAxQQ5gKcs5v+6hqlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725129354; c=relaxed/simple;
	bh=ZjGKh958KgbJ9/Auv2jZ5MnVbqHKrk1hoifPOLaWlaA=;
	h=To:Subject:From:Message-Id:Date; b=ZoH6uYJba7o1P52zYFJEc7jELY21stFTMXdg6pGPg54QJiU8iosaAlm5iONVCLu8PiKzCptPv8liiJqJL3Fa15quOm8Q0c8H82NWEwWrFBCYL6BlN+7EKRx9qpgS/XJRvHW6DEXX+7/xFAl5MsX2LkkNrRHRlJ+kZwN/Cm+dIxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REmuFSrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REmuFSrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64EFC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725129353;
	bh=ZjGKh958KgbJ9/Auv2jZ5MnVbqHKrk1hoifPOLaWlaA=;
	h=To:Subject:From:Date:From;
	b=REmuFSrI+V1qZq553kJ5HwvtPZ/Q6rIsMbLRtg2XJ1sP8ZUAretPvNggd2QRhaN5O
	 VcTcyVlRnEVem5PsLiK8rzjNzE4tI0MQp7Q88FSOtADpRsJVntl0pYY7LCA55mBjJ2
	 5jyv8x0a1V8jVW8F1i25onfA597iWlYjVlSvI5JsqPUtEYhtXauhlJR7EWaDRV2PN1
	 KCdpCSEFAPeWqztzHEEelO+orYkWtgHY5A60NaCcHbeRPv20Dz/+XaOzKQJrpQ5pBD
	 G0jM0d05yuUxmRpAMFyDwtfyu79z9DZ+xNLPc5RuqcgpTSkCB0pYebyuhW8Q7e9dpF
	 8dXs0ywujI/9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A470ECD13DD
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172512935361.25168.10356580700988016126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6d7754a9ef3639279e4f2fa372f2061d64cdfd7d6ea3d9f02238c6d03b45e0
Date: Sat, 31 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725129353
