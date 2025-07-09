Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D429A1DF74F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752104993; cv=none; b=U44ph5d/CaRgCs7qDCWhAS2GWhZg08RpOlVyB5YFehThC9c+2jJZLGNqoevlDrxvL1Quk7bgBbpYJn5RuoClDSvKpM6bVqNIQjCpr1VAy3Jni3Vaq7nEKXHQm9JG/AYwtALiNgRug1tIHhE9xVkGLKNNufpLI/UgXW1STE3f5/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752104993; c=relaxed/simple;
	bh=j2c4GPNtoMc5sQZ21qwx5uhVooKNetHZ17WZF5sOmTk=;
	h=To:Subject:From:Message-Id:Date; b=jZ7MQja0PMRSpwhgQSqZnIe/DcPG+Nshpsgmfj1ZhHHmQGaHsMnOYkoyaw3HMMmLGcnXLbpmRQ1aF/9+v4c0S8nbfQTW+VRdx/eWBefVqsgqHv0NOktXfc6PRFY747C6srqc0+D5hVeoZFe7z00J1P+ElofL4d2wDNfKqdd3zcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqder4At; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqder4At"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02ADC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752104993;
	bh=j2c4GPNtoMc5sQZ21qwx5uhVooKNetHZ17WZF5sOmTk=;
	h=To:Subject:From:Date:From;
	b=uqder4AtNdSQaZIJaCOLw4pu3yybSM/x/PEozEzYwW0lQIEOcKJANoKWiAzl2g8U6
	 c4cf2bjj7pcJ/OzfbOADvn300c9Fjd+KbqB6mKO/rpPMb9v1uJ3Vrnkl7hIR1kpwxO
	 2+pZhFqABSRxJLt6MxMsIhvXrkfxBycfGlVDauxQ6FpD8UgjZ1b0U6Hr3Z1YXKN9SF
	 fA6tUdgaA6lxgHAYFUSMzReq823ZHjIMJSIZWJnEyCmoFDiUgaqjFjSVVD226+jLlT
	 itxC84YJpz/fojkcJVEV+DBoCgaFNBmuodvw/tBdW900KsR5HEB598seiqmy3utfzc
	 w3xSZr6a2fkrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E95FC83F17
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210499357.18612.1615624181969873061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35fb514166ff62e126ea38354c7b0716c664ce5744880235f1a2f69414c1de6d
Date: Wed, 09 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752104993
