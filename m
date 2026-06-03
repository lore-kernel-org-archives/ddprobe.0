Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35970325701
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780449874; cv=none; b=sHkuvG03P8NmnjeWWWUfpp8P2g+lfMd0RgrSpJL6cyTbFKSfGcrfRZCLw/VTsreXAEtclg2dKMsxb8Rjp0oWlqnXDjKp4wFJ04ZLMp8uNeEP3wBXdg2AwziQL5B7+kNCSLIrttvzNZPQxuMW8QLPWApzZ9J7YWRWU6k8edDSiO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780449874; c=relaxed/simple;
	bh=WlrzefQE30X012Ga9jk6j0zNT+IS4DZdbO0N/w0lEQU=;
	h=To:Subject:From:Message-Id:Date; b=l6jUqh/aXi8hNSyV2Y+n/3wc2EsOl1OPk+jMdcQxEWBnVwisOQmlOF4qnC6Ey58wZ6xDJpNnDfQWQ53XCi2ZcQn8/Qq/jaf9884vkadIsx3KQlrTNqinWAGKHa3wTNgNvTAmoBa5AQ2euA4jCti395R/spd/MHqehPY8fxcXXig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWmZU/NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWmZU/NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA37C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780449873;
	bh=WlrzefQE30X012Ga9jk6j0zNT+IS4DZdbO0N/w0lEQU=;
	h=To:Subject:From:Date:From;
	b=MWmZU/NWPR7g1LmNpxSo3/fZYlgv/B+YMXuWdgoUcao2Jvdtxw6gnzp6/b4vTY6Om
	 zyfOj2XkLO0S7NQICdMETn+8mkqrvYso82dENUltOgheyQAXdpmklYXiXVD+G3Z4CR
	 WvTd1luHB7+lajvl4EnxfDDvR2YdoM1/sYA94WYwou0UNup9kvCMK2CFKbrnZsQhUt
	 I05DJDa3P6fy2l081KcM6F2w633JLxx208SvPM2ASI0kkBwSoSAW2h4HvZ8FxUBVr0
	 JXtWj5bDsuu4toi9XT1BI79CtJXMP1S8NEmM0fRLVzpTUhNO2BW41Lj7fzju1qCgyp
	 /amoZ2OldFMbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73F0CD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044987367.21527.456361862862398766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e8e72d1d30531fa3af30389aec581fb76d664193a1df521874a77ffd2f8fa1
Date: Wed, 03 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780449873
