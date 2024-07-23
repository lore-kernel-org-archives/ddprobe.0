Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D17C61FE1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721708754; cv=none; b=FWsUNYtU3j30jOQ7hxSWmwSDrSo4AZzXXwv62AmIsTlyYR7K4eY7qOdZvZVVTABdfA70t3tj5/Ivrv50xeaZzurJwVm0uVfluSztbGtNxuxsLZE3A9RjAIyOv4SDtesjK6Sru/lTHU/0JhrYwr0/pzU22sbERFWnoVGKLbgD86o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721708754; c=relaxed/simple;
	bh=P9O9AW9P7hF9CixXNGa3pjuV7l1+TpdRRqRroKw+QP8=;
	h=To:Subject:From:Message-Id:Date; b=Zt7DWcGxrD5Vh4rfAopXSbbSDzgNz7C1jCNBJyDmrqo6Y9RI2cD24zLxbi6afIfrMEWWlnplMShekidYA28gAh9S5TDMyYmlYZXtXHL57LlrOGsIO2qICT3bZSwO+XLhlUb2tLL14dqD+2OiW6MyiHEhy2feVeKDjfcopLO4xTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKDuonmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKDuonmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC76C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721708753;
	bh=P9O9AW9P7hF9CixXNGa3pjuV7l1+TpdRRqRroKw+QP8=;
	h=To:Subject:From:Date:From;
	b=qKDuonmdKK8ssA1V0VBJXiztAGgBCEprvnr/4/Cp05mmI89WP3gtNMvrt6/G0PjaX
	 RLwkf83kxBzXiRSXaAaDLOgVxe1E5B4lBDpDYzWCsuH/8hUSDQ1DZiWMSW/kmRYuRr
	 I7qotfz8kepX4rBhGmiMY3cgDk3w6YcUxFO+/GAkI9RGNjTObdFlDqpGHSCxLpu+XG
	 /H174qK7czs+GiDxqq4C0OeTxl2z5DNlbtum8kGZ4o+LX/18If12cfr0Z/AcBoHOuB
	 VdcSglkZnOlG6VPP/6ukTgskqWaiYiU+k0ziZhwhVUdiHKv6OIelohEEqebw5GDyqi
	 r7D4QR/YWjaqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021BC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170875358.6507.9622690632289864640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b49581e649da7531c12f78cbaea26cee6b443039f294368577c3d89960314c
Date: Tue, 23 Jul 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721708753
