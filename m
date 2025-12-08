Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC3D276038
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765212174; cv=none; b=WPmWhyu7oPJq/hUWvq9dS7YvFVRUJJdo/T+PsjgD5HC17F6/4GI04fJVRHzA+vLqIGGirpX8SR1/Frw55mqNKK6whTp/TVAKaN03/AlIoJyOkMns+EJee0t0dVjDHUlXq+ID+bQOZBAtvP6YzXP+W5Ot9W2Cg8+9gcABh9/YA3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765212174; c=relaxed/simple;
	bh=YAtSsblPWNBWvtypnHHA45PPrGstMPMCQ3WqZ4tWuyI=;
	h=To:Subject:From:Message-Id:Date; b=eDq9wczWaXwMC/E7IxT3P12W4cuNGQkAVDDc92jwOej6KoS275Rvr6ZDYaqQg6Fph1Aj9hZ02NSs+8gR5JsQaT3XCynZWewJkOP4fT4kglEjZ3brcanjo51jhiBe1CsRGNXE9TCt+qcx2+rocFV+V1sn1UH1TshhoY1XfNQ16EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8h/eSSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8h/eSSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7082C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765212173;
	bh=YAtSsblPWNBWvtypnHHA45PPrGstMPMCQ3WqZ4tWuyI=;
	h=To:Subject:From:Date:From;
	b=h8h/eSSdevT8GiXcx1Cjd44EJwGu10z8Il1SGDRSPbZq/tisvWd4kIUB7KOYIwEEK
	 g2A9t0CyLhZZkY51o7/pVBfN6SxZhgppgBMNBMi54gDBXy2yxW8fL9Xeb885Li54pV
	 zj3eSOrbYFaOSJyb8Z3wOx3KPDDOp7ZXykiciHqZgmJpVyTYDsX2Bsgk478RFYXPzD
	 nzJbD9JNpm8kS7n6Me00HGuVnaF3oKz1ITVGZtDuzyIztaBvY7rcQB9eiuzMgoyTLC
	 +c6Ga2FlzT85ksQdegjCLQPl/e5nKC9HbEUelwBT9hHxopegm7CbnxF0x3bFoLaoQl
	 vdtq5kGSJRVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85E5D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521217371.8169.13727509158206008167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98beca2c224645ad0ee4553c2211c1aba8194e849b7804cb2015a43894893278
Date: Mon, 08 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765212173
