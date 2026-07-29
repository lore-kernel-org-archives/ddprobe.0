Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E8A19046E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785291634; cv=none; b=K9FDK3csvLLIyx18s8TxvbunpsuEY6gjhn5XMVyVKONbWpt68EoKRckPlvUAqexe23+i4skSFrPRwfRl2lbKZf6iStJ/8CLlbcfXwHWtBVZpMbBUMws8FQKfGouTCqfWuOxpzFPgoWrs57BxBl38dxdsXs2YTcdOs8t2ltpmX24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785291634; c=relaxed/simple;
	bh=LiT64ozZr9NlpP5b4q2B3uBYNrhlkOOCySt3c79G/yY=;
	h=To:Subject:From:Message-Id:Date; b=MgsqSmft6KfryRFmtOWffOXL8dc2UiifvnM+qO61GbafxAMvl+Oj3+vRkLRC0u42bCzkIF5Oc7wc5B2OlCCyZZbUQ/kmDbGDcU2AybGlmTDfO5UbFAqfvSaaODjJAdEpSpC+jE91I93iCMdPIQi1toSwTxqViHT091Ge5Yau75I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwXVCHSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwXVCHSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4162C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785291633;
	bh=LiT64ozZr9NlpP5b4q2B3uBYNrhlkOOCySt3c79G/yY=;
	h=To:Subject:From:Date:From;
	b=DwXVCHSGuTOUxPkTDbJAGdEM+DcTa99g85uvgdQhkTIjb5gp9VAgBmStH+9qzeIYK
	 LETZJ3VG+IDUSfPDkBFtgAO2Zw7X+/GNH1gQ8ovciCi4r/vqE7Ey9scVM1CcIURzhW
	 GzOxkwAflqFfIl+hSR/pA3j0NkNDTdKLsrUOUiO/UjZ21cXWMkymgSDl+vy+v82jAl
	 2qdsq9d018zKOd9aWzsvD90xvZwFRbUUtF9tGlIyUGeTMZgxwcMccHyZ9uejZCqAbJ
	 ndvSfmaz0Y89nCeWJc7kcAT6plmvPENeJiu47idTUHktzzyIzDki62GckU6KAtqe73
	 zlMrosN2Z07pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFBFC54F52
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529163370.17584.5494581086522054407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c6a6a436c96a5a9a69a96d8001c409cc296d761f4039602a76ff8f863fa782
Date: Wed, 29 Jul 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785291633
