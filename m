Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996E73C197C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783578514; cv=none; b=aW0gqw/uCiO1LpdHOl0xuzhZhae3r343eZjiZKHdO33up6dbYjA6LpoirALvRNz5n2wxfvp31Yo09zTWew4xhQk/EyFzg4zoaMLhViNdzpChy/z54diTH3jHUW3cDiQfWb5R9nqi0enKv5htDr4JONlnzsq37kJWr3em86Ic0+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783578514; c=relaxed/simple;
	bh=pIrWVENUxRb7Y/8NNl/QVmzoXyq73usg7Iyy1HGG+c8=;
	h=To:Subject:From:Message-Id:Date; b=S8ByaUhPMo4UYleLchLuGAVVS7BrrtjBloIiljpC6FjgZS580dlWRswhkElyLFq/K4aBCM4c574BxJTx6m/K0VWbjIsx7zLNc0lpqlInD8oXAvdS2YIUnF2Ye/tio8IFidzDEhmJYbXTbX5qoV207//zEqlfcktnq/TTvTXgbO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fi3vmXLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fi3vmXLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7292C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783578513;
	bh=pIrWVENUxRb7Y/8NNl/QVmzoXyq73usg7Iyy1HGG+c8=;
	h=To:Subject:From:Date:From;
	b=Fi3vmXLLBOFW6YSGeuMeztz3RCBMRkhB8TZJOeEB9JoCScT8lV1f91QtJZOIeCtcq
	 kWLcb0/WElTbG+QMYuXlIztnJhuSk+S1OvPbyYEoNEEKyJIFyjMlaKsZjtB7fNZv67
	 PrSXPpSuZhasWXFLU5ZuYSUVsYpa0cU7e9ulku0sQwC92J7qZVu9AWTMDs2mMmtsLE
	 9rWw3gHW9Sbyppa/FJ1f20LvAckmy5VYAC4TSD5qfdlfYoqkV3StRBTVt4FYWGRlPQ
	 uXJ9/5IjlfeXDLosqjq17ReD955ZV3ZV7iYRXGz1iAH5Vwz4w3tsuXCBP4JAw3P5fW
	 nxF5R53uPwsgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49B8C44503
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357851373.7332.17719802937248140825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ed9e81465e5a3d2a5dfb76c9e5744aa1a80afa0599938159850733ca921e89
Date: Thu, 09 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783578513
