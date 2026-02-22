Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D913C17
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771754694; cv=none; b=VyPOS3kWvjxggqa+OrCs6dSzqlF4a9Wj5vLh4gINaz7iUFl9u8rlNd9b3FvS8JEK+b1RDlaEkQjgVVj4n4yoQkN3VfBDS9LuiaN4K4ePUUOvUBLf6D6X9v5ssvch7Q4rvpSMovCJgUdeppMN3++CUriZ/BTw5Ytk42VRKB2P25I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771754694; c=relaxed/simple;
	bh=ncqIrIF/EeeveQTMnuuOIhSMZ1KF9ukv0QscxhHFAx0=;
	h=To:Subject:From:Message-Id:Date; b=m9m8mebPjP/Abwbmu6uf9yAcXjkshIv9yEdC9cPSkZbwKZw4x95zSBcJWlzyq57HsX1ezXJOZCpWZNgJsfLEv8KgXjIiv/eYp4JZZKzs2I5sB9eY/QW2xsp3caZEBGIpu8P4JMf2mvAOcQ+UzrJfvwso8/h2vseYTyigMYgddts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyVpEPwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyVpEPwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ADBC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771754693;
	bh=ncqIrIF/EeeveQTMnuuOIhSMZ1KF9ukv0QscxhHFAx0=;
	h=To:Subject:From:Date:From;
	b=EyVpEPwS1k7VE8/B2oKdXB3EYZHbLGro/lhCHTihvHNVVTGGieiBB768KqF9fWiAQ
	 6TgPr4p5ptz2ya/JG5mvPK7VlacRj3xOae37OMTzPfjHv1BBfxI0lbn5ic70iQJXl0
	 Tvigwrn3naL6iGlr3xiUKMwiXKUbjBsVioh75e2HXhn6S9sw8C/ighGI25XntzD3BC
	 2VrXFHnRelpA2oqetn6PfuzdMzplTIl7yEPzknxk1tcRcMzNzl5M2Jo6xgGpQ7NCui
	 nn2AoMf+hQuOLiRJ1ECeuEMdx2h9Lm0ew6NjcOTxyKNvtz9ok2taLi3tD3W2T9o5YG
	 HaNhvO+n/JuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D07C624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175469358.26757.16437712030437446007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e2c19091d3896c2c0a0fafb10a0eca2ea210691b2e3087d9758a078ad8861b
Date: Sun, 22 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771754693
