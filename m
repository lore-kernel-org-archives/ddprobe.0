Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4352931FD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784949034; cv=none; b=scVJjiGWxPh26St42+n/+Rfva/jddNSp1Lq8KFPLfkaGcE9eNnhNv7N1jnTTRuIOR1X7FQk0uXfe+8RhX5p/uzzRJP7XnksrMUj7QVbqje5CiqkM3DvGA7TaZo2jcshnAOO8Cuuwj+ktoWHqsY9V7H6UQN9D9QwjKjsGBzjZnCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784949034; c=relaxed/simple;
	bh=iGwimsnIvDrGbcU+g6YKTJ204qflBu+Iz+30cbfVfsc=;
	h=To:Subject:From:Message-Id:Date; b=oj11xpd9Nj5CNxpmVFmohSUhG/WrAxVZ0exeXcH8tSCmsWIoRQSbQUxodIusf5RqGMI/ampsmHbn6+TyGF2LfxdQKikoco2EzFydqQtqJ/KTZz/7g4U1IIGemV0V6p4g1k+snaM2Bm+vfqbmQU75VB4Hq38Su2zwA+NA3jM4dDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mG/59vrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mG/59vrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB46DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784949033;
	bh=iGwimsnIvDrGbcU+g6YKTJ204qflBu+Iz+30cbfVfsc=;
	h=To:Subject:From:Date:From;
	b=mG/59vrZh3waIGNZlztyfBsFdyyQss2VttJDaG26nS9NI5L4ZbA5HkNonzzxEcROA
	 CtVwlUU9cJC0R8A20TKnAtEvJsrdqll7fp6pxHRGnRUscTYPdf6rOVmgEsME6sUQQC
	 05FRA5VIWyH6MfnnbrzTIZHydXwCp30asHFZRNqbEZH1v5z9nRYfVShsIsxW0sxHuk
	 xZIdU/+p+Z3WEQra++DfGIHyCDQ2oVo1EcC1ANJn2o9FVJFfEgNtDe+5Jo/y6ArS6r
	 OnnSp+bChu3/WPZcEVLkW/1j6rH+vMMN+HP8abiu3cUFYzehib+J+4PQfUX+X3KdVI
	 NSSSS8aTrYglA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B169DC531FC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494903370.29916.1833251642859370179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645984df21fa0e417b9f9a73e494a5b16969ec0aff4a860306b4b94d188be16f
Date: Sat, 25 Jul 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784949033
