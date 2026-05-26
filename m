Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F1C3B5319
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779768154; cv=none; b=tzkAG9oyPpbXMMKS5AA+7+JQcCgyCykFSJpBNGKghu6kzs1QDT+byfAHuEXBdSpDHOx5Y0D7UsBHW6rC3SatwTMBwLsJmgYDhl627TILTYiTHfefPzJxMbvOkzQYgqeJkFspjXhqNkvth9gkjAdVNUN6BJBt0Jk736kftiZqvqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779768154; c=relaxed/simple;
	bh=7kgcvugMV6btcWsIOGm4h8Ew4ioDeoojPxhJkmDuhNA=;
	h=To:Subject:From:Message-Id:Date; b=ARgRRnyqlIbbmmjZPv2Z5mubVHwQlIFzi65MWsKB43/DSE2AFrVM1hCgiC1/olL1ox9oFVhZNQT2wAKmTnpLgBe4OynWhlHkrWz33Ho0RG96zxBRGf1iQOJHkvKPTdI6hDdLlKYFuRceAgjUQrPo51sAIroAVE45wdexDWLQL28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nve7Efag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nve7Efag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15C2C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779768153;
	bh=7kgcvugMV6btcWsIOGm4h8Ew4ioDeoojPxhJkmDuhNA=;
	h=To:Subject:From:Date:From;
	b=nve7EfagqMlgYBxFdVP7jxxKHhFq23usOQCqhrnEmnU4Pg4aVdh+q/f8gABNQeJok
	 0JyvtskOdMFn6UTJu+Dn7DpjBzbYbsGjKoPIN/YO3cmO76UwzdbOtrkdgMpF8sPvJr
	 +Ddt4pniTS5BvsJoe4fohJ55tgJM/GvpwE7q+X5JncU80oG2WD6qirjbkSI/lL1S4J
	 iR9mM8rlqgBc9LrEV9Za3o0vSUww7s0agkVSf9hWIzpflp+8ZEQj2X/aK9UT7/qKxS
	 qpRaRTsV7a+A4HyTrjStMeULeI5a8jliEhm4RxNYjZaVgfZm560jC8UTeb++XrbIH3
	 sCxZthmdSM9QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9343CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976815368.19805.8864403846677682984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2c1cf83da5cb73de9e6e12069c4d16b067a08111ea31005f6f36022865394e
Date: Tue, 26 May 2026 04:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779768153
