Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4C281729
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713525563; cv=none; b=oM7hgHze/6MpRh9+B06r1ZQZmFklf6P8YUS5lpwEt9otmGXKal3m8HySy3UHTltoYbDKvK4wx9pbuDrGKp0mxp3HWCY4zB+n4i2bOS0Zt8pYoi24tkKgtv9LeDNuzhT9lcBNTD1curMhdJBG81zAEhdkPeZV5KIGDstgnJsXCkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713525563; c=relaxed/simple;
	bh=AkyjsfNy6TZBFPyjuLd7VsXd3zTnkCy0XzAEyV2DiXA=;
	h=To:Subject:From:Message-Id:Date; b=dOMy8/4GVc2/SZ8Sm1GsaYjmHTfkcOpFlL62fwNTWUs2fT0nrtXCG+zyMwBakFW6atRr78SMYNGHljVf1TZDG4vouBDOPchatElA6ny1BolfhHnfwfMkzzUO77bGI0SWhA1pJtGPFXzZ7hnJsugiA/QpbXK+GWVRzCTcclJk83k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeClxJey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeClxJey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC17DC32781
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713525562;
	bh=AkyjsfNy6TZBFPyjuLd7VsXd3zTnkCy0XzAEyV2DiXA=;
	h=To:Subject:From:Date:From;
	b=ZeClxJeyqbQ79Pok1s3a1p1i+YckVxYcZ4+I+wEgjVkYvCru85n278pgYVzLEhSZ4
	 sctlQEhOwXr4pZpoeJNYUnirEHOVwCqcUZ9HwNLMKnN5ajqLEtc/GV8JpXqNw1f1Su
	 IuYBKM0l533TSY7DjsL7kZqfZ+gOc9e8ltoEEX4rORLBInHA73wnlpddtKK1Gzimne
	 37Q+kmnmFhkdYHPk6qulo1J9qCQKtH1qf0cAu53TQV+yOaw7KgG0Xr2lSL1mdufCBQ
	 BL01KkM2W56gJGFmj0NIlRnX18Otfv1ZQw29lquWLrGiz6r7ye6LhOD1aaXiSfymCd
	 9FpA18dTFOqzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B0CC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352556278.27497.14601472929426320261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8cb3a59887bdc36a90adb37fc17b0298be5cd48e968fb688ae99285d9b7252
Date: Fri, 19 Apr 2024 11:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713525562
