Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C011DFC5
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716046343; cv=none; b=BFOI7eHqASghiG6iGQBNoIWFSkGx8UOjwXQgni7tT9M3ozmFDzBFdrzaJjcdKmOSDXJKrSS/n42NxukZP9EATVinGm4UkH7l/jT7jiaByhafvMkqjuw2qcJIp9QwNSVbmb3+Ejw2LchaR6RjbI9CZZ0cYOJvEHNMwedtbjDcCmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716046343; c=relaxed/simple;
	bh=tzIIhmxcnLP6DIM9d7BMi0zNf5ymkgkp6TmVPHOxD+w=;
	h=To:Subject:From:Message-Id:Date; b=GZWwz19a1c65st3VBjS7grJQE0eITZWdkoJFV/lOwHjR3CSB0T3lQqSv5zPXu8n66lS9WmSwergk5t95RXmSnoiBl5y5lv/aCWyw7hme9yB+/ZqqJZj7cUk7H69hDP9hJWS8QDWvBUbrAImoSIi3C1hFoNBLaUsQKVMd0l3nNTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pk8ELSbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pk8ELSbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6945C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716046342;
	bh=tzIIhmxcnLP6DIM9d7BMi0zNf5ymkgkp6TmVPHOxD+w=;
	h=To:Subject:From:Date:From;
	b=Pk8ELSbbOSq8bqGTTQQAxPfEcAdmFM5dXjQ1cUkDoIg7xQUFcEsqQ2fc8nB5kJhfg
	 81iA/eGD1YssgNkicx7uk3kt8D+Uhgo35q/pBAfh1Q5BXd2MV1QCLwcJflmspgqhQG
	 HBK4CK8YVrn/Fs6emzfKaneGtwS7VSiNpj2ThZWNKwtHkOADtum+rggUyst89vLGsT
	 fkhlcUTerIVxwXWwIstdICOAqnmzXFBy5PdEpKmoxlk0pvbGma+9uSqU+8zBYCPZFq
	 TvN+lp15pSaXWwhHybZkCSFmLcTgdC43b1NOUNVvjTb8pszTqIF2dWb/nXTQ/cOOPy
	 5GUNOzZmEIfIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4A0C25B75
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604634275.17858.17291429016188100878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfd7b7dd0e376aa828636249118949c3ddb5cc2ea697e92cccbdc5156e96082
Date: Sat, 18 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716046342
