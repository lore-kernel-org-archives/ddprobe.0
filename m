Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D744EAE4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718375903; cv=none; b=K/VoX/D5x65xH7tdFDFGxNJIcw+j4G+D0ethL635Ak9Vu+SyTHY7ygN33YljUkBaz5ItD4bQxpVQwjkywroR3VWaIBMaOPvLYGYjpjfsFG5S88d1liG3w/POy5r4Ton0Fur5NvwAXq3JpuzZxBm2ibOvKJLQdvdOOFlKIQIAFxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718375903; c=relaxed/simple;
	bh=EtU5i38kd6D0e8coBIMe6I6UbGQJMkcpDlmh1DOXwp4=;
	h=To:Subject:From:Message-Id:Date; b=C8TSavVB5onI44G3SPcTueMgTbmOdXBXNnqRt6dk2Hl5x9mOGJncvsobT5hFIXOBVPpIb3iNhV2fmuTWGiVM6DUvsF2HEH6Q99G6SX8txlsimw7WcWZMCSIry+1/ozPdtZ3NaxRQNzfFRNW2MuQ4s50gYBgpLG3QbTCKEb5qGxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI31zuhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI31zuhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7FFC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718375902;
	bh=EtU5i38kd6D0e8coBIMe6I6UbGQJMkcpDlmh1DOXwp4=;
	h=To:Subject:From:Date:From;
	b=BI31zuhfNnCLqLqgQwFlri3E3y8Jvedx7QuwEJel2G4pqjZxLjY3hX/qbxBE+HsSc
	 16MHtRWSkQ2kmoo8ED2JafaI8fGaDu0kb1DKvGPkLubMC66XdCksUe66xIrbWLgzkR
	 4md77xaBE7tiWzyMg10bGO5Z03ojd03xXLrq7qDLQPk8j9kStdTWhyDTyJIcyPPxX8
	 6J0Ic/hkQDOHR55mWv8PY0/8vVVAeOl+At8TyHH/i7XqG0WHSFAFlMClJURa3tip6P
	 zawjZ43f/a2St5Lt3W1mYGV3KJiY5z9CISottSYhnqoLYGpHRjsoCZXZ8Cwvoqflmc
	 FRWQrkTixfBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C580EC27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837590279.18662.9760089048321219468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48eb72efd0e116b48741b0a1436a534453d1d1cfa5c615a1a901bcc0f16f1bb1
Date: Fri, 14 Jun 2024 14:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718375902
