Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8F8223DE7
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791037834; cv=none; b=liGyfKSJ5CXUGnvmmpY255uo23kTanMK75N4mgCG977CMc1i5N+xl/UQBUJH05VO2Pk9sxoZ/TXSyFTylCaU7GVwXqRIZGmcJuUi570O2e546Wy4XhZxjdeL2v8vKoYDCGB8T40VHH+iuDs6rK/30hZDfanGPheLj24MaueBnQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791037834; c=relaxed/simple;
	bh=IUm7dJN5jZC9bqgSpnuRY164a9zjwijdL1vNZRzDAxI=;
	h=To:Subject:From:Message-Id:Date; b=AZNrXlaw3g23cTPFeZk5f5rzfBDd0RFlGWwyjkSD/4yIIuQlFQGRr5ktGn1hO0mkw+vWqPDXt8n4TpLFiBlupXJ22bp+pIWlZSMNL7f9ODmBQWcN+9CaZ3MutP29JXmqaPkbw5FZG+y9wP/TyK1C7pVPwXAVufUFrL3eeJXj/E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm0ZXGtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm0ZXGtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42C1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791037833;
	bh=IUm7dJN5jZC9bqgSpnuRY164a9zjwijdL1vNZRzDAxI=;
	h=To:Subject:From:Date:From;
	b=Lm0ZXGtd5uqp4aIshpdIEDqZ5Q8/wkZ8OWBw3RQKVrNl7MKRvQ1/xX/1IHH1Y5Kql
	 JJEXydd7LfxpUGcJ+a/RMt4Gs7wv81r7rUhgWCfE5KoBLDTLTrFASR+XEyeyEctr5q
	 dRyJNlDsPUKokN3k8PDM+BOaH9IAihZpWG6jU8/mb1imDIB4j/0bQzV7db4fBfZ0WD
	 XbCzJa3dFyxYRUrnM0GYnilJLHL7M8nQkDhhBxfxpGUhbqlTcM8v1VOnTKyyVcTjxI
	 jgGmnC/J6+zCT3UbZFrYnY8eNpQ5F4DePh1iEUs3KOaU8JWWv5xgIOnQIjmWtGeF8V
	 G5wNgCRU/X+ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF376CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103783370.6003.13372975278346762762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda5bec94be638881a73f7d7f0dad8da011fd7503baee723f915b7f57d23c8d9
Date: Sat, 03 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791037833
