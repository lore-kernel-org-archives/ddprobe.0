Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A5C37DE9D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783258714; cv=none; b=MsmzBSG9eRlm+Z/Q0nPGAH/deL+VINDQ/PcdPGIIjDH180OTiCZtdPnvJzSWYgqJLM9IDuv+nuiXl2+XdQByPqjeoon17cMMpVJr5RK5rpoCbekN234Cz1ePh9kW6MSUfPOuzNxEQaNoDJ4C242Wl0knjSo0BB+yAJQBSnOw1SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783258714; c=relaxed/simple;
	bh=RpNirz2uPtUp/ve094Bd9rlPiM0/VPEf5HbiZIKLh08=;
	h=To:Subject:From:Message-Id:Date; b=ckl+dCbqel5/3xNtUypvL/H+59ZFrqO/e9m4GqMm2uqOkhQD2S1M+EesXS3DwoS8wLqkzHU8lQs2w7qpzesKOpsmy8CVGJdUWcnXtgZwd4CX+UXjoAAJnLNwpMauxsoq4ZLUw5kLDL/nNJJCgV986xCnnbeey1/if9c+V+ofApg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0IrKqJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0IrKqJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB355C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783258713;
	bh=RpNirz2uPtUp/ve094Bd9rlPiM0/VPEf5HbiZIKLh08=;
	h=To:Subject:From:Date:From;
	b=Y0IrKqJLON9Kfx7l/QcwEjUiGIBEbuXHkGYS0K11RKbKtXYTIOb/gIeRYSv1DJ+yq
	 rmAbyKh5OqJNXZVriJ0P5etFu3+a53TYlfyRCsjWlrqwPDWvo8gC3Z3yCMNxjE3Bs1
	 ub2cRFg3sDmswk/BXmK0HAfWaa2aDzdZHfxqGJf8KTNl8zugYuMoQxQ3rQ/YcAjF26
	 lNzFQnhNzCSzs6V6aUQedaptfeTjPfbws+OwdIPuaxxO5edsKKBWyAjy/f+bpLWE50
	 H/o/GsMHbA/gPtgVFanMWJjPwSnPbX7p2iIMZvtXVlaFB+VoZZc2kTlFXiPog/VBt4
	 5Mhe597ZsF/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9470C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325871368.11412.16250237147607277522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78adaa48acd16fcf494c2461ee2ac7b4bd38385382bd5989a30e395d69747afb
Date: Sun, 05 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783258713
