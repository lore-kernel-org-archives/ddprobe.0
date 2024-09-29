Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C28933981
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727584554; cv=none; b=kYGQWgadYesUCu8ZnJaj62d1WDQ2IzeV2X0ZlHXDS6Z8nSRHRXjJ8DCNA9IL4inwM01vg4YZLk4oyZxngvhHZ7lDxBKJMjMPBYRuUUPU9fdCXip8Eqi2SYB4AhrqgNMhqiV2jSDmsNWB//XwPcKz0DZoxkQqAWQXUvLSOcWGCLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727584554; c=relaxed/simple;
	bh=t2TpYISUv9xtf8Gs/mtsRfB2zmDIq5A8vcUT7rkHdUg=;
	h=To:Subject:From:Message-Id:Date; b=uvsUz3l28RwkHuac8cAgDMyrO+JdbxZ63oyV/ETePx8FbLW23eqopqt8hoY1V6LTD4HwXeY/zrDXXzkZNbgZMqrnx8lIOBfgIAfzWYYWWkkzq1LYsg0ZhtwSWigxI232XutKGaqHBfpOjhDM2HoXRaoS4DPmCSGhrNOJdgQ3w9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY3PHHXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY3PHHXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8390C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727584553;
	bh=t2TpYISUv9xtf8Gs/mtsRfB2zmDIq5A8vcUT7rkHdUg=;
	h=To:Subject:From:Date:From;
	b=TY3PHHXZsBM9KVguB83w44/GfGNgyUu/K1UTvHEtrF3bJdKa5xzWHq6P2TtII/PVo
	 AXAl/EtXw57MZwPhNbRxsIRHVUfMiOCU+ietrlTywgPiRVOhfpiKJRafIoR8/pD+an
	 BPSJq9kv2iNTpE84A+4EvaY9bojc3gHk3+tKIO2PUFkNhmI0dSVdgAeu/BcFyrGZ85
	 aJ1yqRzdA5hGw4ywRgiKuwdF9K0QaS4hGHBLOSIJ26/mvkKOCG1um98myVHWXwn7A+
	 PPoPRTb2/n7vhcoVpLFciEP3N2tRFe0hTjz0zhSab4ti2UfZRmXMd///w+WmuxVmSk
	 jqaYzAtf2qXoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C28CF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172758455360.10745.8056223601339520490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783918c8b1d950342420678443a05c51abb10c76fbd6b4cbdf7c78eca9d6e0ac
Date: Sun, 29 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727584553
