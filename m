Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2360C224B05
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778042254; cv=none; b=sv83aGJ+z+/WklQ6YnF2K4kbAigXm0IoysmyfEpkAh+YjQZcMyNC10vHvPNxyff06Ag1tTZtEfeYJWpTt7Fc4Qs95LEy3EQzwVInok8Pt3YpGGONvv+uhtik/cO6XluxsF8YGnuIL2jAdLRCO2mccxA9GGnTupcjTzMtau2F56k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778042254; c=relaxed/simple;
	bh=8MKILkI/8OkMKyo3Q+H4VWyoNYf4nFySqG5R/T6BLy0=;
	h=To:Subject:From:Message-Id:Date; b=oQwwREe5HIh8Hqz6yo05AbT8vc103HOw0xvSTeFU2YKIkb+IzIxe5+h/vKKUuVTyc13Wh9UEUh8npUmJiLc/Bc4gPsw6rU+BrF836Y312eDAKhKOazizbAPtx1I0bJDk3q/KykTovHMNx605ScME+gKCLSO7LKygS75oxaj1gko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1xUsi+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1xUsi+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC99BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778042253;
	bh=8MKILkI/8OkMKyo3Q+H4VWyoNYf4nFySqG5R/T6BLy0=;
	h=To:Subject:From:Date:From;
	b=P1xUsi+vKbEM4EjRdOzeUUmKzp6mV7T4XVVTbp/5m3S096ZhmF5b1Dr4poBDBh/pD
	 x7dLfoRMG6weJywE3pka/qiS/sD5PF6N0Gp7zGehWeCrfaYlaUPr+pNhWUa0qMYUkR
	 JTOIF+qCCW36HDzcY5ulaD6aKgcyKVvlVrctcQQrYgWPduZe7urjYTDUU42AFUslq3
	 Ty3n4mFQACAnrEqr5nrzhsfaKSp9LXyJ7UBh6pppG0tP5Fek+UQCSTodt2pA2TclBT
	 FMbZG82oTGF4CHzvEFOAlE7MgkPcwsd4Rqdqr8IeSiApkh648EyvJe4ke0mUOVXoGw
	 8L7Kr8qWUaGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD90BCD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804225370.24504.12203749944607349331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43bb45b99d1ad6e641d8e38d8271fd2380de6ea731dd7603bc5e97d9280837aa
Date: Wed, 06 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778042253
