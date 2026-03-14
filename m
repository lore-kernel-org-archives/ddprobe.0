Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5C014884C
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773502494; cv=none; b=NVC7DA2FPksdlEJApR3ho6wt65LGSGRtrD71ootJxjeMdz22poCLCc7lNHIIugL0KejcnUPiOwgQdNa1GIBPe4bAs9XDzR/2++XGcp/oHCE+pcShI4TtgOT8xJW+k72dt9d9+etp3UXotnoXb/jwECQW2t4BMSJmHatcGbW1F7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773502494; c=relaxed/simple;
	bh=IAQGoEdilugDayzA6SnBa3kOVeLKBxTbEZTx9yLqDPw=;
	h=To:Subject:From:Message-Id:Date; b=lyxqBLGseqce1EvyRkrOhWK/meEB+IdVeNXkHQ6k+d7UXwbWVN1khv1AzxCNkbeSawQTEuHr/y01LG5tUWMxz6QJuJ3xUeI+hsCqU6XnhtYF4TwrxpTta03E2r/xlBRs09Q9Fjxh8Hi9SJayXkVqQ33NxIq68TTDjDLKhJW7Ff8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epD+wT3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epD+wT3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B81C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773502493;
	bh=IAQGoEdilugDayzA6SnBa3kOVeLKBxTbEZTx9yLqDPw=;
	h=To:Subject:From:Date:From;
	b=epD+wT3GridFlstqW3DDQwIgN9q94Q6HxrBqx/U2CfKJGJvdlv/no1ox0ElWwxrVO
	 pv+abBxCej23HXt+MZVwsqa/2MWNPD3um5ebccgayMVm2B1nn1dZQG15PuE7QXr42e
	 JIhiGwDoox6kmpigdGMQpUY9/Yx2N7zO+y9et6DZKeXr/yO38ueXix31OSMzGz/WFd
	 5ZnxEjCixsrPg7w4R3AFV7bZSTlXPXJ7pgy2Rgs1bsgy7e5LYik/7/VOh9cX+E6bj2
	 yj5moZLRkaoRclokzpF2gl64FEj2lqOUTwmmiVvKJ3JerixAkQSgLCsunKw3KpzehB
	 Xpr1XkfcefRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9727E10706E4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350249358.31026.3808376338284486247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc62fe94a0fcdf3693dc552e64247da09aeb465433b1bb003f0ebbc02b93c90
Date: Sat, 14 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773502493
