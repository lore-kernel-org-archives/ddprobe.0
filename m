Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DEB371056
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783082314; cv=none; b=GoO7Kcy/LundZbBi2i6ugnIBjFT8C3FrDNN+yF3mncp7vZhNFj+5quB4D87bnKS2W6wKfNXXe+ATwPmmAMtejz0m8CdI7CtzVghk/llHPaH0WQpv5E+V6gTEc+MaGjggSN0Ov3YK+gMRVlpCcSJ0K4C3F9c18wdShtQjkLBviAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783082314; c=relaxed/simple;
	bh=eVxptfCiwXTWh4+oOcwZ1yS6IeVEZMjlJQJw0/O46Go=;
	h=To:Subject:From:Message-Id:Date; b=OZtcshUunuZSwTLTUkgE74auEoVT5IcRdzkTGLyBD1WBPIL3q0vd/Xs8m7KN5azt3k4JsS/U0qtcd9+nuyOjTyFdpbsmkxYCqCYS171CL/0fZnyBiLNivgt6+5AzIZXA4bIVJkNvL18POlwHw7NoDMGNgdyWDW0kcA9oEzjdOzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YW2w/5PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YW2w/5PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2178C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783082313;
	bh=eVxptfCiwXTWh4+oOcwZ1yS6IeVEZMjlJQJw0/O46Go=;
	h=To:Subject:From:Date:From;
	b=YW2w/5PWCWL3ive6i8beZvUNcF1JqSFUttgv/6vhRpyZ8supm+yZHB681ARnVPxRF
	 UcChSmV0UCXPA4IIOG4/Uzelw62t7CIvXyZrACaux3Ivf6s4Vgwl/JnyfbT6jv9PLM
	 n2kkCpoDApYcrS0+fL4OAhxvbak9w3CkffGsDnNUCjEADV4XyM7sro5xluS/TZPCts
	 1x4EOupIZ5AaB3IAWcrJNIi9/40vMXWFLY6XD/zjza9PXXvJNrrKbwi54lBMH0bEQz
	 ZNqgnvJgwQNlcFOqzVtsGbQyKpsJiffUfXm76xHHksca18Esiy15MGkXzcX4NjatYv
	 zkdnnuL7yg+4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB80BC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308231369.4919.12775661689346777019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266604eaa9f5f8949f227a861e701be146578abdc1e6fb8b3bcda7cfa3be946c
Date: Fri, 03 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783082313
