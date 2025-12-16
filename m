Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190E456B81
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765880034; cv=none; b=BC7Qj2wC/OJIt0Ky7lEuipcAc5wJ3RkuiTKTe505CGe8ulriWNPya0Xhs19stErn/0fX5OVLbLI1aE6LuRLxwcpfRPiQ4fLeVuYjtu5FDYiHFHhhFQkdi98pfj8uK623HyU1hNFsQ532ftWyuGBw97UOWkKg2OMRPdNGfOpNb5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765880034; c=relaxed/simple;
	bh=qWhvWN+dHhPYSzTITX3iQa8otOzPaEuXY5ceLECOvfo=;
	h=To:Subject:From:Message-Id:Date; b=VQwhNXjeJCy4Dw1WRUHKqXfMTM9+0yTPHYVEPCopmsVAy1+f1O+7eJog7Wg8zIoviajKADZulCqJQQrQIX6yequvCpbKncPEdSmoaEBkOzugNutLPW08PuJuJI5YrRjpKsH7iqk/EQuwMoS4T5nqPmDWs6q14DAoYTj0yTpB7bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpaQRZOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpaQRZOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B33C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765880033;
	bh=qWhvWN+dHhPYSzTITX3iQa8otOzPaEuXY5ceLECOvfo=;
	h=To:Subject:From:Date:From;
	b=fpaQRZOim5/BGsRvZanwjv+SWdoy7S8BLSlNRK33m6yd7tCwM8kCYq2D8dmbUIvwM
	 TRUIuhQMQo0EKdQhBMqnFJFCnT1z4kKSgP2XuTQi35Xs1hSW7bRfpwyDeFcQWI6Ptm
	 qC6gg3Datgbi2GMyZswl9q9vTORoYHaFOuLJjPuZfhmTmMWFbInWWWIy1zcDQANGDc
	 NK/OTIzNBhxuicUoSUzbHgLU25jHt/X8uaVFjm5WkPcjaHS6zMCXYk/o6XTM8SljH4
	 NLjniZrJn+XcaBauv7GG3/kEeG6UKpXjCPB/d8GEJV2MnrhjjvEUXm3bxiKDQE+VvH
	 VfMZC7JJaKn2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7ED5CCBB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588003358.30242.2722351364078354248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b526d456255d4aa1c919bfd97073b2e7387de3a61ecd33510e280ca2884039d
Date: Tue, 16 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765880033
