Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417819340C
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729304754; cv=none; b=khrNWJHqCdF+H7RDlBtIrh2h7kcnXwv/13lSn7Ko7boNhGdZ8zcK9ost+gevSE239VwKHODbafJWGKVHAhpPr6GOwxdC1eUwRqKtbrqYMb3w9ACXHi7RippttTooONxIxse/9GMu9XAT0l4j0Qp+54hbrfouzWP3iFy56FYvas4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729304754; c=relaxed/simple;
	bh=swzrDdLlSdF6vD7X2XO07lbh1mEAHXgSRGcLDcPpMP0=;
	h=To:Subject:From:Message-Id:Date; b=UfjDrGiQvG7qsY0ck8OWAAaVh1WVA6V5VR20QC5S237qBVWyykV5D6pVi7L/jybzXPBQWfSJBRsFYtZcuXwaH8GuInasmounsLKDXhOuxHWLzlQFNDUt45L0nQQPT0/C3JhRLNqbqyU/XlY63HTxpv0Ddc9qGypvw1Pc6UvX0r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqpobCHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqpobCHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90EDC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729304753;
	bh=swzrDdLlSdF6vD7X2XO07lbh1mEAHXgSRGcLDcPpMP0=;
	h=To:Subject:From:Date:From;
	b=BqpobCHALjVSm2OEvxiZYierRvkK3Q/nTnvshoLjZljCWX4aRCwcTuFsWINFoKSsO
	 I8n44+R7lj4whwpbuHGUph0gRLMc4YzbJVX20Rt9Nfrlh60ud85s8Df6quO8Qqb34z
	 uND5fcD2eBKkxQ3/VjGhqBSIugpn0c2z6UnBOeOF0hDDTALvETSwFn8h+zXvh0UzOL
	 V5GafHsvpVj15Pwl0reKzXbWGcVBL3l50mg3RshttKf69QgebyKDVuPWz3NmJrTJ35
	 cmXr6xInJ2JKhkpSeOz3wz0bRLGpdAkoaAqpTKpOTrMPyFYor8RhgNBX1vx2UlzPai
	 QtXkn8G4BOR7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1E5D3E1AC
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172930475363.11320.8049045811312709561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5d3a032bd4ef7284d5a6635cbe588e7c38a458d55387ae101fa39d5bf6b999
Date: Sat, 19 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729304753
