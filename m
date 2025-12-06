Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DD022F01
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764994374; cv=none; b=mdCTwFwsD4dyfGAcNk4JwmmpbNV4JmQikNVNQqOLKePIxtuHgKhffGf+jHYv2Ebbt+UYor3AXWCmdYI1xoryUr/l8r1gj7G46shxE2uOALO2DxguBUzgQqxDBVBB7I9KQrZ1j2Q4SuS4MPKdUHqK2oHkLNPopUnZmtpoSWtOz+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764994374; c=relaxed/simple;
	bh=axDJV7jThD2gLFeiqwc3BikN5imFx57G3a0CYdt/XDs=;
	h=To:Subject:From:Message-Id:Date; b=eXB2Kpuw4JkS//71rNjGpIPEcQlK+locvlOs26Hy2J8k2xr/YRUDVMkO6KmmK84qyYlHS2pY3wu27GOwJQQiS00CNSrBYJ8VcRwqrsdYWitTjnK7Jj+4Qjz0ElcPPZcsMmQmbZrM9/jkIzpmO5S2C9KeceCxzmeWDijVWVoyJEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RK3X3UeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RK3X3UeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B793CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764994373;
	bh=axDJV7jThD2gLFeiqwc3BikN5imFx57G3a0CYdt/XDs=;
	h=To:Subject:From:Date:From;
	b=RK3X3UeSSwb0fkiGF7TZhF2XlXtU+HWknrWA2v5CUHkadH8ACjiFA3PqrPAQBUB+P
	 /Pz5WjOOjKvu0ZCMhzs96J7aT6ZyUDDeIAs6gW41N+SrG92BjjCF61jbWZ93hGpI6/
	 I5yzxkdMsFXNWFtqoOabqUaqLd91lbIcqKG61S+OHHZp9e74ERi6kmxr0o/+8Xf2cb
	 S8dynEYZwRJ0wEAVYXd95/JeIlaWNe/AB2mdKFptnZWd1SaKMmPoUDwuSvF9nvKsZJ
	 N/G6s5VpNC5+Ilnxz+qdEIZMs77GDCXNi+qccdB/5wpEsDrTnJPl/yeegV94GuGRV1
	 ZRGfgW0e4vyJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99282D3ABF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499437360.20517.10431440727973344837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550fa36a128a49aad077f2b15c4bebc7f38096e307638a41644ecbf831679fea
Date: Sat, 06 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764994373
