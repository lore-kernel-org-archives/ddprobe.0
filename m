Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377A210E3
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758889194; cv=none; b=Dwr+6Mxbtj6X11vWOlpSUOByMyTki7236lXsm49vUnSGhZnXpdz6bVRJLrgQ4JrFTdoet1kSLeIYK2ReCQnNKivD7kaquoylEFf/rVxAS3AwohktWepPzhl356eErJDFxWsohJLzHNKCpABDBEs46I2ke9jA3/w0ZFTAzyiEkXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758889194; c=relaxed/simple;
	bh=Jca6pknUK96ojD3WdomdXbNUwX6OtDDwvLg95/hf6q0=;
	h=To:Subject:From:Message-Id:Date; b=OJ4GiwOuyeWQJaUWOfLRmbUhgG6ND8iSIU3CGY4MwJvFaOU90H8vrKxNE8ebUe3GmV1ZDw6bU3tksELzRyMJG/Gw/S9hATCGM4JYLHR+tj5BFqZkaP3UBn/9YuJWzEPVI6aFnkrqR8WT7mMgmrqhWgScx12ssz6LYvpsGPwxOJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ge/1Ihcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ge/1Ihcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8512C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758889193;
	bh=Jca6pknUK96ojD3WdomdXbNUwX6OtDDwvLg95/hf6q0=;
	h=To:Subject:From:Date:From;
	b=ge/1IhcvPbAdIDNBhJgeCJpSQTxffM2qAjExCRvi+O4vDHjosajD7a8S8yjY4zbHr
	 b053W+DJnu2L4YIUDT4488DL2Li9Mv9YWnZCS+nCAbbSUlTBaRml/sTPo3FySDroHS
	 WUYk+9vw65iHWxXosyTZ+Wvk6XYwKuMpaYLytQRwfC7vqjRahJpSN+LIs511oLZMNB
	 xM2znTwOibYPgiS0q95u6YUm6yzmG0lcmZPCbI4iMAxcQpYzUJRXTyxbbUr41SGdFS
	 io+gXKumXGeeXhABzSVxK6XmRqBH7BcdN2+0XGdiLBac2MCqfaSrtLeUD2X5WkSVXX
	 uXOw2z0Ixhj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F85CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888919358.4157.11223847688867445461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc9a1c6141557b68d56390d17c71c66792da6cfb3187df58a80fd7fcf5010b0
Date: Fri, 26 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758889193
