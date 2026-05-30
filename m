Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932642367DF
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780176874; cv=none; b=boQMqvBOtvUkUsrKxjFFKjjXV3TLGp3llW7M8PiHHOykNVKBEScHnsIFuAmItXMCkNvN7PsPHxh5170hwttu5z28lqHRtsWGgDdzd3CvhPVxK69fhMmip+9Rqwyk3ZQxiSIYg5au3rF28JJntjUiE38UsPZvSrRrbk8Rlp58yQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780176874; c=relaxed/simple;
	bh=V8pVS8yudG3Xv9OtsNWcn21x6P/KYv3bG4BuFGva5jk=;
	h=To:Subject:From:Message-Id:Date; b=KvmmrgVAQ6lGLytKPl6u9Iqeinlm4F6RPLl/Lc0+r2Nd0Hmz7be8sNPJb59ucDTiidwkYcJt6FYnyIJQkDv8acoIUd2Kd2CpJbPnDqjvJLGcc7c4VzwmOu4WLYRhG7a+NDOrYAyIbdCF4/7iVePiv669bbLWKekypMPgdzruKSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsvwxTW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsvwxTW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80D9C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780176873;
	bh=V8pVS8yudG3Xv9OtsNWcn21x6P/KYv3bG4BuFGva5jk=;
	h=To:Subject:From:Date:From;
	b=fsvwxTW/cmgZyfRG8/bNLO2n+osijgOGZZ20tFdvFyMRXV5KbwSJ+w7mfHblChge+
	 sW5UUHnsbAS3v1e7USgykvaws2Jq9p02oRlnpl4M2Wp+R5+jLQ00bczCZPM4jxoeJv
	 E4lod3GsHP9EAPx//PTWASUNjOb82LOPeGCf65IRHL17yIZKsF7cp4pz7ySKyaht/G
	 05QEskFfROcdtrRh8KHWIZsqPR2KmFWFmiXT5rQGi3fxSvvBGGetI96etzRXTl+QlF
	 dMBxAoo0m13jTIOh233R0w4W4Q2aBMUU6xqb9pVqrRykKF9ubeL4USAEXhUAhQnbkm
	 b+oGgNYEWv4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D5FCD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017687368.21558.6251041980486528570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd974db167180a09f69b41516a156ffbda4b6039acc6a06df1236db7afee1a9a
Date: Sat, 30 May 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780176873
