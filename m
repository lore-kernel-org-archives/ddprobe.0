Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE201E515
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787901034; cv=none; b=M10fZEhOtcUO4HPhBideJMt5kEfyqdMkCub++NErIBPFy0JKb2mwxIqoTdbLUI24SExeU4d5EECia48xLsv/8RJ/zYor7IlLSneTFoaiUWnurRdfs79IFaypa1iPZRteXNoS/tN1SHoNUDoplWZRVDPXNzJ1MAyhoGq9e5Y0Qog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787901034; c=relaxed/simple;
	bh=WJ5PAPA66/oMQ/LRctnjEDuoFTNfGlhYI2vo1kA+UdA=;
	h=To:Subject:From:Message-Id:Date; b=sWSCq05EUTRBsiZvK2ZZ8jRhDMJ/C10xVOk7poWxST/U7KcVy6jr/fwmuDtcdP3gXNm4MN5I3Bp9a/g5wtbRu5uzBUC98b2MkxCqZbDaGqOGfD6QMPCPNDiZ1udEbF6+3O9M/C9KNFF8pY09LBGimz6R9LhaBjHE11b/NRpzHyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIkqs55E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIkqs55E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D3AC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787901033;
	bh=WJ5PAPA66/oMQ/LRctnjEDuoFTNfGlhYI2vo1kA+UdA=;
	h=To:Subject:From:Date:From;
	b=SIkqs55EOaG8ILITXIN2RPYrgJUeFvfCQpDAlaDJW84ru0qgOBFbSNMPGlPaRAWpZ
	 bmSXTVMCvYkLnT44WBe/WHDREn3VIdwJub0biYcGx6P/eFDu05CWs27RbeAvafWQe/
	 ukTjh1Op1/myEaiqKil/nlZZwihoSOu1ng7QG+NFxhx6PveANjQ7nAEU6Jm4GRTjvc
	 L0YS279FIL3L7gt5ilriQJfbvSNicLLiPZ5LpP68z5xQosC+4HmyRKKx5YnxuAEJMa
	 6r/j5QinKKjmjvOoYOHRdAk71gx88rhnGIyquzbV88n12oS6zf7xqKVx5gw6RLz65I
	 jnv/Gbi+LneGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF871C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790103369.7952.6590849348223639909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7104ec33b6fd16f045860672625db933600ce08a0e3617c2be1dfe43993faf6e
Date: Fri, 28 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787901033
