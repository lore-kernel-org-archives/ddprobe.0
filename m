Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CDE32D0FC
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782790714; cv=none; b=MFfvwoM0hrA9JAgtzlZemlbL4+EKqhhmNpjRehqoDW4rTqbxQLQd70FS36ZugOiSz89qvors/WqPDsu2mY+RBn+lys5x+xy1DQrFzmP7wSgxB7ZH8Zv+NXjZcqLWQXhho5Z8KdcmvvVw7MHquixVRW2IL55qBMuaqM//uj9pmko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782790714; c=relaxed/simple;
	bh=xjjtRIRADQ3Rcdvg/Yb0xdA54Sl+9HydJju/nldC9zg=;
	h=To:Subject:From:Message-Id:Date; b=fzgU4u04YNPlS1wbuPQzUyg+/Xe0OAM0ENELJ8tr+dkOHqxNS02r44EQWyeqhicVH8gjBRMbjWHVCd6eX07wlqfESK/W7adGJMHaMpsYAuDoS9gIQrTLjtnbzKwAmjblhsdJy8eHgbIp/WsvV2Rv8yaKL9tBdjqte3DpFeeeECY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXQ5Z8DL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXQ5Z8DL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E24C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782790713;
	bh=xjjtRIRADQ3Rcdvg/Yb0xdA54Sl+9HydJju/nldC9zg=;
	h=To:Subject:From:Date:From;
	b=GXQ5Z8DLzF429/ZqA+SMJLsc1gyptFpmkN3eldhayrccIMp2vpu/plT5Ouzl5IQiz
	 qKpDiMD+4PL8xzqJh4IJ5iD02wyv76RrANlefxgdFUCoJHTr40OUxgaf8diH4rPI1V
	 IGEfoAn4s2F25cyjYcuXYWPrYt5jMMRngFDFVSiva7qJhMQRIpK/qNkKLvkD2fCbzA
	 0MSL2aVwOl4I4C65GezwP363yZC1uuFEcvlfC9PfSYhTvXEosRmBmpMtzIwFWEsFDm
	 m9LEe26n4Z65mEzDmbhdyVASghlT+EhXCTuLNNZeKy6WiL1BNVwNKZ5yr26HtZgrjc
	 Vfq85ZOndCBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC58BC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279071369.11215.8101401654772704385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825cf47f199338d2e92d0276372dc1dc17ce08702f7668752838a648cd1b2436
Date: Tue, 30 Jun 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782790713
