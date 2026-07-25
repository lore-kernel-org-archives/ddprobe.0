Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD0743AB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784984434; cv=none; b=shgkjP+BiNU52FEuLbxIDbZlnd/39WVmFR13oAzICrrjNC8hKC2JemjEq6WBMzFnPeqxTG1E7+t1Wa7Q5FxtnumVQV7rUjiLoUiRuE1OujqKluuT3KVTtt4YzvnVTlu3bMHcshUUTw3IpkUfWAbORykq+uzvAufgThykIvP+tS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784984434; c=relaxed/simple;
	bh=00n8unywRpATdfIjunPe9mIu4oagDPS9D+r1Ofjdib0=;
	h=To:Subject:From:Message-Id:Date; b=Zoh/j/Kp8vuQI8H5XFgliveBAxu5JsvqSrn5746LxY3PRJZpLAfGK4InH4xCQKvzAxOUU/1IbT2xZ2AnsMLdQh7RzYgwm5WL4ZUoFNXiaz0oerwSPk3GzkaN096R0QIHIgYL5jSy9or+j+ETurJNu97toOhur7N2IggoBADFmdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6Fyljit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6Fyljit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDDEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784984433;
	bh=00n8unywRpATdfIjunPe9mIu4oagDPS9D+r1Ofjdib0=;
	h=To:Subject:From:Date:From;
	b=o6Fyljit/y2vrZlBAt714P8cppOaSN/eK67iaL40Vj4mzA7LJco+kOCKHuLlJa7y5
	 /38cysLuEd2ZtC7cG9ZXwcbeKOXpJXXl1HOjFc0QJVYCJ/vOEMF70wlk5Iznh8FF2Q
	 SbKhE1yHkTuQufMjGK6tLwlwURTjcc2WJXJw6yHL5FcBw7De45Z2oJDl0AZrC8mr4a
	 X83ztJXFZDXEDpa6yn4GHXm1X+TWdRmEcwjq7MzzRyh30kHCVt161+3PFglKsM6eZ8
	 3ZECBIY8zMrWd+QCDZIzV1OezAtgHYDZo7REaJIr8aiIe+RlA2929qGVfXH7dBuos+
	 mMrisbgjdMvpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A891AC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498443368.25079.16389084230063599195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149f4c0050421f8b4d2e832edb9eeb8330839c1f8bd41ef649098e075b41aeea
Date: Sat, 25 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784984433
