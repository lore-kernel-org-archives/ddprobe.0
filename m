Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5CD1DEFD9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744924794; cv=none; b=p26DZGfZBqFrDb8tfMWP+yKoRfTw886rABjHGsm/VfaOTlm8T/48JQmJSesi4kryZxvewrOltxry+/MXsesmoe62jC2HvtimicHP/zh0XO61HDcY6youI29Sju2pfb7sPFrEqdSogEPXJ1fnqmZHaXwGjBKSVvO5ETlWrGM4o/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744924794; c=relaxed/simple;
	bh=8NG7ZlimtzaEWeI71DkKEfNiwlZBHS8F1ViznIR+8bc=;
	h=To:Subject:From:Message-Id:Date; b=N8dp+V7JaP3x9r6aNgEoT62zgVOxYpj5FmCJkf1paV0Me6qvB/G8e5Bd/5UAqzNa83mhyF+Z2X/rrsZVnWJgIQM9PKPsMyFrLLzrt0CkwXd9CrvtVFJvqiHmmHG4WULtFtnITXvml6w2jDcCEFZQY+JpTjLhO/z792q6um6wFaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQrwJfAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQrwJfAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28C5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744924793;
	bh=8NG7ZlimtzaEWeI71DkKEfNiwlZBHS8F1ViznIR+8bc=;
	h=To:Subject:From:Date:From;
	b=qQrwJfAdMwYpvVO4L9NCzY0+lBzemuGKKxn8EvcsODdxYaN41Xse9T/kAOkeXRoEo
	 tpuAJnjiQaKont2GU9P0V3NZz2JNpN61ixh8zbjBsnoNgkLU8yWijJp5yhB761H1YR
	 SrmwcJ+Rbf5MtgZGguF4TpB7j14LhhbyKXURWrvKTSlmC2Z1FS+qf2w1WImuUEd/ud
	 AhxmM22MTCs579wq1vV8uNj+/AYNvMdHIMa2iW0tk6Y7XpzVgLIIYFSMOnS60KKswv
	 LApu9jL5fFjn5ShJdUftKoGyMWl8kJsHn2ee4EO40esMDbsxOz5ZzGHMpA0Sf7eKvy
	 q+q1riBkUaffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CEAC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492479358.9624.452492682667054821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0efc228de2d7f12bb259ea5d57e77869f3ce31d32e21e0a23d26e047329449
Date: Thu, 17 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744924793
