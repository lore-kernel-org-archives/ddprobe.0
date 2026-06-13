Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D808212550
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781311594; cv=none; b=WSkM8CI91GWM2ALjju5qqIL8Hj3SelKVSS1VLLJ3y/8HcCnKStfCo4tuN1neIY5bWuBw1YJbFtnn4+l+pKATOPPFsq8r2uNUw572oGHQdugD9urb2HjOXTSJJAQKAVOv6hoC/PqWTih1iQpHSPS6CNbT3g079EIJrcwPHMWDKQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781311594; c=relaxed/simple;
	bh=Pe3eyvzEkYQoQyUU3nzZw3PybBTQ9wFdCLy2KjA00gM=;
	h=To:Subject:From:Message-Id:Date; b=kgB+K7qBvT+JCPoxD1RHtUsx2EVv8R5W+wK3fEL5709VA/mHdVOCaJ8guLrI8AebmbdmeCvQPhjdkTDZd59UxFopegoMeWC50FI2YUMOICto7O7/uzff2lnoiBichc/U/ygIvseTiB1AtVbAb9dYFtd9d9eTndshsbVQmQmWNqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjKg02Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjKg02Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3DBC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781311593;
	bh=Pe3eyvzEkYQoQyUU3nzZw3PybBTQ9wFdCLy2KjA00gM=;
	h=To:Subject:From:Date:From;
	b=HjKg02Vd/NbSwelbryu5lfPAVMctcoOvH9868df/Ti4chv/YRe+WjBm01IGnC+mt4
	 HsUTGuyejS9+g3gXPgf63zR1LlPxfHqiMiL52thqr2fM4uF4H4QSGvSjcAr1IWvU+J
	 tVnfcsoKYWoKoFaoigaqIUOKj8/m6/MHSS4/CC1b5YQ1yemxHXMIfJlTOgMsWr23Bq
	 AEHSNC81nxSKsKtFPMQJ9glk0AJ2/e1ZuwcYEgRjV21Oq9PoAwoYRRo7C0rePusO0H
	 FBWST8q6sd6L8S71jZoJS5V+HAtqynt/oh71H8WM4U0o8eKKK+Qc/8A1MB+aNb48Wi
	 n/uvNfLNpprdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE64CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131159368.32419.821210982254779147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4446f5ad22c94c82296458f2917619a443f74279c6ac0e723f91f3d470b384ab
Date: Sat, 13 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781311593
