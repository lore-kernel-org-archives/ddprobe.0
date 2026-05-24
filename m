Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381671917F0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779636754; cv=none; b=sfHcbTrKlsMdjR9rDn5XG6QV3rYz/DoVpMSoBk7CTeq8jrbZn1g+JxAbCXTEwt/T06wGjhNTyz7Brz4t9oP4j4QVAULVaD2LGvAsR0CZawslRYKxhtjbHsPWmIwZHhoVqpo6w17MlfWc7yhg6Grsu3jBwEa4yJ2ci7m3NIUs51w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779636754; c=relaxed/simple;
	bh=qRHl7e346/StQSFdbWrFyQ8Wh/0CWIwsLJblIuE4hiE=;
	h=To:Subject:From:Message-Id:Date; b=KxZh8qixVNO97bQ2M89GXMFrNG8fDP+gCEukJWAj2O0Gq1B7NTj+ClwGFUff4tjllLwDbsBjd7DtkbtX4TmHTMcPdqVWrIpAFUOGvWz4sT0eosr03n/vMfbyWLPQ/o6rhiCeyLJRxh70O/8bChV7V3CtvXoXd2DJ2aDCunHUy74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm+ykAff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cm+ykAff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA942C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779636753;
	bh=qRHl7e346/StQSFdbWrFyQ8Wh/0CWIwsLJblIuE4hiE=;
	h=To:Subject:From:Date:From;
	b=cm+ykAffw5ACTR41UK1HEwggoOi8AMOhwXDQPf9xExqYnmu/aUpIOql05sLqTGVow
	 rlBGuBX3zO2eusD9XbjC7SIprhRgrlIR1erMFuVMCtYeDPIfu+Ou7VGcWDzNf1TTB1
	 qPWMexVdnAThQTngcZrpsS6GLC6+4J3TEFvwcdFf+qwv9728RxTN9aKmNBlQLTBR28
	 lwiH25fnlR1jP++0AKv8rhxstAEhBNV8eaQ487Vmcbs0KWgFHW4ZDAMRnCa232H4Ib
	 5I3N7aaIgT+hRWYk6HVXEGvyQknYAOPfg8LW4QozfCwQzN8nNcANNwoA4McHA8kJqt
	 Csf6TolQ1INZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD581CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963675368.6205.7836731351875787298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1778d05d8ca5c579846a3930e9b006c042d6545a96b8c68ceffc8481130382dc
Date: Sun, 24 May 2026 15:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779636753
