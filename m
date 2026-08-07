Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCE13B42C0
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786087235; cv=none; b=OT7szxGlwmuhkVR733L/s4OKSgmRqM3KfX9JrYz8yNNBD3+qDeCGG6uzVP5On8t4+a0LHlQkhQ2BlcDk04q2TE//ZPavqx47Vb7YzU22+AhHTECw3pk9vGDQzNfeMuqFohTqkywwv3OYbFTzr8Y100XuzHLeoy9TmlwB78OGqIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786087235; c=relaxed/simple;
	bh=yaBQs7MGY3ekA8u1Mjmo2RICSaMaeiaEPf24IH6Zfs0=;
	h=To:Subject:From:Message-Id:Date; b=EAdVSne+KSme50Frq2GEYW3AfuaxFqnzXP8xowWfBYGgLYiuyYTg4MPmiCi8i2LjEJzNxlxvw/jFY83SfIuyQC3NNIr7W0P0IaAei/i0fMsEFnDSe/UuQo25ygUyMSw6ie/l/OGL/VdGRtyLPK4DAuTMjn9WXdHKMnbXPGC/qs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqOowT0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqOowT0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAFDC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786087233;
	bh=yaBQs7MGY3ekA8u1Mjmo2RICSaMaeiaEPf24IH6Zfs0=;
	h=To:Subject:From:Date:From;
	b=RqOowT0u6B3Jug6WEMRPml/QtWH65klc3J5rDVmOQb9J1apbAue2ScQ4Lrio7gF+y
	 e+5RM2FdvTB1/DTY8doikoy9hTMr60f3WGdKeOp+lxvzyh9NCBz7U2Tk4aRx2hCtqA
	 53JmVEd7WRn98+QK2T+CvjCOgz2OZcf3EWGybGOQf90ido6kZ9eq60D8nEppLqu6xh
	 I9lqKwy7N6vnVwJgFwa6UrYWNtD7EhA9KINXx6Au6j4tfpodoV/L5QVfYimfS1cmn+
	 rNdeUOucl4LV8Cbn8A9SCkqDpc660oRuLYz6rxYKIx2lw/nHTwFiJG0dl0t1BnXOFX
	 T9dnDhGSvrYZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF44C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608723368.3052.5654614424566252853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a29b2d2791965c4873c82204acda5f72a56be7115a0e1d8e0eb8ec6762318d1
Date: Fri, 07 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786087233
