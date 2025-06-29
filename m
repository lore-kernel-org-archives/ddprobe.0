Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225718C0B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751157594; cv=none; b=tHyKRDFNmiezKnj3iP2TiAMlZjBG+W+4/4ebdRNgOzbpnOYenhb5SAnX5QVa1LSlFG6EJvzhyVwxxrBkwtjdU/vHRfm+mzv2hNEhz0IC5yOHe1LYPALaQ6m8CiugPQhsei9bYhOcooUfHsuTvWW67k9Iw1rZnLBU7NScMc5A4es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751157594; c=relaxed/simple;
	bh=oY7F9t99BSFpOqa95UfxNsl0bWxYyzkLOrkbXYOtAmk=;
	h=To:Subject:From:Message-Id:Date; b=Ujy+QsCFrGJJxUCEMW1e43S3AqOzCZGJjPFgBZfqEvLq8+ljFlWRLMKkQmy3qCMH/RY452U/+L5FDUTi01EV0hMiHEkh9+wyIdS3c88BLej6DvGJaaOEeW5HbOwMBeG0aPoD65F/gi3qRh93XHmXnBlJuklEt2WS97yeuaW/7JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBts7AGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBts7AGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34EBC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751157593;
	bh=oY7F9t99BSFpOqa95UfxNsl0bWxYyzkLOrkbXYOtAmk=;
	h=To:Subject:From:Date:From;
	b=LBts7AGlnwrr7E0fmXQNU4SkGCjMavsCSZ5oD043UQzuDtk33ib5axSLDgDC2l2vY
	 Z5ECMFGV55bViv+vI8LuAB0zeo0L1XqFuPdrXPsBQf/Qi1tlyqjMlbrduozcVbySHo
	 TBv/2KQ3fNjcbtdFvDCIp7WeHTTdF1fDBVLuYLzJypYX6XEgWxqKTKmsyCf3NZCWT5
	 oGwI13YrmCGw5L9zgc3jtUCNsdPJ//wkTXYKxJM7BqQM9ReGdqPt0g0uNl1LE/QJAW
	 XGOGuND5Zdj2i4u4krP1wHx9NbqVD1SPIGQ863c92kFMKji6eZ0BxCKL/lhOXUvwHa
	 OT7PeTDXwunOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91970C83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115759357.29528.13405542503070459583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df938bf7f0f4c6081153d97698c6d2d598a8f84dfd141054a57c8c37529d942f
Date: Sun, 29 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751157593
