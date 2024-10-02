Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE7F2F22
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727839554; cv=none; b=Xre6xUsY9L5l7X1yfXReZocEsJAybgNpXY3kozBdlRAGTIHFL7p6ZRAgy6atSKMnz+1efU/u/fRxroUjBEvK16VQiY3I6WXcaisWVfmhjSWX506vh0DKzM+IxH/smrg/dKBslurX15Wc1ni3krfETB/cLWHB69WnWF20iCTinPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727839554; c=relaxed/simple;
	bh=pELfFs0edToomABnZYsEEL1KxskUl9FvRJ5r3+8W/nA=;
	h=To:Subject:From:Message-Id:Date; b=TXGnIOHnTEtN79BtbXIyCjH4LNg1l+h4QCVEEQcyVIMtO2Q+Du7h9YjcoiVKVyJHxH/HBeGs+AukpTv/0RFpy+3NxErWO8BmtxWisOhwVwiMmYH5lQxPwutJ5WKNUyXn5Xk6yVopaq5sMMcrso+JC9S0Mxs0kBLrJz40QwHgxJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XK65vBiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XK65vBiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0557C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727839553;
	bh=pELfFs0edToomABnZYsEEL1KxskUl9FvRJ5r3+8W/nA=;
	h=To:Subject:From:Date:From;
	b=XK65vBiZZiJ0+kv4cCU1HkNLFJWxcLNbYhY8lYPsPfSOe86gg3OXRw44DBKLxSv3h
	 xUHKBciAS2NN6ZCEHx3e8Bgewf7drStEzLvENwlwwgwv3FNtUPllxddpOb/mN6rulY
	 /kFjJWdD38dv7zepM0PaAz1ZNvrWBTy0JWgAUXA6OYVqNrEaPo+2DR98hMzRD7Vc2K
	 Nrfe8gMhN8K71LlhC4Oc5Oqe2BSdOxCZQ0x7ZokzLXIBfZKnqY98/yuogdxbRtcnh7
	 rEHZVYY1nfXS36qmq+53QL/wayPF8sITW3pDzqW3EzXDj3CNfaGB1FdhqAtVM3s3jY
	 jVVIgRjP6Ktcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99031CF3194
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783955361.28195.10643971777997661029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93731a23706042b8bdaa939d77454a6984ae74368591647205e3e0e22e0ab5f5
Date: Wed, 02 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727839553
