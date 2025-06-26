Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED564A33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750903194; cv=none; b=kDDR+Mro9mypamIPbqrCM8CN/3G8rj0hdPdXCTvDReZtdHWXI7kjJixbzivelCzHaCyWbZQrR7ZZCVkBmUc4L2fhZlk//sdC+MITt8yNdCLAu+jnWJAoRzDV6L1u6GsgRXhF1p2Ej7Crk+h5e6WSesh5zvruW3NN9NydGGHz+nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750903194; c=relaxed/simple;
	bh=E5eRahpgxhqSCqfsVdacVsG9cHLUy7uaL6ix5JjWCx0=;
	h=To:Subject:From:Message-Id:Date; b=olg5T35MJWFG4heQDADEDTyI8JH31gBUuEsduFRQ8bY96l32zFVZlIgm0ofEMl+cFQ0ei4M0Enh2RDf+/4ZvDpUR+8qgJABgqiuDLH6sOB122Pzhl4rfG+Gs2p9cUqAWsZ5LiymUG8ylaNa+ydkSZxeq6kEfk2BzoRuQMMJGvjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU1zJR1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU1zJR1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5722C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750903193;
	bh=E5eRahpgxhqSCqfsVdacVsG9cHLUy7uaL6ix5JjWCx0=;
	h=To:Subject:From:Date:From;
	b=bU1zJR1Aul/fbM21UJwjKwPOjaRUIaK84YcwEgFrq4t85uJZAevvHuQsc8f4Y/xsB
	 IFRCR/LYqcwL16q8BsdRtoYDaaxfjh35mNfnbyX82xSVF+buufL5rv65bDR6jjCT2R
	 dS8e8ptM7Mej3avp+YZkeKbrffhiTLGk12KjFphq7cXcDO+duGCyQqxaKtpQwlvLDM
	 8u8ndqiYtRUbe8mUMIqcoIt53FZJYrjJmp7oMXzW5VZxu/0muMh8mT6TNInDzaozi/
	 DvL6ScCd/HhLNpYD5JTuxMZXJHyhO9Bf0pL7jl9JIFdR0zMI73ikgtfvM8BKOlRm1W
	 oZ/rQIW0AOBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92571C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090319357.30210.1458856059874874653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0922a7d33bd99ff35ef11b56f5410ba8e14bb6b30ea0537d764f427add933c6f
Date: Thu, 26 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750903193
