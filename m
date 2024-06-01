Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5806C1103
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717236263; cv=none; b=soVDwatE+3NPJiu2wArvugbCWWOxY2XIrz6HWG7DikDH9AhA+b9ZX3DhTFwkNEQd5yo0aB9sPb0lQB8Tg/dSxS4Ki7z9UJEvF8TRaMoqV0epqLgYUEC25Jr1sLlk8Cb6agcBiJB21+Saa6rOj0zu+O/rFob0p6Wi/TpchdBBmWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717236263; c=relaxed/simple;
	bh=FUv/qZeHSTG295GuYToqOdQK7Qpjue8wKlX1bnd2BSA=;
	h=To:Subject:From:Message-Id:Date; b=UPQi6Z2eAlBTmkmHMSfdfWtXWyInrL0dClS5/IOeZKFJpksjPYL/YWR5akTq3YAb1ndH+RHLSRqhlH2q0o0Vgws6PjKCWix1LUIQUPASzpLaBLT0BJmyjt1Ga8oP78C66RFM0KrlK+M6+XigS9rIf5VzXHkREGF+NLxH/FRE8+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+YmVoL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+YmVoL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E5CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717236262;
	bh=FUv/qZeHSTG295GuYToqOdQK7Qpjue8wKlX1bnd2BSA=;
	h=To:Subject:From:Date:From;
	b=O+YmVoL8/4WDTHJqj7T2TJewe11TEGo/2+3DRL2sxUz7WefUTZCdDfVFlGqSr4GF1
	 k3zAVKH8m6t5bGlt0cxYwQtkltXffA1rOSn+OytErsajoZNZm7C38J6Dt+/16f5inV
	 HJ8B1GrkYTckXHmB7EXwpoSqYhliMJq+Xrcgz3ubKFxSeJ46xlz3gGc6F/t7QdZqVx
	 SJFAEqROe3tUmMzCerhMrSTNXCeHDSgC6Tbhm7T5nW6pLOaQILAdZnkdyY6/dRaZ0A
	 cs9x1L8PF5/VyT24mrOpEEGV3ST1ASLzYWXlb33y4CSxOLHfHwmOCrwPvpzgz17wEa
	 BnlphKaynqiSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CAFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723626278.11740.4293816163167663112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5b82181f7ba6b802ac0242470f50d532ed1d219575ef7a3e8cfba6d64e2ee6
Date: Sat, 01 Jun 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717236262
