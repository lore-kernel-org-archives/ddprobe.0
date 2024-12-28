Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D9F79F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735362954; cv=none; b=I4LJ2gmolfeARiSWdY3kzz4qD39rd+z52RQgPvMUE+buzbh/FPOfNy2kOe02n5gMQPNEqaJubimGmAvoM8ORSTQ0ycQvZIVXfjRejB5O9UQL6wYj0lsy2CwY8hSmrxA4KuPlIxNrCP/tTT62PyX+3ium1DG8wAr7QXD/AyPaYwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735362954; c=relaxed/simple;
	bh=8kELDXo6JCDohhsaR2k9Ebk7ZhmXHlsRQ0oieGm4vVo=;
	h=To:Subject:From:Message-Id:Date; b=NARuZ3Leo6i/nA3rw6piBD/wGPwG/+Jva7WwCrRiSDk8fOpTfKNTtNXBxLv5OT7NhZDUu/vexvEnS5AZ5PmnTxhN27ALnbjKZUKUb3Kgij4hBazRZshAt+8+uK2upl6I9ZS9gyIfJqU3jPiSSXSTdJur3yDOIuSwdLy/eMXgE2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MK7dztpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MK7dztpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D52C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735362953;
	bh=8kELDXo6JCDohhsaR2k9Ebk7ZhmXHlsRQ0oieGm4vVo=;
	h=To:Subject:From:Date:From;
	b=MK7dztpYZUiNSaNKcdHbnO1MQm+CwuVEAODEHVj1tQjYh2xgestlGzLbyPEG/z9kO
	 cr8Sb7MqXhB48FPLomJn1MZGMxEtC1L/JBRAX2OOLRgrnnEdhKNUPPH1AVh8GF9com
	 s6ZE5zHkb0ZVChClg3GJGUhKijVT4XEgsbgTnglij+fXX4mm9o/mA0PQJfhkfcIPUi
	 J+sCAMj+xCbBC9+58ylal5lxFaat9dcGOr8SJneQi6bKgdoLaWNGOlYZPaVNAuD212
	 YOfGT7t6hpn3p6XQC0DkGbriFM/KhxlDPUCqUKT3zn32vvsHeGXvABGADQxpPloIDV
	 8vZki/w/DkBNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07B2E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536295364.30528.9132473097433641595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f935ccd26f17d5f2979826c1b77eaa72647a3c3c5cd7931046b0748965ca12
Date: Sat, 28 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735362953
