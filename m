Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0987F35DA60
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774860294; cv=none; b=BHuZEF8ZvxLdYw3ydevxseKIyhChiTVtFxAaxOTEA0t/v7XrH80eYToj12lDwmf+pGjkezWKoxtTTUG0PiK2TvtoWPCiAstozqsQhKNDXfh7UNxUL8FTbp8K2WWL1RXGG14BvUpMRYWGDU9eyu0XQ8dYrV5LJJ2ejXR/DWxo2N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774860294; c=relaxed/simple;
	bh=R+teyiWahkT+xXZDEzwcHXZtKwlnhlxrwIf1k/R5/a8=;
	h=To:Subject:From:Message-Id:Date; b=j4GyBDvkEo7+FRPxsHL6aLdHTILWRaZP7un3pW2HdCQjooKi63z4B7dBMk+mSvwlM0CZi66Lr7NkzhnyQdtBCLtfPBbB+R7lxmWH7Z5N/EPTYKtu/jTV8Wpp8vv7kjfFHIq4IU1K3BOEsO7VksxPylBQGPaNXJwQQrliExIYSjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9Vb3tOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9Vb3tOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774860293;
	bh=R+teyiWahkT+xXZDEzwcHXZtKwlnhlxrwIf1k/R5/a8=;
	h=To:Subject:From:Date:From;
	b=F9Vb3tOw8GZ4Sjd49nrjgh+XpPeTA00urO5CUYvvZoVF/cJQRK8bnZ817EUZaNhMO
	 oqUH0Ia1DbNH52oRazCzyudQbqjjhSzCGlcGjzHqf/I8B/vpYEvn+Ln/UtFNwtGdLX
	 NECcqXbBclR1DdaYyfFEg3DwxT1f2nIe/VRC9LIY0e0rOmJ+W/xuhD9qhQFjbxoSCy
	 HbOvV3JPkiGcpaVDdOeWN7y5S8ncp1xnRnnZw9nvfvCvviBQtSX6li81//QayQRc5y
	 NHYLC37/IW+8ap7kJ5T2Gitkjt6hXwYIYZYdsW9QntMx5Xbr4+tNm9/OjfNHVcDpIq
	 UDcItVLav13OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A6FC97E2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486029358.7247.10690072880044656765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ccb46b8077d33a23caa4a9b8fe529e5e752a05c0d4a345b2b9a59f55dc5b03
Date: Mon, 30 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774860293
