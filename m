Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72810288D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784407114; cv=none; b=ZbjFwAGu/D/+9yaGVCRGj5woG+wureXvTuTn3yww9SeSHZIjNC09rOUtON1sWMr+z/GiB0JAxIRF3p99mZ5zYFpDVgaOpCJlI8HaC8IzPT7NHWhSqUoqYeqGgE3ZzET8dUw3BlBRQ/LNsnDTYbgWFTsNOJJSqgMbuEyOQ0KCdg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784407114; c=relaxed/simple;
	bh=MybRvvSphe1CwnrkxCUYT2gJNqFvY2dhil50AJLcIDY=;
	h=To:Subject:From:Message-Id:Date; b=IAcbiyon+ocp3ml05QPIO2K9wmqT8VsR2UFc6IPK1iMjc22AKHwvf1gYPDpkItLhd6wsUiE1Vua+1QrFvVSX6oV2R+nmzrooUXu8g/NstbrpgbuHBTQJHsw0txXVEDV7kf5WNoAxLhoCZapdEXzMP7XPpfiYC2Y3Nr8Rh7E8oSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2G24C8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2G24C8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E877EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784407113;
	bh=MybRvvSphe1CwnrkxCUYT2gJNqFvY2dhil50AJLcIDY=;
	h=To:Subject:From:Date:From;
	b=S2G24C8OfBQpzM+SOlFvKBUCFFC/fHgvE/MVWNpMVj6JNZ8QefM4tVL5WwlCh+946
	 r5jaKXBQiO6rDhNcd/1enkwLw7p/r9LI+mhBDxkv9IigIyzvSCEfjW7MP7G+nCHg4E
	 rysBqLw8mnb1hrugb1zjTmLtHEq5hwem/muu6+M25Y16Yupx8uljjNB3L58jOieWs8
	 cm2Kp9Fo0OeCJtYaeW00D3LsFAgRiOIk7IDL/ShEhzrWFcpHth0Pe9yyxW2fv/tmOw
	 rJaYIka9/rxY0/8lcooR/DHgYKr8LgGRBjyUEBumK5ZzlScGAWsEeB3J2biSWEKZoh
	 ocecU6ufM74aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AAAC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440711368.24787.13641687615033867334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d8ac255f74d4da293d9d4125e2dcc49a1ccf65e0b2e8ff48c76c165bd1c9ff
Date: Sat, 18 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784407113
