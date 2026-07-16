Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADB53876CE
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784218114; cv=none; b=B8D4oI3FPOS3jlXOKboMThj4T02rY3JphIbNL+krQhRT159sU6p495aj1xbido0m57Iomo+7fGANVAnExx1nTSZO/jkizMHYv9/IMMdRXiW57qobKGgO00mDTrdx9I2QtndW+CCFJNDx4mx28ixEtBZfNrAn2MGLmjSMaaNhevQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784218114; c=relaxed/simple;
	bh=i9eBo482LCIrxQMKGm2h9bKnduJu1BHYijRVa28U7RA=;
	h=To:Subject:From:Message-Id:Date; b=ERIuqpEGRuRH+anx+sPbR2M9vuT2MIMbVSed3PeoIgzUYe/bD6gYxpzINeIfuAMta7gnHHDyJhiFLvuQSogzbO2/wFCogZEn8Bq2iWCXKhU0Y3tgc7+Rx/3wKUGdVHjlg6bkJRgFXih9NQJutI2BF3WchicYgtiZb2RqWUMyVtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpp0XskF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpp0XskF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7F9C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784218113;
	bh=i9eBo482LCIrxQMKGm2h9bKnduJu1BHYijRVa28U7RA=;
	h=To:Subject:From:Date:From;
	b=Wpp0XskFBTYInjfXi2LSI5uUnjVfyA8b82d+sSiMZGIDepi4kkik0XSActrpnvnFF
	 FlwHjrrr3gN22YrUpIK0Xzq4NR1s0ffW4JvVs6Tgbws2yfisDtsswmQnkFs7eFNOQ+
	 OKCbmW2y3/vwiRqQAqmz3u8UqRhP0XXLKWTu9nbv6J0yu8gYF9ahJIHIjB/XwLodXF
	 NNuUJuFKcT0nJwpPhiK3Z7ojNU18xHqVINBLdkNBOdGUFd0g4RdxMam055gHXRNfc2
	 gJZi4rgczXfT8RAxW/yIscaqTnyPDIN5RTOkmfsLiyluGI1sfjX77j4cQwyMwk/pW0
	 6gxN0czy9ypwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EE7C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421811368.16791.7744658970063301629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07073062ace530c29a0135aaa668c1d0453dc212fa48493cc8fbc87c59fd8c0a
Date: Thu, 16 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784218113
