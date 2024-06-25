Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E449FBEF
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719308003; cv=none; b=SvAytnxX3K1vkHIzN1Ga7HAt/c4+o6hyFwBKB/SqhpBBu82r8UuL0F4xFa6cpPsIyDMtX1q0ORdqxVR5jf2N2nvN78W4AWnGpr1j8d1FGf26ISGa3tLqQ2CHC452v0e00anrw/+aNjRMiBQ9uKwZmYi4LeC/c4igQ1J60vFbIBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719308003; c=relaxed/simple;
	bh=mJkx+9K4feIxCgsywLe7Wz/skDjdcZOnS1YtW8GPl4M=;
	h=To:Subject:From:Message-Id:Date; b=gkr2xoPv0cwK6yWZL6EaxuSSN2xQrBRlIqWFvcelp3WFivT7HRvSNIeGNwc/gOl31CFcejlyNKWl1ywYfoQrgya9BK4c9rTxdrWwduzNEuaiMAjdKUkjbCJ7PBQIP2dFDGZ7rGaC+6GOWBRkiG2L6bJ8QVa1oKvTROILr/gTp7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsGa+BFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsGa+BFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBB0C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719308002;
	bh=mJkx+9K4feIxCgsywLe7Wz/skDjdcZOnS1YtW8GPl4M=;
	h=To:Subject:From:Date:From;
	b=CsGa+BFuvk7dfA/+7f9ut4+gv2ONtRDMg/ErUFUnjf+FtExf5Ot19KSDrSEGKze4k
	 KG2XJatv2lMzWeC2SEaZu/rpZthuytkmbrhsnKHvlcaf0kRNsPMM1dO3QXPkNZgq4X
	 QxGokpFnArLNN/aJGxjcPsyX/NjlrL8BV78QkxJSJuFRhI9FHDOZgW5bVctPsvMu6C
	 IT+L7hWL0+1MaFIw5sWuRQTNO8yyh7OMntGQOD1LIYGX/8BBf4+zxqSfX9INGdcOkR
	 UJ6LHNGb53xsTZA2fyd7BNSme/ZMXVo7o+SwEzot1z+xL4v9h1pFHC4feT18A6fccY
	 S81sgGDShELQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD748C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930800276.21241.10636691207492926862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1459c193bbd6e4015f763b649c4f65cf3e34a0b3d3eeb0e9068d74e300b36788
Date: Tue, 25 Jun 2024 09:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719308002
