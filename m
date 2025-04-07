Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A082459E0
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744027794; cv=none; b=kANjF+lDVVV3y1WpNxWd0wlhtkVwSeW+43iq+CVN4mmxt1qeQsamvOmhr+bMaMdPbx3+ALvZg7K3lCvYV1j5WCVRv41vEl2eemrwcGl0o6bOF+k5rVyyOj2AOMzkUaNJYgobHjEIOrS0QEWEHji0l9ErcKjtCSP/ozdFH9Md0bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744027794; c=relaxed/simple;
	bh=cRVIObazKFKiEW7pg18EtWpIGHPLLSNhhovk2bXTdds=;
	h=To:Subject:From:Message-Id:Date; b=HTUvMGq2u9olhTPSRG47gZEa4v6vvVsqcEIuQ/eyHAM/HoOnOZKN2L1i9u3/eslHUAxeEfI8j5OPxRZ1G4UbZvbZYGaDfbdH8SN8GTQXyDKJEoRNADOA7MuT5EVeiM/BB/tK4SSw73TEo9qytftB7hQFFR4yogieEpwmnmjdEoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTtsO/Hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTtsO/Hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D9FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744027793;
	bh=cRVIObazKFKiEW7pg18EtWpIGHPLLSNhhovk2bXTdds=;
	h=To:Subject:From:Date:From;
	b=rTtsO/HcdIXLFTriEWGeyOTPZTv6F9mmsoEPJ2r4E1BWk+xXGTVbF01lvtIBtZC6f
	 A/gNWIbvOp3tpfRD0GWY23YSRF+R2/vpZqYyDAbD3G3mMXXzVYibOTMYs++RAaoiNj
	 fVDjN4EOepSQ3LpzHTKK4yX/3Pue4kH2+Ifex9bpjOfYU33GQ688R3avrcl7hFrC3a
	 PiGeeORoSnud1FaGXeuxEOCfBAFv7zv8TCk8wuu9p9nFABOrabI2UqE1mO66vfRzXu
	 ZS8VP1+Mu4ttqOSiuXF3wAXN3Jz5VzJtXEB9mtnS1HZ0K7aqlyiHpe+SBV/DfhwuFD
	 EmWUe7JyX5D3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C73C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402779360.28202.6624518357507542925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5f5e9c729b819bf7e0971ddece9b7c000cf4adb60062181a3f3c589c7cad59
Date: Mon, 07 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744027793
