Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172B5233D9E
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790997034; cv=none; b=NKCZL7RRCb7rZ2Fl3rdQiky1bqgGjAcZTLPwmGIRx5dhqS6gu0DlhpKqrUaEzoJ3py/yLLst3pllqteFliw5ZuiseoIFKhNyVp4QefAGIM5tB6jVdXGPFdp9iofDDCEfkvf4vyPwWZ2yeBTCDBlIx0EHvgA2zB9RjCt2zDWKXI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790997034; c=relaxed/simple;
	bh=E8yc6ft+ICj8yz6Y9iMsGFq0YB3ZXO4DGvJC6XFsN34=;
	h=To:Subject:From:Message-Id:Date; b=BsrMcNtCYBatJdVMDqweTXd83DbnPJnmGqPSo8yn6i/T3anxzQQ66CKlRoVw333bsvk+u1LwNHoV2I24Pacuy4EFqh3wnzsjM1kKLJoVzVq32zWfxsvVm1g8Xb6B+QFu/dXPu/vR0L4L8F0xS1SG3L9cVqFCY/Mc/vLzsgFZjj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgGyrpj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgGyrpj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38E9C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790997033;
	bh=E8yc6ft+ICj8yz6Y9iMsGFq0YB3ZXO4DGvJC6XFsN34=;
	h=To:Subject:From:Date:From;
	b=WgGyrpj8GD4gDNGNMChL4TFGEwaoPPINNvy7VWDgrWkOJcFM59ELUjPGgbtVVPJcG
	 fqwhY7IfQWuz/7bIIE2UlI9gT+6clonGHuQEH5rdCoY+k3JbWMvHOa8wrykuzpldTa
	 F3MTPlCrRZYWRlkQ6p6G2QTx49n3YgukntHGl6wRH7kQ3/OHn1eUdR0DbSVCZmGInf
	 rbO3oO8KnpV7mJv4V0+Kf5BLXWgz+ThKzjKJ0+m2xY1T7PN3cdBKafUAYh5Y7zAbdB
	 6uVKyeGE9KzlhluKg63Sc4K4S/hm/DgegD89QbvjwEvZH+EsMlLm3846KzdvIoDOPL
	 Fphr1u7gPid2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0CCCA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099703368.18839.4086466952278342531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab1fd154b0e916990b3b729fff0ddd75829651119b39df12b6380d9a0be53b2
Date: Sat, 03 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790997033
