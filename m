Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A7520125F
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786904434; cv=none; b=E2OjGSmKF2KeoC+m90l2eVcjlhozLsH8d3zU2NuRToHW41Xclz+T3d9cNsHNFNrrSJsS4+nhbsd8WgDoXKZvN+cxXAv+hIecr9/JJ7/QnW972bxxoFXXH4ovAKg/oxU6KBlFEdQTs7TqwTiwIBognxeSML7P6vR3tvPINdWFvzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786904434; c=relaxed/simple;
	bh=XGTd0FdWojiuA/qKTHyQ/IQElLZZs7b8uTtAuQB7rc0=;
	h=To:Subject:From:Message-Id:Date; b=rVjZxmwCRfZTWJ69HcDr8OcXWM4xa5+pAt3Ik0u+CSX8MTxmzCxfY/Tkvmw1zdY+f46tEbZSbznISrNDq6E1mNw7LEsV4dHA3e9A19PAp97J/JYJFCaZ5PCRUHSwfbhbCEKvOS6xhDz1SACdG0a9JhC9JhrV+686vX9Y6wOipjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpLZzxcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpLZzxcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8313C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786904433;
	bh=XGTd0FdWojiuA/qKTHyQ/IQElLZZs7b8uTtAuQB7rc0=;
	h=To:Subject:From:Date:From;
	b=KpLZzxcceXaRwL15st+zhnMwVbaoLE09Pn79KkCXVyhhyU5eh8KzPz19CBGq/32UY
	 rXM2MT/bY/mcuQlB6Km/KhntqHDa4EcwKMB8PwGB1ujsIWIP4yGwFDDJjZxD0t6SFQ
	 uLOP9JggFjfXTli6haOC2MeHT17I49FKiNXkbTIKPWuohXsvPq/pIbCaFEV/M3d0eh
	 Af45HD2cNdCvypBO8/8r8n0XYRtn44FtIeIXmG81VuqhupEostDvhiRUj5v3ruwCWr
	 hnLvOfslQYF+nKJQcoOom21RqgoV9yGIO29LjGUmCmZmGppHg0BpoldlorSF1can/+
	 vVHHxxm8WrnEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D20C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690443370.14164.7032359498485135574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bf02fecfb2e679cf9274706317decea6f54773c19010c2395cfa3de8d6f9d7
Date: Sun, 16 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786904433
