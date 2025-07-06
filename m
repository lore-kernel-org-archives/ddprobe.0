Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A7D2E36F7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751791794; cv=none; b=tb5zZhEhUM1oGlzkWwajMhhVEWBCaDNPkLA8Oj/uQ+Fx1M9J1mEInw+Zaz7ALe+RkEljbzg35GWn7luyC0vPZKjDTuu/SXxNmWuczbMiMAyOrSlUOy8nT3TLAuKuhp4SBjggfvrfpFbDVPGr6mW3pVnf1hGOCPv8yKh96eC4fCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751791794; c=relaxed/simple;
	bh=OoO4QR8ju0z7iVbyaC+G33b9e1XJL5I0eSojIyo+9ro=;
	h=To:Subject:From:Message-Id:Date; b=SDI3QgwnnU+hDIo8wAoJyCkrDlAD43VTBa6I6Oe75qpqtVPwi7WkTJe2KudZTgt/QhzL39u1cm+4qrN8yAtFk3fWQw674zFFGELIEbK7qFTP5vJ00n0s53EePGdeA1+rm9f2sZqg/B0AK4OaztCtdBKqtP7FPTPKpJJP3MX5Wo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKiGQHSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKiGQHSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B3C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751791793;
	bh=OoO4QR8ju0z7iVbyaC+G33b9e1XJL5I0eSojIyo+9ro=;
	h=To:Subject:From:Date:From;
	b=DKiGQHSWaZrZHwMAJZ3A+JoGu12ax7EBaIn3MZxMUj5aDDrgyZFlU7kb9xKkmp0hC
	 m/Jt/WQK2qwmCy7xlamZ36Y93Bom7yuokqo2gut5OaC6+kG5nJjDJ28f4eS060OPYi
	 yrmosOuECY8FYLAKkTBnzokHhPLtVs8rr9qz93Qpo7THZf4HBuSLjjqV3QKkYx+Qix
	 m7ZgDMXgjspSkd0JheuajdVRl8ex/iJRb+x2HJXEL3+/Lt8ZdmSf7NCNRWTlqJYzOM
	 D3BcjXv2RMp1RUxjyb9En0N8LVcpVbRFIrsq5oXEJIFa7BQmKJOGll6FaLWOo/ZaHw
	 Ge+QFXrK7SySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92589C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179179358.18741.14614875264241768750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c502b1c52fed52dec37aa7faccebd05d3776a3600bcbf2d6d3da4d44c57445
Date: Sun, 06 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751791793
