Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8E22C0285
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775865454; cv=none; b=UQ/ZspIB89smCvXczZLabavcYtldOK+SjCcgC2AgtQLjd3x9h3Ur8xK78e/+++c9Eli0Gt+vZI8Mt6ttH9YFySuvFpVkEqTdndUH+0To2OywDtyNduXMUyfNkkqc0iDffs9TUklwX9vwOWH4gf9YO5oPT+hl9G77IqTi7X+8SN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775865454; c=relaxed/simple;
	bh=7bImexmxM1XMRTgGjA6N1nxW+8Nzft6IFX4CEKSxAbQ=;
	h=To:Subject:From:Message-Id:Date; b=pLX+7kiAJxT8tiKKmnAeHE9JrCMc1lpEheImN+gXlafP4BTDoTTn8iQc9dxeYSq3fE4vyKKm8Q27BmAU/GfwwD0k3ozbseGa72rWV1huzjkyGMU6LO4cPC8HYBZlzHClPgY7b8Vm4P5ZVLHSaxrDFe8e4R9QmOiqNtOHEEHlKcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0Y3wkGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0Y3wkGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B979FC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775865453;
	bh=7bImexmxM1XMRTgGjA6N1nxW+8Nzft6IFX4CEKSxAbQ=;
	h=To:Subject:From:Date:From;
	b=S0Y3wkGtb5LBeB2xI71Hm78ld8bzusg9vyqy9lvuHGtbg2Zu4kjv+c2ymPakQnzVD
	 wzPMZxN4d92sD4QV1k76VjPjxaZ0q4eL70wi/Vn8+miwgFcLQZibdrHyNAM+GAiIct
	 4f6NEW6V2Vt1ECORNX1qQukDayhKOtTY1yk6HRJHdQWjvnR25gO/1rfPBIpGY6P4aZ
	 5zfFvbn5I1PV8cGAaTu+PbXJGyZBwhsadXMIFqRURwfRWe9dm1du/DcOjYURsnLuRX
	 jHPq2g3TBk0/XuKQ/rIiC2ba3zIcsYjZ/o81x9VxsDr6YPpqwv0qx/TvngEcUZAb7S
	 S3Nit1hdIYeHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA416F45A0D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586545368.19846.18036645098920566582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513ca0e9c7fa7f2eb951aff3b7dac5dcf79f5825d914d913bcffd86b4b0ddf0b
Date: Fri, 10 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775865453
