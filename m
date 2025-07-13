Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF9813D531
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752443394; cv=none; b=ZwMjza0dayrSbp9GJ/RMeR2pc0wBGrZjP1p8K+jM/QH+Mt9TNhNi0dlUTKW42beS02vxL73Dwa0Vn5VgjwGUIGGaumzINIYp/U3sOh4rqVWywCDnZEl8UORS1MWxboYBkssqDp2zA+SbqYAQRgkhPe7MqB+/lPnZhNRsrIrhG8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752443394; c=relaxed/simple;
	bh=LelOC86YIfg6V/SD0VeXq8RTBBk5bwAJ8dFw4BMv4Ns=;
	h=To:Subject:From:Message-Id:Date; b=siqlGb0Y8DEKiZ1NVlYcRNtE6HqIuTLXB7arlPNhi0Br75xZfjVXCrHTs9QZ9PPZg1x7Q/3XvzCrRBOB2LlKhC4dkO0XMwMWEIS1IUQR4Sl35b2DgZ1WHl4YhmLHIoR1wW9w3V0hHxUybRXH/qt+j/Pghr1d58QaOxVdamjGZkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQmaC9yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQmaC9yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752443393;
	bh=LelOC86YIfg6V/SD0VeXq8RTBBk5bwAJ8dFw4BMv4Ns=;
	h=To:Subject:From:Date:From;
	b=OQmaC9yoiJ27HydHHGQAb55RRawFnZJGqWvsHwxEzlMfr5euu+RzrrM+NHjSCAhvV
	 ynk2GgBl90jN/ZffTySabta3j1kYpUkdxwntrJ3zF7PKLdNGeuMtYO5Zy7Lf+W62hb
	 a3FeXODObKoiVIFpdVzZfv2c0FBi6j+HOVR3Ho/jYvoTl618TbxtSi4ivE+3pmUaGa
	 ISQbPPepKpTOxGNrf+a7syIcyZgBPk11DHFqPVEJtcWS72mgFvFcgNGO1VRRWZt7EB
	 fdq6aMpWkY9izjSQiTdMFJXhqfqHcp/uEsRmbulg6Rutt5RK3VSnqrO18YMw0k28Sb
	 ElzCOpNvkIFxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D30C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244339357.12457.10948800556398958011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bda0fbc95052c095b1944bf1b3034ecec73608e6edcaaeeb1c88321a81861fc
Date: Sun, 13 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752443393
