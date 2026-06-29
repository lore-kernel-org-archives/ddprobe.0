Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AE0BA45
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782711514; cv=none; b=VXQ2W/IOkNfQa4hjzMa0st7gQDGv2QMwSfETFOGiEfgC8BRxhxjNnMy6hNt5Et40zH6PEsCHkg+YLkmxqA0vFUUyJB0clZ+Dq/Twx3EGf3gR2IyCW/GAUxx1YefR+e5jK/Jx0q9A3LcErPeqa6TOie3koIGPrBJXIflf4iByHJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782711514; c=relaxed/simple;
	bh=cnuTsdWnpLsRhruhNehVAd4oHRzc/5zgYhAMtZmQY4o=;
	h=To:Subject:From:Message-Id:Date; b=u3uI1dtGTmWPID82V/FOIynW5y5CUMMrYtTKONrP7uYg+uDY9eJ3/c1q/1yaCru/sLuntmRCVUvfVzGm3Ae1AMwzDQz0lEcObImBVsJq5WYSTbm/AbDPWiB8TCln4+ulHKIUMfObwpPk7OZsKwjKmECF9rVPGfMrq5p8Tkdr8wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDctgOUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDctgOUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D7EC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782711513;
	bh=cnuTsdWnpLsRhruhNehVAd4oHRzc/5zgYhAMtZmQY4o=;
	h=To:Subject:From:Date:From;
	b=XDctgOUOFxP/NgYYxaM2TYDRqhcTYBUR335PazZsydyODP++/LtzhW99Aaf+d5qBW
	 tXHxsZTujefZAqmynNCSqkxNDgm2/hWk3Tx3NqaLnUearAAlihn2kTfRgI8igW7/z+
	 IIwa64kFOHpTbFExmG6fdmOiCjmuRP6MZXFZAAtY005PpQSACUmLZ3G4+fBVF5glja
	 68WjhzJNYAaW6sSN5DMZFE2/UW1XhgFS++kusjUF2hindhlh5XrHRt6T7RVJMd+Zt5
	 x5U2J1tCr+AZWW0eq7jKrKyDW4vQjwRakXV8FIOPIdNfyw6iuMzqGsgtqToSRyIODP
	 jS1NDvyo/8rIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B333BC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271151370.20013.13340053326733351857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f403bda1f994729175f973d11560e6e359c8ccf7aeb6cdaa0d11ad63dc3abf
Date: Mon, 29 Jun 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782711513
