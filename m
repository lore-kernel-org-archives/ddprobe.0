Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D0322527
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765867375; cv=none; b=cAZu0nFB015KPzoH6cmjK6wA2b480mwmAvdNzJPMX6CxKWmP14KHHhgRV5UdxvprfmlY7THi663khHL5Lhu4nQwN7m6h5ajzzsdh2peZ3yaOXOdLIXdpuQZvdDhi3ZnSG/sPhuFWUREpMIbRXGKXUSMRYdyZy7pY6DWYd6xZzWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765867375; c=relaxed/simple;
	bh=8VCCVjl2LM1h1+/9sB9MzMm610mUR0+ZF1L/G3rgn9Y=;
	h=To:Subject:From:Message-Id:Date; b=K3DioIMjio4bGsDuZOwJ6+qSY0Nyrlgx6wTLCf44EekXQiiECWsR0+EKGnejyH5GQJt3kYZND1Tdw7WPHnkv7fZbQX9YN39U2s7hlhXKXjGdmolPssDyDysj4z6r7fbmuT4RGfdQyieDNgJNbOhWsCEmN6Pf/SCmvleeQq54LrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ68S3s0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ68S3s0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765867373;
	bh=8VCCVjl2LM1h1+/9sB9MzMm610mUR0+ZF1L/G3rgn9Y=;
	h=To:Subject:From:Date:From;
	b=KJ68S3s0Ls8oKFc0C+TXPmmCif9eaB7dn03joEQtx9ibfyp5ffES7nvGL3wI3KMbk
	 Z8cEHJGYnKn0r7r2lLvX88TWFbUrnZZgWzbQuZ3ofpdXkfIpNzXt00hCNmJUl7kQo1
	 d+oWH3jPz6/KYbkfTzJiiTDiUYjn9UW6BwUScDEKzQpiDdesln8BLwkv82o6ml+S38
	 izi7KwyXrUcUAPkRHBoP+PO0hMEQiW6aNfO9Fm0thO0R3CLWarduL9XScQB8IFgxGL
	 YMCKcsHPlEWChZx53nbkOiJTAUfXO5zjXft7nUMTkrF/ABPTt8qAaLTEAtp7JUEakt
	 qKLSekIc14YxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE6D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586737358.969.9969621410869613620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba988a751facc3a853f639f0e267bdc63a58214e35f5043a49fdcb8496de5f6e
Date: Tue, 16 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765867373
