Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7E71754A
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706852898; cv=none; b=odEhArc071U3SwH37AzRQKmCxRCJz4fJ29nyU2yCZ5isjqAF1a78GdKzLp3GEwtM8s/geDNspFyTC15AEYA3H5UHQIp9ldQi11DODAgFvF/g5aEMcuEBL8VBYayMF+vDt2VdI4hUVSjigJnAtKvcP59DcoggS1wsJF+ypZqHSKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706852898; c=relaxed/simple;
	bh=B1+T1ImMkb5fuB7WbeGOizv8a/utOowbuS65yS3WAsI=;
	h=To:Subject:From:Message-Id:Date; b=JxqcX3sc7SuOnu7bKE+WPq+/5jEn1s++ww4eOkSyJG9Sxcv3pkA6XFp/ak7QJf/skAlF1YvRFmnN2f0KYSeYW3l9cpbQBXlZFaNhfY9dqVVUsVcJwuBfT0fco7fxqp7m7Y2uGGYhKCO9xYuqEOMf2vNgCU6qVhXLnROrbKA2JME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKlmRlEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKlmRlEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EAEC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706852896;
	bh=B1+T1ImMkb5fuB7WbeGOizv8a/utOowbuS65yS3WAsI=;
	h=To:Subject:From:Date:From;
	b=IKlmRlEzZJOLeMneznCBt9e23BM0nWOF02WQE5X9l29egFixx3+PkGbWWH/oMYgu8
	 Syl4xF8VJRT7QOTsw8sCzPc62JQ0kPkFUewmL/MoOf9USuonvrE/ef+h10kbhjmEMu
	 b0JsY0mV5U1X87ZE3J045Uvl1u2HXtWfT602qrsFt1q9o/n8i2IAdZH0NBIuNE7ouX
	 7XgNiW/Oha4OLR7eFWDnA6LYbmeQDBHLFqxyfIe5ynVr7olYM+AiHG5eO6ho/STQsM
	 50nFF7+TXF8+8Z9OB2+CKw90AeLQBdj/4t1dM0V8A6vwvoXcnVSd6+mzSHLK/hbemQ
	 2a4BPCDTmpwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69856C47258
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170685289639.1458.5845058682006163732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f82072df444a8b597459c9ee75be6f7d566a28ae868727f695740a5e00cf5c
Date: Fri, 02 Feb 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706852896
