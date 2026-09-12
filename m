Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F5C3515C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789247435; cv=none; b=VSWsb7XgmNogvc8m5jdJQI0Vub+1tAxed8EqIpMzRNRTckwl/G1ABMQe/QRXnYz+MoP9UBHUPsiVIJ0clPQS/lHZw4/TxWEtXuuqngqYpto91H9kaHaU6nF/xaRCz53R5UD68jjakfRdWm3qTR4nlyf55pF4CMVahlLuupgE0iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789247435; c=relaxed/simple;
	bh=DzNYje+AzjeZ0TyEqY/5+ZDr1MZ6fOG3z66qXFeizWw=;
	h=To:Subject:From:Message-Id:Date; b=XBjjGJBG54kZg5Np5R3R36vyPnZG6jnVA4eK0xCd2ZCy2nRlPiPRD2wX3lOt2DOt63LOPytRan+J103N4Wi8GIgFX5NDJ9nwNZTC/PZDwl0y2a3hXO63v2HNXC2GJSVEbo01bBHaWNoEPcD8D+xi4T0J2wt5oc0QRZhh6t13Y6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpBLEEQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpBLEEQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02BBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789247433;
	bh=DzNYje+AzjeZ0TyEqY/5+ZDr1MZ6fOG3z66qXFeizWw=;
	h=To:Subject:From:Date:From;
	b=LpBLEEQ8fhtP25tJ9NkpqIU2t0DSeYPhHenqMt1tDlmsi/iZA6Ke319QXWTGgu/cR
	 4YKsDCmIoObypGNLowNXHaxJIyIW4wQ4yhvD5UcNbELC+d/YRlWlffGT3fjB4uzPbP
	 q6pIIY1k3QjZnQx1FWpH6BAC67y37cPyHZ1jox/OCDzQz34x/+1qHArIpDK9Gnsyow
	 ni6V0QKEDOqi+MnV8SQbGLyRTKhzatyZchGI617udPGji+rJ1x+8DqPsV98IBXGlwR
	 TRNgbpa070nLP4E4SmYiQPJlfYgDXQnchISDKWaety4pdnwwSe+2p5LvvOZR+q8yId
	 FI8upvP/4cKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA799C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924743368.28118.2769449271098752805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb0b7403aa266f8419bba49d35d6138a5b8ae8e8954a71894cfd7b84dbfc5cc
Date: Sat, 12 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789247433
