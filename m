Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAA42882AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766504634; cv=none; b=sVDJwRM+4AyF68mG2KklCJmWbTvsa1Cbyy999+EogQtrc0WF7yGxy/y/cUVSoUWOuxfKzxWLl4qkjomQeekqNrG6cQ56D+hKPJVRkNYT44rwAXuI56axkPUHHK974/+v8vY7YEVGxwx7Glx5+4g6SbLS3zxcb+z8/3Wjy0WEZug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766504634; c=relaxed/simple;
	bh=ZLTs8dXO0y97VjgOT/stsT2o6HXyt9brJghgiEen7yE=;
	h=To:Subject:From:Message-Id:Date; b=Ai3qh08YjabFvPob3tNNHDBJtwwPU6VobqXry5yvJS5lof8Ihvb6i2/u7zhLRmWMBACOmSahzb8aXMsVbj0rp0vMMEXFZpNHaYfv+xpCtiagIVKjN4R+kmbX38JtgjoIfUZYejsW2MlxCusBH8S4pEi0HmkX3B4R3/QDwTs8zMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQAH0JMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQAH0JMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E167C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766504633;
	bh=ZLTs8dXO0y97VjgOT/stsT2o6HXyt9brJghgiEen7yE=;
	h=To:Subject:From:Date:From;
	b=sQAH0JMNLGI52jannN1njxlW207tl/P40PD/8sNDMv4mfv7weGiy2fJ7X+QTxFDEe
	 HDZwX8Hm2Y6tKhncgLQBdIUGE3P0j3I5OJpVRuI1mXkuumB536v1ABsfVI/yr/D5fw
	 JVhe38cgwq2PKIDzbE6i1376RzdbJb07hIXAYI1kFudpTIzjX52mRYnEpwBdVfQy4v
	 q7OYlUceZqZmy16FGHtpAELi/HXl3LoWO02OMsSUhja+HaVkOa2fsADrKJRjMjt7zX
	 4F0ehEfLAlzwRNqNZDLDt46riCnf6oDhlQvt/8W8feM3mJt0gnmPpl46rj3DB4J0iG
	 9ORPtzyLeoejA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9AEE6F09C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650463358.8551.3164473087922337568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e37a4dc797cb9caa0d62f8899f65eb3240c7b2fe0c184efbdcfc51a08b516f
Date: Tue, 23 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766504633
