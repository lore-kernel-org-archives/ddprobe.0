Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D4ECA5A
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740196134; cv=none; b=VFRveJKNsYcaxCZraRnqBJg6C3Xb1pML+uMsdGZUasSG79OFNMCvmmUHCvm3jJRnjPDExspngNOihd4AaEtFC+uzhbaTkTNQ3YE1IHRECnubi5USVrPec/bPTQciImzLTt3MuOVRtoMJJMoGBD3b7z3KRKWi/F14SP/MU2eE6Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740196134; c=relaxed/simple;
	bh=L3j03dAAMLD63WmPUKyn/h493C82ykI2BD5HjEAh82A=;
	h=To:Subject:From:Message-Id:Date; b=kVCmXDpS+TIULnPiaeFalzT6GtBDbyaA69f5vdPsmCRXtsAqRc2P4ex720itj2d5j8xEP2SPoyD5aQk7L6WdHoxAef8eoLlwzhJJvRJf96BNlA/WIA7IzLguuDffxAgCXc++4f4BXwhPSzN3S0rJ7m+S72qmYqS7WxYcTHBEL1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey24wO+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey24wO+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC05BC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740196133;
	bh=L3j03dAAMLD63WmPUKyn/h493C82ykI2BD5HjEAh82A=;
	h=To:Subject:From:Date:From;
	b=ey24wO+6Dv4Zk8MEyFVeqAQ+HVcmViFUErOWe91anY3xUlnSyurvTF5r32uhPAyJL
	 09RIj8skPLWO7VbDttfL2LS7uYXV7pdgGzqrTaZwWic2RuWFMtnPzKgCr4cEW2rr1r
	 78RwqTuS1HTz9XCTK2aYb9TaQfRklP3TQ5rQFNU93uXBJV9En4jI0cuvOAqlIapFYG
	 SXMyKlr7OjMkZCvUi8MJVxZ0g/dOBKSYW/IpwSOpueu/+Ccd2BSr3KaxRbFqTHIs60
	 5th9Jh/V89VaKg3CI82Tbx1WNowsmLJq/voDph7mzrndl5Ys9iVSiTNU91EyqJMCD5
	 py5HlkU+yb67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CB8C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174019613365.4836.5454715380585648468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35f3bf8adfd4a23824ccee6ac6bfadb545d2f2b0832642ea7d97ee61f6c0177
Date: Sat, 22 Feb 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740196133
