Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D783282F3A
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779744154; cv=none; b=s6UF30vjgSSGbiBfVCLDxNiO34PaawPq9+7FJaXxel4uXM2Z/TzD2tJdcEwpzaYxy++0bPwxCcgiDOcda2U4vHWHmjuAfiuj+N0s/KcFtdrZ5uJZCD6MJcJKMwsOCmWX0g/f2+Q1yiuZx2vv2P93fv0iH18PWNEuwMPpnCDa05w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779744154; c=relaxed/simple;
	bh=J1ZuZUrAFcsduYGhi/zc1yyK8BsBI3qu0dkXQun3f5E=;
	h=To:Subject:From:Message-Id:Date; b=Nrkqp8TO5D5sHRFoxEq7ypuQNWi6CI1cMPubsryj67u9VDesiObNyExFh+WJyZSVrHz8eU1+uUeSzXyHJ1vSvuFi3aoqQ4Yh3eYXqLBMINVGZCQXAZzzulAEVElpevl8DLKjBPdXRhX+Ca2tPziTKlazz6TxJYJVPbom/KAiGm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAOrOMQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAOrOMQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3914C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779744153;
	bh=J1ZuZUrAFcsduYGhi/zc1yyK8BsBI3qu0dkXQun3f5E=;
	h=To:Subject:From:Date:From;
	b=MAOrOMQ3LdoDAEWCMiB+14zPNV2lZRDe1afsP5+KirPKR9LYczFzTLBCzTzN+bOIp
	 lldVPhLuCgmZ8B8q7O2+IADecdnwrges8dgsFIwtQYEL6J/zb8SxG1XYbOZdzg4wkB
	 ZuLei08f9Di2qvnMBffxg4kWjHEZAJRf208C//aUDDaSGsLBAEiLZmicLmrz4SE1OF
	 vtIBr8RQ51BORevLg7w0SSOzUesY5VMPI4lHKv/+L+uJnHta8UKo234PkGTH4XvJYc
	 8YChzuGNCb0o9P7TuBSH09GOl4XJYPexJBlFJ5cz/o8TpQifX9VqHTN2b0w+sXvH32
	 cIUCvZEUu6MNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF09CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974415368.19410.13090842082633605995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde69a2339031315e0690d938e7eb777edbbe034b2ad005e4ba76cfe0ef4c421
Date: Mon, 25 May 2026 21:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779744153
