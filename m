Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307D56FB8
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717120463; cv=none; b=JPdp9cWkVwyf9gLXYisvUNa/1+th1HvNSXiSOIRZprkBfaJSCpjVwgfubM/FO4opFCb3+5Xa9+JuSEyibZfMgjrJnX2KH8KB2SD7H3oV+dnKL3xAeDcMhi0HgdOFA+nitBfUs+RpGzxKAvpRLRu4agYVWxAa8JHh7tbJRuvt9ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717120463; c=relaxed/simple;
	bh=hYjxTGbOI0gdWZhy4sQIAfz2XsCzHA2NsN9m6wAdSQ0=;
	h=To:Subject:From:Message-Id:Date; b=tINdCNAL+9IefpbQ4jBd8W9l7Xfn65L4mpBPFHkooJUQKk665wLRXE5U/XNh8pAb9ZteDdF008cBp2ZdP6/3a+EVVHVTLauAPBXO63abkIGATpEN+0OBfJXVFy8VwDc9QEjN52azBZWl29MtGCuo+Y1NDDMWIqjHdAxutKTpYig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhBVeAuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhBVeAuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79BCC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717120462;
	bh=hYjxTGbOI0gdWZhy4sQIAfz2XsCzHA2NsN9m6wAdSQ0=;
	h=To:Subject:From:Date:From;
	b=RhBVeAuWNy45kNVpstbnFmgseRv/Ze2dtfb/RNal8oeRDfXSuVnquYHTsrQL491T4
	 eP9pOlyVcxW2TQiNlOngxXyEob2tGi5zhqpQr1qq1WoLBOsmIELMrEm75jgmUfGgFi
	 OoaUUM5VDGG+U8ujfjEk6Czo8nkDYA2h8O3Mfz9M1tpe13FOpyvQP5/gt3VXj7FDHy
	 E9ZihulUGAlvkeXLIgQv+HmKKMSfe1opoY4Atx7CDM3mvUYV2OP1SLEqEB3C8tLIUr
	 pU2Q6HlGGxMauFW5PmX0F0AcXgpQSCwn3e+2BzZVtvLiMtHiCaX28teGe0jkJcTItR
	 lmYxllQLFi+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC0EC25B76
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712046281.23185.16649212518982748090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b158eef8a0ab5a619ea432572b835c1a500f88e11dc6a7a77a29c802c988597b
Date: Fri, 31 May 2024 01:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717120462
