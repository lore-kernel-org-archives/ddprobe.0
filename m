Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3D91E4AF
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719681863; cv=none; b=Qd5i0bbYUj3qvBz/AUJEpUPJUm23ec/MhdSydN7XetS/w84gAa3OlFswILoaFaiuSrdPuP60joeTDwWpNbEKYxO5RWGEJuD3K9/gKxjpsKp4Rb2KWDqIKFRSLH86cQImYpfxFypiqRQsiBW/dIL1JjcpQ1fe/XfaULCz7GQvimw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719681863; c=relaxed/simple;
	bh=cA/ZXwK3zFZQUU8mcXxtVjC/ABclTTWCOAhjZSWEvtg=;
	h=To:Subject:From:Message-Id:Date; b=pokMhzxsgGmT8+ZAzJX9fwhkmR655WrRHAKGbtsEuXHFPuL0C4sOjE+lQdg50M27PM+Mwyfog1w3EqSz/t8paOPo9XTtcZPat2UbYEfC4mCrmGHffWZv8Fhay8pbB79Bt22SOq2V6keb4ExgKxxZo2O0DwBYiKZ5AFBhqt5c8sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/utiiuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/utiiuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EC4C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719681862;
	bh=cA/ZXwK3zFZQUU8mcXxtVjC/ABclTTWCOAhjZSWEvtg=;
	h=To:Subject:From:Date:From;
	b=c/utiiuv8MURfm8Q+aCKin69nLfMCieO/qhKCpOjAy8moFAhpdHsh0whPLcl0ju4C
	 GUB4/Lgnhz0PV9SbAAcyP/Yi0uuv4NNaaYWgkTfOBIDi+yS6d0D3xXg76CvGVK2kO1
	 oxniVJcUM/6IXThx1VpNn/fUEunpU+zmXLBxRTho0cJ4mUvusw0NVcLjsgwBcPoYYa
	 ZfB5niknlBpqfoVndlVsBi/PXO9V590et4nW5mfVYiBF8Ejk/ZI3BfdKoToBrFiA5g
	 seCO0WnlMM5z616K8GQsArxAEUQcKoKDdgHJ1Eq4x38Lz433O9blJklSmrWdVemlVx
	 oKSuEFbTfx5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D2DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968186275.10197.8265541147883451306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270a8595b63b44910cf376982174b89129995929692b2db9e0dbe616d6534f68
Date: Sat, 29 Jun 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719681862
