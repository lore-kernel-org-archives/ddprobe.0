Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384FF15A864
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782523714; cv=none; b=tRLTRX5iagdrYYBoVA/3xyRtH/OcqxW6Y65T0YsqShFTtjycJ0KMf3S9wFl3cmLZEv648P7L1irnaRo9uqOHB9vIn41VpLdo1rDti20/ogZmV7zdNWM4F//JcYuaNeQCMuuuuybaBdg01+cUdlwXbp+4kv37uwzdNNTfDeKQ/9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782523714; c=relaxed/simple;
	bh=XgWC/oDf9t4WnOlrvFQNuqJ1hHF56b3SAFr5gE9Aa9Y=;
	h=To:Subject:From:Message-Id:Date; b=TcET+qtlrWyhj5vRsrve2aQNf5WKPqdHflP1hDO78ACYEeFv9M+6QZL7m/L7Us1cEJSuvir5yuJKkrmc8FtoD1VTKOnpiNXQFeVCF5K3O9oeC2DK5OvnN0mCqAP8wVu0twUYutJJ34RoE9WVROOJDxGK3lWd5OgxuwkEVRvf1Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfgO8Lfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfgO8Lfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CB5C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782523713;
	bh=XgWC/oDf9t4WnOlrvFQNuqJ1hHF56b3SAFr5gE9Aa9Y=;
	h=To:Subject:From:Date:From;
	b=NfgO8Lfa86hsLImCmyxBVOTcadI2iXT/ICxBIehRdrR/HIzdPm/69JE/KTyOzTTfl
	 Io2eyyISKvH1q6RZO5C3E/d9O/v803Rh21RoMjUdVaJqGN/iXTqbacVD5m7qKQFfvw
	 Hxx5KjSGB8HI7/vJ8XtMPVaVJy8rTwjPF5Nz9R6n/XrpParJrUk+a639M3gXwbZ66X
	 sUiHFvaoHQoaRA53arTesVoe3KPN24PVh8j4ZWF3KQUvJmP28dFx2+sB2bfvCvwjNi
	 5C2up+jjXdrduayYRSUiLo5sCljTXm1PoLnnMZ9XdizjovLDD90OX8hoF1nPNSOaZQ
	 NcbznFWvqG0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7B1C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252371372.17333.8075062071800372624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07538508fe832f8c40e213fdd318654bb91be07388519640bc3cbbbfb922ea27
Date: Sat, 27 Jun 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782523713
