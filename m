Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6343D7D93
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772033694; cv=none; b=lNRMhMTOHz/X957kVB9AI9oUvGVScHdUIGcIonO1AIp8FsZfbJXT8uXAQy3t1+EfpeVsgyPLBju8Me8gDjNKJHlyYWJaI/qp3f6KTSiRsVYoBN+3owSQufAeMnkj6PeU3jPOlzHtIEcTDM2ChFuF3Fl1adnsMTUCEl8ZwYDpmWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772033694; c=relaxed/simple;
	bh=rkO2ANONUsBqccZuEeQzUWfku/oaaWSYWSnOCjalEJo=;
	h=To:Subject:From:Message-Id:Date; b=PTa4ccujmyO4LYlKOFgRJ8JEeACjIygViK00ZWcejb+sStSBGFO35prKWSabreHw2r4ENpM/fSDDi3pfhFXCaUkRTJ9isTVLdENHVQG79c4/X1K4WJHPdNxfsrq+v2mT0C82PCfp9n438ybVa/NThK5uf6hkY0ryRXxmdcNLElc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUKhsXNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUKhsXNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BB8C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772033693;
	bh=rkO2ANONUsBqccZuEeQzUWfku/oaaWSYWSnOCjalEJo=;
	h=To:Subject:From:Date:From;
	b=hUKhsXNBEvQhxN1Y17MeKAy60r3nOVYuW0yvwyvcGeucS89/NooIiiNtK/p6J/OaC
	 261D28JxVQqZ4mJF174XxEreOVbfh/9uw19DbkMzzGEhwTGNEWb5OiLAfXF0W1B5vk
	 peiYEm3VpfLfwXwKBqvjHe+x2dxtLtKL0ZSuSYyInSGFtgVKI1/Qpeyy40S8jKSMDT
	 O9d8ZU5jbX7ZrqVHyAIgnt87Z4Bngagbdx/cRTGejfMK42ZEMkBx3OyC4yHT27Z8EI
	 PUQvRAouMv3X7nX9N1cW1wzTfMh2RAD/mBti9eH+/hWtJcBCbsIJMK+BVhozBDAbnC
	 R3WffsUyjXP3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96149FD3767
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203369360.29460.7715083617529803069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a6907d1939c5ba211f8072a9e590e06b51357adcbee54ce63f224bbcf8882e
Date: Wed, 25 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772033693
