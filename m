Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCC422ACD1
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742654994; cv=none; b=V/nASBezokBXMi9FsfGuAYWfNKhjBK3Erv4Z4+PzvyVaW/fCZew4HoqJrCRHLiNcCw96kem6qrjjbz2QazZsSmgsKTa6nsFcds/B8S8fw/BuHsqAVdOe+0PJfGfB6AxeXEBNaXTdclSyPiGK3F1d9mBqxBO6G2qkMkd+1DXPV08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742654994; c=relaxed/simple;
	bh=vVRjA0x8MOSbTmBH4EQ4A62fxJnUnng956SNehVZ7MI=;
	h=To:Subject:From:Message-Id:Date; b=kWdTfz6K9UZ4emynyY3buPVPA/IadYKpg2cwnlZB+JTCkKEb9+PmIzFaOMgcE4kZGKPpEN0wrROoD8rPil53WgAhD8Dj0Yg5Tb2HbzJ61K3DFdvL0hy6kzynWitbeDr9IMxkNVJLiXChIFtiM7UjAgPxGyE8WYfbhbxZvw8pcYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKZadMJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKZadMJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B291EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742654993;
	bh=vVRjA0x8MOSbTmBH4EQ4A62fxJnUnng956SNehVZ7MI=;
	h=To:Subject:From:Date:From;
	b=CKZadMJMq+//0k49GoyhKRe26sRGz8rZ65ZaXe1uAH4AkXnmdrBeJDnwQbkpfW5DT
	 RZkYm14yHswsrR7UmqTj0JINvmFeOAPKltnrYAuYLXtT2Yruk3V317ZywksfGGxP/1
	 NqysSY9pd3E/0k6XAL4miSzv2ydURB+TMfpEwEU5fZ3+I4OWFb/+DVPfXegbXSe+YI
	 dzkzHs3K1CAwHHgkwVVVtQ1fOGib4sQrEMLnuPydAszlyKfWo8Fiaa03Nx+nQIr09E
	 uqjB3tPCzTChfV6+u6eR+ridxcs56F/imJOIHITfZkm1sJnRcM/rXdqS6r5dT9uzBd
	 YHagLUfgUej5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA88C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265499360.3931.17380501124627913993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f8c55c7dd5ecfb97ffef2716586dd96fd2bbd8c613b2c210f2d1ffebd68a54
Date: Sat, 22 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742654993
