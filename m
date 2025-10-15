Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198911E285A
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760500794; cv=none; b=M7/4CBavgHpoPGcVZ4s1+vt+tZCYCvz5WiqjGGrf9dC9OFdKhTGp4AJKfyQQmCJW4fFWzfCxpVzadxeZGJmxd92s05iRqGz3oxNRx2S/5fQQkkYSsn9I66XfSCuz+xZ13ekyau373cuAPL87bszyp418mOZk5/0PPgkMrP8kOdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760500794; c=relaxed/simple;
	bh=MtarGihKXE0nG4+Jvvy3VAv3qCVMfR53e9sR85SfqHw=;
	h=To:Subject:From:Message-Id:Date; b=eAvSl29+kSE/h0FgrdFrM36onDSfi4vEvIaJzEfgLEeWhgv+L99qcADBikfLXpYzkzQP68MUSLg+LjlWHzaJJ9HNs+1fFLCgP054DDUjNZlJn4NfLFxIq4keo0eroHBwzbDbMchjP0SkD1+yW5gPc5gQ6W+OZCuLxMOJ+FqfZFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKCKyMhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKCKyMhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2556C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760500793;
	bh=MtarGihKXE0nG4+Jvvy3VAv3qCVMfR53e9sR85SfqHw=;
	h=To:Subject:From:Date:From;
	b=PKCKyMhu05Uo4uYNmq3GDnqrXTUX8xYbg9jpe99dSfsEMOaZHGPD+weZpPh7wj/1q
	 2fH3ZHkQE1D8/sd3pg5Bx1/qhbWMwzhQ9LPKE1ft2nXKfyc7NAQzI0Dw6xdtb0JsTI
	 Sz/yfMGdp+2vXRN0tNpj5l7N+3HtOYBp453Yhd6Gcuz2Bx4cZ2OW0GNaGrMQeScEm6
	 eLe/PzAjGrzlOIjEckK+j0GJOqk3Tcby6al2s9TNowpTFmTFtK00Ooj0r7NVYgr9zp
	 /GrcWYLVmW5ycsaws4docDkSsSu2yXkNuXTG21dOiVW83+wqOGS+aR5Tf8PwPEJ97P
	 BTtsJI1W047uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90465CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050079358.13849.4697348640212984379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad55ed3543e76b94b7269ec8629ebf61ae0dc71dbd0c356947996078bf215ab
Date: Wed, 15 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760500793
