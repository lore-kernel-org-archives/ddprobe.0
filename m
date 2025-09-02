Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248741FC7C5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756789194; cv=none; b=UPHq//8fEhOkT0QFI9+nt9O5zj/2yYZjG5O0gTSO271dAPbkOfd/mS9DUMaW475MZSOJcA2T9mhUpjAZzmlm2VuYcT6f6HFKYkKxO2BXqeYlivMi1Ct38U4RLYaguLKft+JRqnvSafkb9AVUZcAcVJKCxrhzPdjEbKJGpXjioyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756789194; c=relaxed/simple;
	bh=wfm7zX9A1faoFGeMEpj+pUhjCbwtbTfRib6xQIX314c=;
	h=To:Subject:From:Message-Id:Date; b=hdMwOH96gqg2UvSduAFxdzyZUSZOjtB1S6TLdsugd2q/kxdWfjzMH+Zr8nmWvUqhr9xPeoebDM2P636i2z35HTO0eTyzYbxteHUB2XEjgTAN9i9gPt/xz8JS3Z7JpZTAa1bcYeHgPfP9D+LVdUhUBe9UtvUWG74v1+5T2i5XEVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KByTgnCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KByTgnCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA55C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756789193;
	bh=wfm7zX9A1faoFGeMEpj+pUhjCbwtbTfRib6xQIX314c=;
	h=To:Subject:From:Date:From;
	b=KByTgnCOTsLVedDFIWN9RTbIX9q3DCR3psrKE9fTaA7mjcVMt0zeGXecDziV3BUAh
	 Z5YH5EtDXAXf9l5dG7B3rbGwg8hs9h+/GhBbu6fG4pFNbI/HOpmItEKtEBVtjRC382
	 6POb4sl0vNDYf0LPrTMWh01I3nuysPFnZvoBXuKhmjf18zwp6aC+UbybFcMTkyfF7C
	 Y9jD2X9iwZYDyhNj9YfvfzKCUeldM9a05oW+3bd53CoLWNOS9SutYicCSLlg9ailUo
	 7kqC52BAtMjXtno2Bv9xgeN2Q1slkgt0aOucA9v7Uu9SgeB5EmhkJJsRnXCoCm4+nl
	 TozvUKVeaBrNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CBCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678919357.3473.15430117190450968141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2c2e9ddb22f0b4b73f2ba8d66dc7e03a656d480e8be404bbfab3e54c7a617f
Date: Tue, 02 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756789193
