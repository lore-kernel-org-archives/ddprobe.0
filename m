Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B9B3019D1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568793; cv=none; b=ZVGIPpcdooPblweX3vQ9iCSNcLHuPV6LcWpTDz12rX9gBwGr5rKW8Wf7oKM9IpxFyIiWJKZkocmtp0Zge7bdL5kzUb6jCDiDTKnocoBfQmLuHgyvuP7Nr/yX8qa3VzdJ6ucvOfwdVMzeGcClTd/9oaldJInIcQ7iEQONMuFCe7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568793; c=relaxed/simple;
	bh=zszP6uqdXAI8kX9NtPK+YKseK7RO5IFxwdMD5V6ayUE=;
	h=To:Subject:From:Message-Id:Date; b=tda3V5geI0iBS9FlpebqwkzdHCYFOHvtGEvq5KGaQExv4rMv/a9sAbEIGZnu56Bciak9BZUzV46z6h1cLcRc7qawzmerkIdv1xoOzizL7x8RQtstvZ64f9UZakm7JqTNZSQiqKYK0dajYsbc4WMfPgrUDSgdFTbG9uz35DdPAWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUy74OJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUy74OJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E34C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761568793;
	bh=zszP6uqdXAI8kX9NtPK+YKseK7RO5IFxwdMD5V6ayUE=;
	h=To:Subject:From:Date:From;
	b=HUy74OJOz6pgG8IC3WiCDxW0sl2R4h/Q2b2k5F8RVvN6QY+ode6Wih62F2oo6RG03
	 bq8Z9uYFhXm9F601AMl9gROjYKuvgyuBDk2iZ4xJMngVTdvmdp3GHmDZFLL6/qDElb
	 viUDWZAKQ/6200qDy7fpaowEq47Qwryf75lhKrX0YYR8yUIWS9q0iUUlFrzmdGes1c
	 O2KSLCsn8G729NFscGjffxvk5eUUBhiPTc0Fyeu2+s6GGdgoz4YzaV9eso5Fpe+Gek
	 kRjfwMAHLEEv3/vx1wEl8ugoc86di5uMpt4HDXLg8yDZ5MC+0aKlYhk8OfZsr3mXnU
	 BB8a3/IcyaY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC40CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156879363.3741.1353652598903568141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5d7538d2bdf2a96428f4a7aca691d4c38a3688e2b5b657c724630d183b441a
Date: Mon, 27 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761568793
