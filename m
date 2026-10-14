Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB373A9DB2
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791968434; cv=none; b=pSosts5nVd12m86OAYqNiPSg03M3Eb6lpCkogSeVNb2VKqswPiSoMnScegeDwVGzFwKJGerrPUIly6B0BYvNKOLYjlrrUaZkDUUCqtV4pKse1oi84W8d2eU/L8vr0J6U3i2impaXWVX2SDhBpMuIo2r8P8bhNTF0enK0SQhLLvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791968434; c=relaxed/simple;
	bh=p2t5HVX0duYC1cPfleBw5NgQ22zQztvWSv+XAL+Clkk=;
	h=To:Subject:From:Message-Id:Date; b=RTDcii/HvhtdWeduC15r55Lg8XZPdPN26n0zK65klRhoqpblukrsTLgythrGAv3rnruwm2xjjXF1tfiFpfUAxPEFKm11BUEY/+I4Si5dBaT+q/DRaHXE11YDSDcHsrxtFXiSfPV4cOX8GEBKRXV5C6h2bBLNDqok+3KLceesacU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eueDm6J1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eueDm6J1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C4BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791968433;
	bh=p2t5HVX0duYC1cPfleBw5NgQ22zQztvWSv+XAL+Clkk=;
	h=To:Subject:From:Date:From;
	b=eueDm6J1jH0Ys2/W2uWyQjV/dAARn59JNR5OaIQJWRat4zLzGLjq4ZAYvp5RMvfcp
	 0ONqMh3j0Gckn7zPo0Xi4P5NWR1fy3A0z4GJDiGikb90MoT7yyGqcapkOVzBybG3nJ
	 v882fa1OxIGIRrCDIthKYydGqBjAtk7EZHFcD5OSCDtYlIF/REEZGr5l6FvEaNOBKl
	 4P+H0ptLvbIhva3q/0WdktCOiO7cw9X82kgorC6QoGl8VkGhevfhi5VwvgJIQ8KPNJ
	 yHWPUq07YlHPrsItb9vbBFkTR3lnmRuqaSAUbIFfIj66lfbdYt7Y+XG0PTsGLEqy2f
	 uUP8cOO5FgYgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF8DCC6B27
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196843374.24922.17631163099581603603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7757eb95aeb453537144adefd89d92e0f508158b9f63559e089c65e30e1b2669
Date: Wed, 14 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791968433
