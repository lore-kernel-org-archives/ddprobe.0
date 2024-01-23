Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B11EACC
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705991297; cv=none; b=XSqjntHokzrrJe75h/gx7Y+XJD5l5/cD/fQwoktGHjSE4U0OI0gQ7GTysMRUtcqqt0FE1mqTf0+kwdKbAhiuMgrPwAdU423az6fuZSdzVcAbXzVRSkyxhpG5kxhp9sEplAQBBtnNkF0uyaVhSkNblYBqEcDFNc0EWefrI9m75Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705991297; c=relaxed/simple;
	bh=pjf6k/15yJb56fhTit/e/xP5CpwVmISxZBTVQIOo+ys=;
	h=To:Subject:From:Message-Id:Date; b=M2sJEnU1+vkdrthtuyAfa2UtZaDGyv7Mb1zAYaY6rYR9RhYR1Di2S0lhM7baHMBciD6z810Syp1SgRO6M+dKQ/nZorvufnNasj/9nFJ5eKkcMAcKJ2ZeHsmWhJ5dkBiFGGLwEHaJkilqd7PcVWvnVrhh2yms9bfi4xpvcedcZsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPgKw5za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPgKw5za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7623FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705991296;
	bh=pjf6k/15yJb56fhTit/e/xP5CpwVmISxZBTVQIOo+ys=;
	h=To:Subject:From:Date:From;
	b=mPgKw5za1iqnKkUtLgFR/iE5pe8Y+Q52Yy8wKGC8eI3tuhwj+7jqUR79JY3gUPsRe
	 b2D9xXcYJRLsDjYlFY4MWD085CtbR2LMSIiFv3TBY5ORrWeKt/PExMu3SKdDwkhqfZ
	 0ze+crBnDGLX4+VdlFHCHdCWgtM9OELLJfMYxP4hag5SlV7OssJIgRlCpD+3IKPNbI
	 n5GCxw+PcGKkvv+oskalQ2ERiJv1j8OaGInoNfeCLa8GH489O9+PfiLqJBE+8b514V
	 lBGbnyFN48o71LkkPiCboyni3vYjqFtWvFyr5xd+y9jCCPD33RpmZnqgvNNPcP9Poi
	 o5iR/m/bbo0pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CAF3C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170599129637.10241.3980490455863279632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92eb9c7708fb54b13e28eb0d13846d2769b084b2a50f5251f91f25b778aeec74
Date: Tue, 23 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705991296
