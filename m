Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8BE29B0
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745668194; cv=none; b=Ew+gNfgmb8hAykZkoJcSFytYaaP3gBdD0ZTcMralVQW+Bf0O0vR9wvUvfrAcUduk+pHyGMV417TUVOkNQWIiJSfIkXDvVIHUuPQNgZjPLGlFG2Y6B9A+VNSR/w5i2OODn2TseaHsH6/DuRWZRXTSXr0NhWkL7/HdHOc3sJykG0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745668194; c=relaxed/simple;
	bh=Ks3rBUePdfq2cLaFFtFPa+/HFfliVtSwc5G55QKxwmw=;
	h=To:Subject:From:Message-Id:Date; b=UcKitiH+qhoHHTre62u8QuJjivQt/IjZ3tauMR/5oAbN0KOl3tzCJynXw2Hxm+RDJBjJykKSeuQFGaYg7NFKv8OfE8RnhFqJNYVOLOhM4kEDcenWB/iifRO05cOTRsZ7QKHcYjWqzP8obn24wCDpiCmPx49pOFAzYhUKUdK37yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyLSJjdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyLSJjdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5691C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745668193;
	bh=Ks3rBUePdfq2cLaFFtFPa+/HFfliVtSwc5G55QKxwmw=;
	h=To:Subject:From:Date:From;
	b=FyLSJjdFJcS4l1mREyxD43Vtsel7kvdlqKhQhRQV7tyG33BSUal/kVDTJuLp9HG0U
	 HWoUpwLaf3k3BdlMO2fzJh0s7j2WYHomfERPiaQbO/i3TBfW7tYJfQTzGYk+TASkUj
	 AV6WN7us4k+D1RZF/LFm+z1QZRvoh+vFjcet4PA25EcDeE8gIA7frC2uoGeJzyMRJX
	 zQGdhTwP6SzGptfcnRkRp49v9q0VYggNwi2hB2VbKjzpYBT1uc0mKreRkTrV8ScMzS
	 zojQzUuOO8SgQDEpRs45S8wFw2vedyw5BdYy5Xu+OJ5cnJHV11PC9U+V38DrLILuVg
	 l4ywhAWFupASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9344AC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566819357.25941.2794905993190901887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e4cd65d74363b78d3b706d9e14e2676cb1545aa3d31444a25e2f61bec74173
Date: Sat, 26 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745668193
