Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B89A139E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728015354; cv=none; b=VlhgPWYMe98tIiZtP9e+QbBs9YfuubKqvCLkOFsj0U2kpr5TxPxSj7k8HOzqQ+ichk6FC50nYnADxqB3tec6g4TAMBK9VemF1p7e/4ip7NDrbJA5tbRqVXTtKAROa4juddABZhYpzkuOHolZC6TlF2/BrtRY8dab8pbfnAji3fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728015354; c=relaxed/simple;
	bh=RAch6r3g0CbxeI631DOixech31iPppT4433+6vqdJmY=;
	h=To:Subject:From:Message-Id:Date; b=NZCBbkMhxCoYLfM3vUdZrz6mFemaUvwaL0spdan8xd4AxQRnZkD9CZGwqKy7EiBKuUpOgz7NAcpmKT+SuxWH7pSbtDDWSBzZokCKcYpeZH3b/9B96Ao3we2R83nYNTf5Dyc8BcMPPM+hbM77U+ls9hUGgigtTJXBU13dgyFmSm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxjBPeti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxjBPeti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B833AC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728015353;
	bh=RAch6r3g0CbxeI631DOixech31iPppT4433+6vqdJmY=;
	h=To:Subject:From:Date:From;
	b=UxjBPetileDut16w0+5KAPvMmgUNjjEcTfmX8xmr/1mwy5OCfeQRNWwynIazQz2gt
	 wW15iFngag7l39Ncnk7FwFJKNgaZe1X+DSJTIEo3M9itHemTgw/GQJJSkd6cB8fyjv
	 0eA8UOgDTq/4A8jDul6G7zqGRPeRbSaOvXpfjxSVIJ3b8T0NG+tWRQwYqVecDDUsie
	 LFjugf3ewfCk5cMGmRMNMPiz5f0o2Fo67zViES3gcKrq155hl2EZ5nNFUAYaq5OcNF
	 j409nBk7voifOC406jTM9lUbMbRqaK27Wv63Eyfa/wOj5PDVnFFFYee/RjdtpF3eh8
	 f6Ng9GJOeK8Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4A0CFA746
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801535364.17487.14352370378764623418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9176787fdfe597cd73a606e718398a4f6b1b3b5b77304f2e1f671a7eeee2e73
Date: Fri, 04 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728015353
