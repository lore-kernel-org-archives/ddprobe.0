Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097EE27781D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752327594; cv=none; b=Xj3TSvvenAi1vUa9Fzp285YqbiggIEbLTf0Ru09XTLtqAWzsoyp8lW0MHinAxEZacD8QKad4mgzIaUNoveqK5v5cDtz2uCRW4/iblJ00wGe9n9DAHqORpmgfoMPP9F5N9+xEhRh8JDXhQInaKHEhMlCzXYZFNDTfzAafgYGFXYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752327594; c=relaxed/simple;
	bh=sqDFdQPAvA50Z8iGlm0hyYn+Awyh6HB5CDK4TXuhxiI=;
	h=To:Subject:From:Message-Id:Date; b=baR1vr4FgED91U3HrmiOqDmmojOdmsNDFFeTo3SSH/SBxnYnQ6hNUjCBT7KsdRAxysgm1geU+K2pMlSZrYuyv8+AyIwoFoPXBiUmgMaVnjrvRd4geNbc6req0SU8ElLhNYXaG465oTYN3g+XtvcQVkhZLuyiKSkEUrMhydPSkDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdMthO/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdMthO/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB8EC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752327593;
	bh=sqDFdQPAvA50Z8iGlm0hyYn+Awyh6HB5CDK4TXuhxiI=;
	h=To:Subject:From:Date:From;
	b=YdMthO/IvjFXtYyLJ1XxgdoD5NIB6lFFh3dgetNz1Ureh7wu0R6OKPJMqHjbraoM8
	 5tareF9EeAxYqWoytS9s/w68HeWyukC568R2571wVdn8LJoqSDTOShZYAiHfsPHIfq
	 UH8eLI0Ku5l+gTuoKhPQ/J7QtwlVomO7QabCmNk60NuONhva6vP6MWSA1mcNGrAVGc
	 /YC178Fz0W2oWvctvlC9EvFtLWKZJBsk3ScqcGU/+K2CMeUm077C4m8vKrJ7D6rMMt
	 XSMB+0Jg8gyTMNRUxMGOsWs9OFo0cUcZYHKh33SHbipVxaQmq48iZuABIlipKQ6Yg0
	 kN37YikTn53Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FAC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232759357.1217.12705790997062481888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4785dbb898b3286ee71c633abca99e4fddfe111b20c72e955be1c169f79178
Date: Sat, 12 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752327593
