Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AF58F5E
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747358394; cv=none; b=aVX0fRSnLu4vJoWDQAKwJjB9JVm0c7UFD9oRBaYdkfEPdawqqbwardbP5OzpXQ6PbA/WkU1OG6qTEie8Nw9OHs8XNssC3xXuoj3kGWevn0wkOEc6UCdVrIYW2LuvizeEG/KF44fdaHj2aWVXsc+tTfoAGHyiEU7krEPw38aUzUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747358394; c=relaxed/simple;
	bh=+mC72RH03veu8ty37yHpSqLSttoWz5Xvb9UXkJuz+pw=;
	h=To:Subject:From:Message-Id:Date; b=ci323MRzKxAsnuON36qqVs8KoBRF7oiH3acZlKRVAcxmeIz1J+Ld8a6Myxbrs6A9teS+gvReLupjC2oQAm8YAnAVxIPEMRky8z9Ln94lzz9WZ/dxhZ3w/6MSjjyY1iGUlAak70U9Pbbjn+h1EUJiY+tfzTif88jrUy7hjPMllw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2KRd8EF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2KRd8EF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5877C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747358393;
	bh=+mC72RH03veu8ty37yHpSqLSttoWz5Xvb9UXkJuz+pw=;
	h=To:Subject:From:Date:From;
	b=F2KRd8EFJY2wCTjPi0Ites6FCnZA9XxywFxByQ502BX5LeB7+sTthu8A7qlcxMO2p
	 d/bA3rBAVfDT4AmZ/t552xRXz92xeeoaJgsNlM+o6mrjMOZO+kvZbDHPi26Qpc0KIN
	 AK38agAwqE3WHum6RejkHVABW1p3kWc67n+jdbJwuJr6to2lMnypirz28cp6s0dktg
	 XIYZyAJ0b782xndAp9cYgF+leNbc+F8lRRik0qDV1YUreIGW6YWli2S8qyzja7AY9a
	 I+fbOVpFP6hUkx+XPP27ndvnd4rm+/KcWZCSAM6qDt73Ykkzt5arNvRGLZ9Beefaxq
	 pgktnXfJOfcXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F694C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735839361.7264.9590205192353789969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9c80135adb3e3a8efb1bccc83d0c10f0e3c535a49aa8cbb63e652f8735a844
Date: Fri, 16 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747358393
