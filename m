Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0A620F067
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761091194; cv=none; b=uNZNtvqZ8mJqm5gLDDKt52cH0EzVDzh34qkb99dggKM/EXGTsOk82lwPoGoG3B37n0TpDp32Ss/VGnZMYJCs0okCuwGIa6gptOGG7IOs57oFVFgHRN6xvmODSRGKpXqOOgpjFOQSk7SYAQYCP8c+N4Fkmm0nBRKkXGunQrszxy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761091194; c=relaxed/simple;
	bh=KvW6BdRaJrAnp7DS6YCSUu9k4I1eui6VGJS9QgU1AnE=;
	h=To:Subject:From:Message-Id:Date; b=dqWLQNe1Xepl3URAh4e/ICnu10Bk+y/Jcjfz9+4C1WZTFbR1wAUUL9Qk+EjaGkszMAdj2DmcwhtLag/5LN/5ORYlGXA5FviLAloJIAFdaaBYal/gQm2kYs9n7uwyr2MXX9XXkGtso3suKwDPp3feUbXwTdPyyKKaEFPzytLFS90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tefJI3NF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tefJI3NF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95B0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761091193;
	bh=KvW6BdRaJrAnp7DS6YCSUu9k4I1eui6VGJS9QgU1AnE=;
	h=To:Subject:From:Date:From;
	b=tefJI3NFTTglyyP/quK3XTqCQyivJbVi5E2e1s1oYuZaK6BVDrvObEcVvAcEsKB7Q
	 qMNKrJYsAqK/M37G/9MMRwioxv3udVThT7KIrhmhG/Cq9aYYk38AMWAD2pKL1C8yTd
	 xma/ycZ9F/dg0Oni01jcKrw3620l84JnclHnKjShEqKILGmfMcNxMBHlg3wTNG8AI5
	 l3JJnNnGNeq87KNcDqUk1H1Ai3LzyrLdQ36sxvcE/VEl9EMmqCsYtdToY12PtUpHX6
	 1Y05ogQuKAiLrUOgemP6pC50MjN0Lj1vtXGtStHKlwq4mtE4QQN94EqCUqFdzuaWit
	 hLjM9WxoFqwvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B53CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109119357.15053.5356291299812474730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8232ed0e6677337ae15f308ad20c62720a2ba6657a02f1594da43fb3e011ec
Date: Tue, 21 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761091193
