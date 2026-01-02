Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DBC179A3
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767323034; cv=none; b=JlShpasseOfBFa7n7wfP7rAuAH2/51nXBfGhXJpbcpEWqiEKhEyBNgyYqgBpawh7+lItCCXU8m/KphPZKx5peoaesFUMKb8yB2y8/W5y/SFDFkXKyCMD7VT8fIgx+ZsVkiImcKcEIYgkx9A4hxpdTbZfJtbYplwV73yPoadA1fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767323034; c=relaxed/simple;
	bh=rOfHJgQdlIPW0XflgmD/WsKo11zX93e6vLkPKrScNYg=;
	h=To:Subject:From:Message-Id:Date; b=cdScDKG8nz/xZwxkNVol07zpIPXTSTvtAuRAEYCgarrHUMy0LI2C9V3BHHkSVahZvuQ+xJaSAs0dH6tp/Xp98S+NfOw+SOa2IdylWAJvrlLcIypSlpEeZvAV0T+0VS9tcU9itRg473ctx0FpCixsTTg3yeFVzsqGRXq9fa5zdc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZD819w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZD819w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B882CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767323033;
	bh=rOfHJgQdlIPW0XflgmD/WsKo11zX93e6vLkPKrScNYg=;
	h=To:Subject:From:Date:From;
	b=lZD819w513ptMjWSUD4OAd/Yey/x4BlBkhWlPBj/fkRGydzGQKiSi0EzsPUAlGkg5
	 QuNXbuM8bsHbzx2CB//rECElY6GldqLFOAFLW3wdUzbuYSz8sbMhhIRFSsMcaAqT3S
	 +RbTJVPi139w1vmTyDIHSiA6r8wLbD78TRpOqnKfJanMSQQPV4TFRJBv785qBaUS2a
	 Z+YKX5j6fnQ+WymGBQ5QRyIk4P7pCHeo2sOtzdXxnIt7rETQzG7XX+vKV4tT75CDvi
	 QM72HkVO1ZiNElIcuffYjdMZsNl1AWsaCS7h57x1FrrHakitInQjLwjCmNMg9mxm3G
	 cLPB6uXTmTlsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0848FA3725
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732303363.25576.9774685474639705586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbd8777bac80365823e16eb10a4e7b8c9571739743a1f48a287a73ec8247df4
Date: Fri, 02 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767323033
