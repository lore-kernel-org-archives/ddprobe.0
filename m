Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F0112C48A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721492154; cv=none; b=SiajHywAGPyAsOUk5eB24AQ2J3ujdZHJoaZwJ3RBA/sZ0ZTE28cED1FN+TiMKT9x9PEYH6KuBkJZYYGd9TVZQ1iCCON3MRPpgHjT0jwYx8vRscN9+3c2EzllppbcwwaU1qzBuBZABfDMSdi8TIXrbkO0j75jXORSAXGLxgb1qKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721492154; c=relaxed/simple;
	bh=OWYrRFqjDPeW4bTYEzrjCslWBJdkYTrEIEs1T5K38oE=;
	h=To:Subject:From:Message-Id:Date; b=Hpvp4ih8xthEIMGF8zKgGlbMMxhlhHJz78m+WM+E+EbLoFxl5i9xaPOF7Jt80Vh8p5RVmbTA3fYnKzinHArSJsY6HO4y9ku0xkfMTM5GKwdbFMjAflXgtXMU82nTUMK2Rn53itbdfucLuHlyD8IKiGT8h1qZ9fLO0cdQfIpbxyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcJ8ewp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcJ8ewp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF8EC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721492153;
	bh=OWYrRFqjDPeW4bTYEzrjCslWBJdkYTrEIEs1T5K38oE=;
	h=To:Subject:From:Date:From;
	b=EcJ8ewp+COp6y5aH+EX59pv3euP8LDYFRBcP+P8NO6p+I4TZ2r3yHZJKLbzfKiINV
	 e7+Xe7eFDdrQRvzG2ZYkGkuNeFlRCCr/F4TYThtDQ2Hzay8dy/XS9EKaTySn8otMW4
	 Z695mIlWbOv621szqB/kNvRzk7UunlwZAV5ROyQu9J40RYs6uSS6f2htPeJmxOd9wm
	 imNeO36UGkL3nBugpVJuGMrU0BeR4T8BSzrhHPdIo5kwCB9ByXFmDlgLDHeTIbfzh1
	 9GVBkIG0LnzrwrmEeH2qoCVOdQG7xnEU8mjByjCbl6CA7YeLB8Sut46Dej2rYq67iq
	 89xJtJspx1btg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A889C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149215361.2657.967435038341647790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d970b9079b8b88b8268c9a5cb8651dec1e6f80874c462c0f21fde160d9a46b75
Date: Sat, 20 Jul 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721492153
