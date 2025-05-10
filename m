Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5311F03D4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746842995; cv=none; b=UkoDMx86HlQrc4sF1KJGTrihjDw2pMyTeSP1u+Hpq+wMRVt/i6niUJs/iQT6cPwQ1Cq4mTcc235aVIWfXeFWVTAc2eO1u54yBNDvj2NTo1/Dx39qn4iE/YynMXzXF7KiFX4yG1bBtBROXVsq53O4+NOJPRJbGszd0clflgbNgvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746842995; c=relaxed/simple;
	bh=5xUqh1TlLi32wzFY9geMdfyFTU9S2gImlz5uzqTn8e4=;
	h=To:Subject:From:Message-Id:Date; b=d2lf1m/28ApQtRtJ69I5MznQu+unteR0D3Dzaq1QwfD3/P/A/0k9ZqAMDL+80KjQskU7wEfFX7OlHDoowUS02uGz0zp/pbAgrCCKWCxaJp+sIWAFHIKucxNt4OEV+yyy9BTAEumNS138XZrDH2TiNU4S+DynMCaBVb+parbWnfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHr6TkU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHr6TkU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF447C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746842993;
	bh=5xUqh1TlLi32wzFY9geMdfyFTU9S2gImlz5uzqTn8e4=;
	h=To:Subject:From:Date:From;
	b=YHr6TkU74m7VgilFOHzD/edq9PdVIh5anvVbCDQ4khrFHp9y928wx+VpTFDp32BfL
	 CGNnXxSiv0YYwLg2vqq+sfk9GOXRRdErK1HWzRuhoOk+G3O48t6T5e12V5N1EAMZyM
	 7tflhkIuAoLIg2BN1cqNX0pamN/gxmX0Ffj+5+Hz38HpgxaKT3RGtVmmYlAXwQD+NO
	 HbjageFr/XL53XdOAIHGTkDVFIxaqhRKKNEz3z3b68nRrZ3+vXYIVTdXatQeizMM6P
	 z76LlscgSkXb3kFGdQZXSETonRO5p1XtnPfimw0TpfPKRJwUrRBq82cNuiTao5CLdC
	 sVroy1mmwsQ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6DFC3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684299362.30778.6162785965309089195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a78fced7adbdc3b2bbd42fd54cc5060ea9ff1929a338edba408d81ddc98dd1
Date: Sat, 10 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746842993
