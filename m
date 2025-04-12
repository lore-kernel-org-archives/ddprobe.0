Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6588C17D2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744436396; cv=none; b=RfZ/bxLAxTLbGmlJWBYuAnwGlCP+NHuT4cO4UG0GmXSgurno1w9i5LVGkeFR/GzXluIIdwALDYiWuSEzLAmx4yIWP3XyAsi5vlnG5MaPWaOy1HAGq1/L2KCV/ttDCKz4RH0Y5bkvuZa4ffY+VcQ7dCLjvEv0AQRxbhJTZC+Thaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744436396; c=relaxed/simple;
	bh=/9PeYE2twwgBF14NktSSgqwj2XVoEVgm1DlyDbiLXKk=;
	h=To:Subject:From:Message-Id:Date; b=RF18XDk9nsEasuwBgcsV9jcuCfJVLPENuyhPRGX+3EfVohPz5CZYjeTSiBZ4tgMqFwag6PXV6tbpUuCF+GQrSxDERjC2Md0hFxoxGcVuPPVElPLW99mliwkgzzcbU27fKmk08FAcpCArJyzpzAfzpqARHvC+6/F1ay+hhuxmvKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrfTBmBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrfTBmBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFB4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744436393;
	bh=/9PeYE2twwgBF14NktSSgqwj2XVoEVgm1DlyDbiLXKk=;
	h=To:Subject:From:Date:From;
	b=rrfTBmBHLy8AQjKGWNEiEvTosRizZC56dAc8WrwuTY0Z6eVaJV0/L45z9dqiWClkN
	 w63/0PV0hXWjlTi9Qyd3yWOul+wg/F0N2iuDErjWVZCN7xFEcrvPuHaPDr/1vrBXwO
	 IhzWO349qyq7ouW3EpuAgtVpQ4YotvHUWEmNnArC5gC7fxUE9rk+zYXtGQgfLGy6Yc
	 BEFE5PdJM1z4QAPn+KXh+TFp3+60XDjxSEfETaighiBAOG4T8vPakh1j7V9jnjuIKd
	 SuW1IlU3walxGp2ZPInJb8FKD0KE0xoT884N7X6cpqEdgpYEERtTeeZGX+thVRqL59
	 kwbnfEZcAmFjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4796C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443639364.27096.5539856202239740120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b524882fbd9d1ff180eeb4dc042ac43e6c55ceed15265c08f90bb93e1850563
Date: Sat, 12 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744436393
