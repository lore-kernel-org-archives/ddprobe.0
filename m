Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB9039E17C
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792302034; cv=none; b=JhwppL/11iyxeSR8nXfQCHnSHCmvxEG1xXtfTsA6s9EzKMCKd6fVciFY/QN0mkTPJl1TgV6NsRyFsrBCGb8G9QWFyUIK4oFNxp+N9rCQjw6R+CZaxLKtbOUYPVulCs8xsBFirXmacEqw3VgQ+eOF+RV1MpnZZcHLi7zBjg2H12A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792302034; c=relaxed/simple;
	bh=zYomufI5o+/QjfZyUuV8XH62tp2IEV/wT/CaKAIjXMg=;
	h=To:Subject:From:Message-Id:Date; b=PIVLYfffZJ0qCUzUDH5oebDR8DB4tTrR9IlqtgWH00Mzaxk9B+NW78/3XkGv4n3SIIJTPdw9fUhdqJ3rytQcrvRW30ijnivzc5yp4rBVXen5NuqdCs84r83e1Xfcut90/eHx7L6R11gfGC4ayl6WweM9jwWRIy7ld4SZ2nzSqvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQEmoXRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQEmoXRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A8AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792302033;
	bh=zYomufI5o+/QjfZyUuV8XH62tp2IEV/wT/CaKAIjXMg=;
	h=To:Subject:From:Date:From;
	b=FQEmoXRz3VOd7upb4OvhdZNum2ju+WBX4CKAM9ylPlmbJo/IQZrX2s5/OLedZi66z
	 VjnBKBOImmQnEjoptuOaXk53kqetfrmlsNhcC62s97obe0+QtAahftD4+YM1NDWwrr
	 TH+/Bd0g6aO7h940FQweBHGBwMGjS//5lu3zWWSBm0KuBRgKaYi5U8RkPJYmarosvb
	 9YuOG/MPFHpgwmotSHK+61016iUydD+cdTo1V59GKAB1oRVv8Do3GIkXW49rdwkypV
	 qpbpzRD0COLK7faMWFFpImn4X+k5GmrFDMJBe1rMnnF0LwUsH49LMeUEpFrPIp2NEE
	 3V9ljcY+vk3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E10CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230203369.16685.4917728483361655478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc3eff5f5b60865d78a434ca1c745cbd5fa0a45876fdbc73ec1e69e62810dc7
Date: Sun, 18 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792302033
