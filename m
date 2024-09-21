Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63739291E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726901754; cv=none; b=HNwaI8YsNAAtO438d4xXTUzT0wv6fHF8jiAlNaJZI8g1fB+3HDSwSp+rkisPGDO5nzZRSFC/Y0RPCG5GqZfdPVRiAbg7E1B4+5zk8xEHXUMT2pXikLG4HDSxy0pVOm6dgKJN0E+wLYzred7e6uOJuSAsxxWinxDWQZnPbTnXHYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726901754; c=relaxed/simple;
	bh=TmZ5dTiel/yo71LYeTESQjhDWBiiqcoOaCPsP7llvYA=;
	h=To:Subject:From:Message-Id:Date; b=tzWkz7ILKYM5FjWJy+MSeCYdUGNihi9TgCyywnUnXzOARXm6JnBPNiqnVKmbVnGjiPq4wGy7B9vDTjbjhCT/JiWVQSBL6ATghjwY6xcm2q6CdmUskWL6nVgVexW5pvTz06uDgVqNp3ojGxrgTruLr7FsPxbj00WhzZ/6og09j58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5WWMwEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5WWMwEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D517EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726901753;
	bh=TmZ5dTiel/yo71LYeTESQjhDWBiiqcoOaCPsP7llvYA=;
	h=To:Subject:From:Date:From;
	b=i5WWMwEGX3ARE2Ytkn3mqxGcZBW4kyZ+EUq1FnS4vwxRWi+abQmI2dICFtBl4/foU
	 4FYDKLe/mbU0F8YzRMbmXV2CXgOo507JjuROGNLskovHS8oRBDAFgv+BOQBhbd4UBB
	 UBYURtNgMhnoSk5l+9XeQPpuBLc+zGOS76HVxBM4hnCq7vEdCQDBtZH2D0Vrbd4MEu
	 zJsX5poxbfF7rHQbPZK0mdNt4IGv83qAamdfK8MAU/yWbx+rG4yy7c5mOEU5EUEoE5
	 AcWaMUg/eFHRNrrtTIjPSYk/n6JMO0LHtVTZ/dsPd1PuZ8Ogm65KP/g60eT+zetDXm
	 +/ylb+zqPRCHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA40CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172690175368.25965.4424255590395418030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ddc9e43882a9bcc1f35edeaa25c5af32fa7887a66bfe61215812b01e8d2d327
Date: Sat, 21 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726901753
