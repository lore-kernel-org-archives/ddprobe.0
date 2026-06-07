Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FC442A82
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780876474; cv=none; b=CCCRqPHZ/mKEL/wS5HeP9FGNlG2sDAikE7qlooGc85MGgO+QHBuZ2jh0T8xWCXoP69eG004qWrX1AuDvBrAPa06dOyZoztKz0XSFODbH9q2/ghZeHAys//46qZnVY1SxDXy++0HTym52c3wgh+BqjwE2IleSliNyP9c+5p6aiLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780876474; c=relaxed/simple;
	bh=YsZtfQUF249KPQ4XxM4triwD3XU3eHD3zsbky6uJOLs=;
	h=To:Subject:From:Message-Id:Date; b=KuZ1WOYlEE3SgdMCWCM4oElB6/6Ly0bJwKHsJFna2NSlFBrP54YGEaB6g0RYTk0priX/7dU50jk+kiorCqBIP1JOpYjNTFzOZO0E7Dx8dvLhR8yXPUqSexK/aZQG/0xp/GFMpQD4C8WbTeGZRvEvZVyDBwCSaZiyZc1GN/BJwVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgNZEzmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgNZEzmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9763C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780876473;
	bh=YsZtfQUF249KPQ4XxM4triwD3XU3eHD3zsbky6uJOLs=;
	h=To:Subject:From:Date:From;
	b=AgNZEzmOedn9aLzQr5djChndjdveO4nGKMFvXOrCaOMzrm4hUb0rCCVQ4ScAPiyrK
	 MHO0p8zR1DuNUtui4Mpn6QdLIJ0DmlwbSZoQW1mXqyx+LkAGLCKoBVbt9zpgz+IXS7
	 EyX5Yh1imLc7YRyVLkqJid3aNi0ZmXx8GAwDfLIspLfap8OyJ1m3kFRreeVWBKNOTD
	 CPmVzvVYVijfTKOd8vAUnpNQvb9+QNa81f2tAV960VSUyoCUJwehjkgOj1fpFDBZ35
	 GwoN++mwcEC6aYVsR7QaTvFIkI7VLKhGKkArD8XmZvR3m6qw9+lGXDurv+o41k+/GL
	 9YTMXoTrJB+dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D4CCD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087647368.21893.8435615185302759382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8945df3dc498c26b646fc3cc7c86078d4b4da55d98d9106b861c8d48cad8c4f
Date: Sun, 07 Jun 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780876473
