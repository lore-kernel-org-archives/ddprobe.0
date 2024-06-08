Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD3F1EB40
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717840043; cv=none; b=Sp2fN1tUUKrp08GfbCpXsn+xCrEZlwwzLaFyJ5ST+CFJWpmPn11vN69MhBZn8FGUUS2aehXQcVhHdM+BcRKkoacUAFP1rcswDAbei4dB9jZHjDbtdrDaRvwpoiEMpgddUrw/R7uaj6aasRdi8pyeqL74gNeKjT949b52baa+raU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717840043; c=relaxed/simple;
	bh=aFS45NPriW1hvxcBhLql3vhEutyXrcK3qFQHUV6Ojqw=;
	h=To:Subject:From:Message-Id:Date; b=NxqGzch490EjPLfbn/sCJ+mE9yKHg7Dt12G/NU9ct9DbEsekV4cj4ocsiDOg8UtwZ18f+RZhu1RSqmpLwu4y6dxaw73kKNuDKb4yQnq7HLKbRq13IUuNPssYJE4WFt2bhVZ5cE71ONMjKWvk0oeZHLs58vlJnZButRbEcxpUkdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rtn5qVyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rtn5qVyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC981C3277B
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717840043;
	bh=aFS45NPriW1hvxcBhLql3vhEutyXrcK3qFQHUV6Ojqw=;
	h=To:Subject:From:Date:From;
	b=Rtn5qVyCW5V81IGmoyQOPiNFzntHaftoObJ62iLFE7olNSM9TgizATZFoae2VJvpP
	 ReNRE18J+wAkW8/7DY+j4mT242tD8qZ5JMQ3XVhkFCmbEdyJJqeXSnh+JR6OFFuZeg
	 dYzr4I+qgKseTF7R3yIP0Fw9B/xD0l24IsC73EbJ3dgHvVSerTDfQUctnRJhio7C3z
	 /kgoCgblpFCiHBDKS9d3MzgAd8CoBJ3NNcAhlmoFqOc6hEA4S+NpIWQa0brEfQCV7D
	 17urTmiuDnxMwYJtj9X5N68Z80fr4tU/zKbaLfgNOxVzaBfDuCO/gx/H9Oq2Jz7tLe
	 mKRYyMP1WBdvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5545C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784004283.14464.4589375741090354964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee8808a2edd4231f217f9927798a72af1c7aa46b23610dd27ba260a0bc74b47
Date: Sat, 08 Jun 2024 09:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717840042
