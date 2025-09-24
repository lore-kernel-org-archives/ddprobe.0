Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16039185B48
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758698394; cv=none; b=Nq3g6YRLxRkg151qbvMrLom2rDwNxZfLNfhZGwhi7nOFo62uKNCV/JPiohP1uiHIi4R+aM6C+/pfwURzwwzmIDMisCIy5qHjalq3W/5InoJYgGwUEF1EwRDtK8qjgQaX4ZLsa8RZPbG0SGqQJf4Or2J1CVt7yGX137e7dV1XkoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758698394; c=relaxed/simple;
	bh=9ZFhheoCfu6HTNd/YhwQoERH8nx3PS4QX3DMUPb4IGE=;
	h=To:Subject:From:Message-Id:Date; b=iC0PHjUAsDnZfHttSZJr1nKELl58G0iFHcX/FmrPHisgSLIDYnmU2Zym0DXSRP8Eoy1Zw2K8fmjuIG9R4Xj+Zb+Fq/91j23WtR0VTpdQtxW/me4QhUEUiKtPMwanJedUz464bYrNFVF4FImhJkUzK7qwZqpgDarD6YHUtYYoZWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hud/cfgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hud/cfgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A493FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758698393;
	bh=9ZFhheoCfu6HTNd/YhwQoERH8nx3PS4QX3DMUPb4IGE=;
	h=To:Subject:From:Date:From;
	b=hud/cfgmRPH/CO552G5cEQVMszUFfkB9WI12QUWjE1PVslip7DQbtCGpFIAFueyuz
	 KGMmRgwnlIHi3tKvW0Co/WgPkQIcYlVmmodeoXfmRhZsLJOh392lNOFKYGS1R8RRAy
	 bXF/xhfTVSNHZEDAODmuT2h4bGaJD7FKgF2nD5Wp4QjPCQacZ5N6BwLjOPRoUqrUts
	 7zU7HkgVEFngw3ZskT+OO73+T5upVwc6u3cLi8bEGOnomEspKw/yX/+LctCVFv2vBs
	 b6p3b/SJntIrmEVzLpXmw8h15tJHbLKhkQrP4YpEGieLycuVGUbnJy9tcojtLwnwUe
	 WQuE53BXCVa3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F24CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869839357.9462.8998214747961526803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a974dbf0c2570dbe1ef5a5574fbb17cfa052f41766cee8bf5aa27708188d7455
Date: Wed, 24 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758698393
