Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF13A25A641
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738113954; cv=none; b=VrWj0c6bq1U5BH5pjr27hbvk9YcFMSnCp+oDhF+lUHuAhJaT6uqJKRuqympqqX8hEA5I8EavjYaxtoV0QpOT7Uof5skpi4s1hIy+ee0287KRib4EG2UCP85lusq2LEovLusuVNFdnLudRufWSe74O0ORibEdDm4ALeO6Vg7rMCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738113954; c=relaxed/simple;
	bh=dOzKJXCSCh61nTXoT/jqJ6L73YpxQd9eobL9VLnbOog=;
	h=To:Subject:From:Message-Id:Date; b=OltqKEYmdzJSxpXquj/zpKQibEqDVuMPn1vk45Kz3bo0d2C2W9hkjXiU3p0ro07jA2S2E+Kz/LYMteWuVVLaa2fJPAaLOghad9rd+PVVqQS+AhKtDGgvB7MGflzS8ChzBtuA4GtKc/QREqHV6G6qHZY+6pgWBC3Eq38pREpv/Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuRItuy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuRItuy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B305CC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738113953;
	bh=dOzKJXCSCh61nTXoT/jqJ6L73YpxQd9eobL9VLnbOog=;
	h=To:Subject:From:Date:From;
	b=VuRItuy7glaW9O5p0KtOVP6u+cPS72XO6h3ATB/0d6a+cgbdCtBRNYhtCiLb3PDMi
	 U5svlMcrtIVHAweg84I1tIIp3PQyQRckVevUZWHzweeMP/JHAaRyl9CfaERsfp8rCd
	 NkktC6wHniGvA4RkfcucDl46GgFxSNNZaFKcQuGWF7PLns6+Lsj1ITUj8qDLSQCQgk
	 zQYsoOoDgVg2pmPyGzdTeL+QpA2fowk+Jwb4pnSd0BO7LTa8YS2wxFHlWjMbiy0Yvu
	 GwpWKzWJThlhW5yRt9PA8opeLlg4emagIIIwfUFDZggjIXtdiEPrUbD1rB4tEn3G8x
	 mJMMlteRzrs1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0A1C0218A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811395363.14675.12878990962915493440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0d91a8435a4d5c3520b174f16d4b87bc4fc1cb0566016b4422fc63a09f7271
Date: Wed, 29 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738113953
