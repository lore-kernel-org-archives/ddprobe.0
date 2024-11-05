Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E031017A583
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730825754; cv=none; b=Q977CW+MsCikTNsjietPPoCZG7j4yF2hnRK6X60ztkiPugIO2QwGiF1+O2SUngam5S8WQyqFuxtru70nW2U/24pMevcl6tVlR88Z0U/m0yUrz3/uTde7OCujQtarZSPKTiK7mTTN2cknVexwJ9gbEsbuAraZynmlRxlgmg9M7/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730825754; c=relaxed/simple;
	bh=cwKYYB107Lkl4giDJ0AKtnYKXRvm6GGrYiJkqa2URcA=;
	h=To:Subject:From:Message-Id:Date; b=ja1iKgwMXz5DmQeCQyU+QDcis57I1sW8BBT6ICQoNev/vik+QRkSa0h645Nwo90pP8KuwWveaWj6ym+14UIWwfDTIivz4uNjn5h7ZiXx7I5goWTyWooMy9X87LoVBbULnhYfpQ+7s9ZzChWPpQeCl1NLd6QtjV44pf1ix0aPIkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoJVs8qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoJVs8qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1792C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730825753;
	bh=cwKYYB107Lkl4giDJ0AKtnYKXRvm6GGrYiJkqa2URcA=;
	h=To:Subject:From:Date:From;
	b=NoJVs8qtt0Q6Bgei32DggGlTXcjApMvhPJSvj4E4H1rsS7JbiErIIEjFU1fcnxvVu
	 iqE7LP5SU8VwFqOy/Lv/D5v6ubJlqR4sPiVNnmD8SDdHqKVCfmygg+SU14P6jeSfS/
	 aI92b5e+Ff1hNhjr5yHETAY2r3mLMk2EXIdM2Tw1FszK7KJ/yOxzRoT1NeMACk9SDm
	 zr+veGTkvFh/zr7P0B/gzwXyMKYuE2esDJF3aOSK5DTRDWmWLOvJPXGWiJMr14TQ6v
	 oX6AESi81LXcwTMKmJBvceVHPGtUnwZOijA5wIHSr+uJdc9EC3U1etUkeOd5e3vkUP
	 ZWV64eQnsJGAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91174D31765
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173082575358.25653.3679678521371218364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0c61769265498dfecedf031f68bc6267e6272306c507acf80ae9f3a9a5af64
Date: Tue, 05 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730825753
