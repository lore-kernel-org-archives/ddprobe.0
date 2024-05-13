Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515481CD3C
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715565143; cv=none; b=jX9ECpqLyWn0Pycrcxe20cW0kG5IvpedY3h68O9kqM4M9+HnZxmwvAJoKHd1V3s1ZRaSGGi00rXRniiPOnXFqxgah5JaPP7TqMAQRTcq3YqV14UQ5tDzxMX7yFJUQwFBehBHeT7T9In+JUYg32omxAynXremqfEmaKq/A1eDugk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715565143; c=relaxed/simple;
	bh=IKgClbJQYUUqyd2iTofwg6VPtAtncr1eWyWUm8nQmUo=;
	h=To:Subject:From:Message-Id:Date; b=hWPMjAp5ijc4xLkloQQWTmIKNTxlOpY1gflzrdyacrc52qR9tpDXYLMWlyIjstsTtUevJUbfBxo0YbYDABu1EpeVsmzCMomEE8Y/fnFHJRJCanuxNsSQygYOQmSUWAlassG3HrrrxKWJLslSSDWuBiX/7nTRGjF8egPTLBNilQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCzNoTSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCzNoTSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FD6C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715565142;
	bh=IKgClbJQYUUqyd2iTofwg6VPtAtncr1eWyWUm8nQmUo=;
	h=To:Subject:From:Date:From;
	b=ZCzNoTSz4nVvIa8/2FJZeiddF437D49Y4Rtf4lS8lRFVcORbGLL+vGol0C6WjeggC
	 ctEumtWqh9XMOonnNVrNL50WmhLMa2wlncUCsSRqFZwkuoiljyb3KtxUwvXHhx2KuA
	 PKPiMWkTovrRrkGEcIR2oE1KP95eTdogMOG0ECa+hMCLpkELWgr3cAKomawUw3Pq7O
	 hAHK8iv9ASxCeu8C1q3RWBQFhfAWwNRZPpn9GpN1BHfDiCghyUwBoMLgbDV5a6WV3v
	 6kupxNHB3Ovc/kKXjZQnSF5Q/kJDyYuq60u7SKTH0C5wAhtES2nbbIZkVLFP9fEvIS
	 5S/AyDGyhAGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF72BC25B4F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171556514275.17198.14725000528101439661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babad01392574354026ba68133d840b33ec7f11c1e2c778722238145af312c76
Date: Mon, 13 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715565142
