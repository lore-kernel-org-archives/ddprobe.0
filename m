Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FAF37AA74
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772073894; cv=none; b=SA95yf1l6MTb+fKuOrsJq7kYoCdluh3KR9WpdMUbZvk9MbnN9W3K0TPIdrM+TNC2lcEhy0tXk011EvGY24j8B2d4opitJm1QOTbwnLU+0UwXlkgBnQvSS2ByaDGynQtdvDW7tX9huPg+oWgng4HNIzKrwEs9uvzq7jB3iaK1pgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772073894; c=relaxed/simple;
	bh=M3+SG5a4Uae0RTTBn5LJRndNaSnjF8Rz0iCDPO56IVU=;
	h=To:Subject:From:Message-Id:Date; b=RLFXgEBCjZvUG3h3ediF4nPn5dkjRKf2qNu4iRzmErn2Ri51N4ylW2fQ+N0Eiw38eAHvRinj3cL+vFr8hfEYh9zJVA59GVhTw/kxT5o/5DqxGapElIQQvH+JsUufH2+IuiCxPyqdSkNUyKmHo0AlDTSy75yDxt82Fsk/326mk7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb/AxZyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb/AxZyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A1FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772073893;
	bh=M3+SG5a4Uae0RTTBn5LJRndNaSnjF8Rz0iCDPO56IVU=;
	h=To:Subject:From:Date:From;
	b=Kb/AxZydrvoYBXo9mruGY/bE5kgZv1+zmLrvcsJGjUWvaln8JU70eB0ip6IRIbsTl
	 7ssQY14SYKfOck8Ke2/pzlncBljKG9cmfDbmmX623/oMiAuqdeehSZIE90ukw+yp96
	 AO8qWbS/3fL42YfOatSUKx1JQXRljj+86/HOspSRyJThNAKOQM98qn9mTNl+vXYzte
	 Mjg3PeTKMo2bzhpEt+QjME4rtBPfbmnbHGagjMeDWkQubw28CpO6HshPUZoyL+l9Sz
	 aZfKdUx/Vb6bn8CZUetaHRJOOpOmE51MIPwDB+CitKuwaCMMOCnVlhht40SINhd+uD
	 1s3Q46A7hHyNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D5FD460A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207389358.1947.3281430914099205513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8e334643c5e2a7d6ecbc0b1f151cb5253a4ed4ce383150a665fa2a888be91b
Date: Thu, 26 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772073893
