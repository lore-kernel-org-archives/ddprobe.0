Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8084216419
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719084743; cv=none; b=o7I6O0TmX0F93SquA98q2rnJeAGxgCcDLVzCsfHEkza5Q73MKeweu+RNFj/3e5NqC46EtFHo5eTq2yqJLP/obhVl53IPUYi6fkrsaeMxLVdH+yXDJ74QHHQT/18n7lRyPm4JEQDvY6tp36oXOeS7RhUSyiHDLOdtGKEppC0lHIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719084743; c=relaxed/simple;
	bh=//zOhFs5E82e3ln9sCRuNxu2iG5uIJL6Poy/fZ/Cdng=;
	h=To:Subject:From:Message-Id:Date; b=WewMnnDxjnRdE6pVA5rJsR7BMDkkjaae8iOkzH1VHUhor14f5ApNdAg6pMHPQXhs+PsdnLQ18ks8eUOyXTgnfBJiYU05E7ItGuc2CuGSX3IdCbfDKd3tU5cG4yIOQmCqGFuwwZwKjZdqN5ASHN2QIcSYpUdJq367WsK8TsWsgcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB2LtaVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB2LtaVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC1DEC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719084743;
	bh=//zOhFs5E82e3ln9sCRuNxu2iG5uIJL6Poy/fZ/Cdng=;
	h=To:Subject:From:Date:From;
	b=GB2LtaVifzJwtp99wFyUYjuuY/NisM7/tvh7j/f+WXB9Wqf20aAsYVTqlqHyQQCdO
	 rHucX0Q8BHlJy8kW6YshHEHnv0XG0Jl5NI+0TQmuPlpgSwUEwOz1qcOtBxZharUVuq
	 9SXspOPU9ika4ZfeO7sQgyTFDJysDFXtlZ4VgYSykMb4tStg4jkyQz9GeOeRzg5H8j
	 AASrHwPoUa6j1XwAmsgBjVruf7VD5XYLTmbWnGFXUMA/sttlMSaMTqdVNP/vhjJf0d
	 Rzhnw8KSsIWxNfNBsB8PtjYQvhpdMDTJA/7sHtGQPKfZqiUnFL8UqwifjMck2rEEF8
	 QXmOekWJAICdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3602C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908474281.1117.16590738213662533886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6942b6f18975c0b72aa954d80b426b726bf31a952a25fd7051f1c1170169b82
Date: Sat, 22 Jun 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719084742
