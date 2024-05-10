Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5460729405
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715333543; cv=none; b=lSbiXPk1EIcn+TtyJ6r3vVD2/9aLU1jVaDiyA8Ybz7DUsWF3Hklo8oVkKU+7VE17YVcqkYtzpZhsCBZSd9FdnMBG/4U66QF7yqrz0RBwP2+QVAHg0wx054vZ/3PvU9bKNyVtirjit45QmcNnXghgh83lA9F9NRm1Q3W+mm2WidM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715333543; c=relaxed/simple;
	bh=vN83q8os6r1sMW8SJregJDQ+OhpkIHADGIbwiAa5D1s=;
	h=To:Subject:From:Message-Id:Date; b=mhuapdXwxcLz//G0J0PA4ovoNueHAv/EMlMRKlwrG9XIqWglNxzhb0ZJ16+DeOdUpiJpd+6OiVPdbp8rtBWudciYTDZ2mbLCu/VtgYSH59FsBKpIqkeWs9kxqYJpjV3wqNBJ76oLML9FC7v3yCcf+n2GLcBti2h1I5345A/SdBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3bY0vk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3bY0vk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4ABC2BD11
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715333542;
	bh=vN83q8os6r1sMW8SJregJDQ+OhpkIHADGIbwiAa5D1s=;
	h=To:Subject:From:Date:From;
	b=U3bY0vk4ArKLMx5huFeQDJoHuh0lmxeR79p0W65jgCQiukqvvNjZoF8R3IRrrNShW
	 x1mWbKJveFJjyxUJIr7PQXqdEtN2n6tycN85BZBClvRQGZi0w1/ab3s5CbPe8ul6LF
	 goLFr9sZpX/ZsH7Q6x2fWNMsH1Wu5kNYLd8g4ZXDw4ZJJcr0p36e3//NnknkuHDEpa
	 483LeZvY+Cu33lwfMAQfN+ZiLrkHDMlwCWoaTGERMxEQE/NtBJdQO0tM4EL+uY9O/+
	 oHB79szaut0ioHPULsC1vTy2wHFk92+t1uP1eO4zS8KXGOK2fumBRNme+TFIN6nuZw
	 jZlJ9wcUBOqMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C773AC25B4F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533354280.30338.12448950543706253217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b43628987b27d1fcfd394fa66099d074df9adc1219857957980a6a4b382efa8
Date: Fri, 10 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715333542
