Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BCE13E41F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719495263; cv=none; b=DkPgB2EfLc58FWRadKRRTw0ZcnNreAF/hexjkfKTKZ+MV+27dC6jr8xl4Rg5q+QaVUgaNg2gLdevEFLGxgMKqRLgVWMP454suaytq0AP5FBGGxCyAHruO+H1ufCww52wNuEkxzwdja/2tDho69ojAC2geGfUKmFlv5YK05e5voU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719495263; c=relaxed/simple;
	bh=TrocBFrThWLnOCS3wFOUV273qlkwLPbbtkvm10Af2do=;
	h=To:Subject:From:Message-Id:Date; b=eLI4PTcPumhZMVagS5Mcoi2+IKd1hdyBSj1jNzRxvCY3a0RbvPMbfO4cVVdYR+XS86DgFKNWSdgPFC8jc+wCAFr08oR/5lNuhjDiyuP9yPfdhxyh8goAkPVdJZ9S+keS5jpg7WLvfYT3XLbNmVW8dI9CxRFZf/xe0iFTazJDma4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNBqQWYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNBqQWYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D464AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719495262;
	bh=TrocBFrThWLnOCS3wFOUV273qlkwLPbbtkvm10Af2do=;
	h=To:Subject:From:Date:From;
	b=QNBqQWYSid5H6NPoaJ9ByipI+gTWFBZW19hFNXOcQhA/zPSB3fmZrzmxQC6snIyuj
	 d48UQg50ooZeh/1N8ZOPJWVkPr/IquHLJgejyFhpkKgUVeGrgT0tDipxnurnXXcWh2
	 em+7WO5+bAOpIKWk6Oduq+tolx2XyKFyLaVk37VF6zayMVg57bxsc5DCOdIb+emEk2
	 FwcHBNiDmy3gMydp3exs0cRGjQWy7hyyB+gZgqt+YqaBdDWFVok1wUFegApLfgrUXy
	 8ZNTbn1wN5KKl/C7mfl3fanThsMydfXZgx2gVfCXoCGq3jz9PLP9CNumcOAUyAD4N7
	 DIBAFhTEXiTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23A9C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949526276.21249.16955055316437026489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b03f43b8b8b04c24ea7095bf8ef895a025bb2de00a8fa05ac2fcdae9dbc2b2
Date: Thu, 27 Jun 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719495262
