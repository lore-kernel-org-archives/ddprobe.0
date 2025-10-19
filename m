Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474CD354AF5
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760897394; cv=none; b=aSyxQnGbeCxQXbCfBEdHfxvX8912gUcL/42GGQH/DHN2stRc/n3rFyFKo7aV6uCCGfO8kubeGZUZhNaNeSfCRizo+ytCylHdxPamvxssHeQ0h5w5eUCknGBcQ/QNMhZmVH85DP/pewNeGEY2Ig58JpKS5NcaBM3g2ImDgb88wig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760897394; c=relaxed/simple;
	bh=mw5TEfHVwKWO9gz0dwgxeZvjaLU65rmT2caKoEoGXJA=;
	h=To:Subject:From:Message-Id:Date; b=bB5gdvl8O0DZgwycFN2b+HAfcpw91utCJGt9Dv9yvI26dJb7x33ApfV/f1dd4ct+flkIiVaRUltNaTitYA87FleSxxnIUp00mVvpY4uybtjfq01BWhAdFqTttzz2fnJJ6fpD0kDiz7KRT/Rui0h0YC88W/q8Yte78HzWGbn0hS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNTkyLNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNTkyLNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48F6C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760897393;
	bh=mw5TEfHVwKWO9gz0dwgxeZvjaLU65rmT2caKoEoGXJA=;
	h=To:Subject:From:Date:From;
	b=NNTkyLNoCSXySabMVx5NVmRKlMFFWuXMmqUxF24RLKH1Uw/alJgzkaCp0ehZ8HQiF
	 kyk7p2EsIq60uymnUMvimS8Q+D5SlGDhI8hIkPnawPrMmBIWQqlLCKnqvjNoa+ypgd
	 Csm2b4vqtQ5fNRedE+xaTCGXm+87xFEqj/Z2QoKgVa5pQTH6Or6XZWnXYdEhm+5h8E
	 sEnWzAN2y3sS6+f2wbEFpd1pfRoQ25WUxzcu93jwPUTX8HxO+mQ7yLvdrPrKvqwV8w
	 KmANVQq9QcRVwor83888zCsFVxtOr8simul5KxksWYr/8RUcgxSYrjJYK4nNumtToR
	 hFSKz780kfSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16BCCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089739362.16245.3602233087385895700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf42bf68ae6672dd74d8d8a028d001c6b9847e36e8d8f36c1415c3222d0ddb4e
Date: Sun, 19 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760897393
