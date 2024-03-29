Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4EB5B1E6
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711718297; cv=none; b=ttpuYD5zhKv6pG/hoHNC/ylo/9gITQxtbWEUX43PGO/GP/eVryq2X9XNvglMCeAEQN5a/0snAcr3MIbo22uEnZBHOKhMMPlkNKYS0EPg9ZZyJok790YZWfAb27CLBGJf6uFiK5lUNR4vT8+QYCIx197aRV98spBUTKwAxWKpYOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711718297; c=relaxed/simple;
	bh=DWhg/Slnay7Hx+nBGrUMZHNCJVWhtaxwutlIoMxBeZE=;
	h=To:Subject:From:Message-Id:Date; b=IsF1D0uqPwa6yzrLh5bthjjoNmk6jr+ygDouJ1peZ+5YA+tENKi5gpXcJ+khz3q9FK3VygcecovoW1IxPQlM3/A3SucllII3+FlQ9W7McRuBCsikrWQ8vZskm+9MOn1D445BIybB7p/WzJfBaibZbQPTaNbagpFPZV5lOrEqXW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnpwXAJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnpwXAJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA3CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711718296;
	bh=DWhg/Slnay7Hx+nBGrUMZHNCJVWhtaxwutlIoMxBeZE=;
	h=To:Subject:From:Date:From;
	b=KnpwXAJxaUutPxwFXcnS5lwf932/FR7igY1CSDhvEPmdPIqkr3QbbixXQkeDmkaVD
	 E7JUJAoZ8VeFjw0vclHBFYZU9myZnldUZSA5RfHbIBujensX7HDtpaZiy42tPMhtKd
	 DMEfSjoMRDXyt3db/LlKjbXm+KYDEgLEpu4VjizAQPOw4Wl6xWawYY8KF8p5e97NjQ
	 CoDfn2eRHA2wRFmqpIvgzQLVX/RhhqTvxi4kzIF2XsoZW2KT2GXhWVeCXV6DgxYYlf
	 oqeQyS04c9O/NeACkEiX8WFS2EqJtr8GkvahjcLgwwruYMU+7VWZnCR1f+6NOh3PA0
	 bJ6sb5zouD9Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AF1CD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171171829640.7723.5730217193264464798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1fc5b7ed69a974a1e9c936f33a18e481279f1a6781b161cad0b78adc1a64c7
Date: Fri, 29 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711718296
