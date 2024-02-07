Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F3446C8
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707324497; cv=none; b=ed+hXI6Smzww7fjeBCK8zqT/WskHzBMlD2LHy5nyEqq8j++oB4XEIdXdUbg2INMjFkIRNbL5xdNILK6UGsP53HCD17EejHSZ3EC5STFMWeJlgPpjrDTKuc7hgKY/UTmonqyKYfDUvf3ni+s803Hronl/yRBkpQCmkBkV07TpBvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707324497; c=relaxed/simple;
	bh=txp748E7OaMr9IawWbvltwQhUtKNEuGNYWmUelZBYbQ=;
	h=To:Subject:From:Message-Id:Date; b=sFvI3u5WyAb7ypQJrPQcNm9EJLF/OowvnvwrMMXS2t6rTSIC9wRBzgTvzmEKuo6Rb0BNQZJl6FeKentEjVyEM1cVWSuEdKCDi4On02xp4F2yHoTKzxys7fgfjYXuNMGS84nY4LgshlGy1AjXmcpyondAdK1VX68zgZC0XMe78Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mI9R8zHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mI9R8zHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8043FC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707324496;
	bh=txp748E7OaMr9IawWbvltwQhUtKNEuGNYWmUelZBYbQ=;
	h=To:Subject:From:Date:From;
	b=mI9R8zHphMGEcMoMuIF8GOGkv45kxBEeROIUIiA+aE2TjUbAHgilmNwPEjSPsOhMT
	 95h/W8Nbuhp/nfXrYQrXJ+OXSjIFBp5ixtBEuimtQZEANs4OCSItKHP03B5KNQuN2g
	 SA2ny6aHUvK3IoBPFY0GkEMZbZrcZlzEyb5v9OrAGJ9f16VNbmcTCEyXBrurIoLvbw
	 RLuOD4gE8SPXWV3BSYrxPoWJQ+Hr7GRNDsdcB2jqHbPfyOpAKoQdujQetHPn/BMIA7
	 6SdeKK8daEdwoS5yHs7aUPfujsESdl5T0Jsn827meg4Re4EVGlK84gHr1Ga2Ig12kk
	 ovsNJj2xdqQHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F540C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170732449636.14478.2700073964105412732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca36401007ee8bd7934e2f5061c3b9b91bbd5b742d73bf1112bf47642a448d72
Date: Wed, 07 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707324496
