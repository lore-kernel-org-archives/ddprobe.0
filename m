Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2468238F80
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755396594; cv=none; b=m4lDNnsDVBakk/dj6fxdAf3DSgLGpGrx4aFGF1j2qQTLU3/2666Gof+DDlwCRsmJAwPMMAAxW0FHxxVCCkibGvFuHX4mZpMS+nSTtKnYjK3eJabAwFxfTAHswh63OL3jHVs/HoQdLEKe7o52iitMhcaoHT2AbdaLU+hU6Ly1fZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755396594; c=relaxed/simple;
	bh=OtWMrcohkZM40m1Jprdt1sYsEfmpGQdWSnvN5zTH1wU=;
	h=To:Subject:From:Message-Id:Date; b=VDuvlZvu119EMEVHFR8P/WCeurz2GrbIdRtQkYheRRJlWG90ybujXNszVNi8bVNc8LpplEWx1tTkNd281NekrK5eTLwry4ygT3RcMSKXPYdlRKkAnwSDWQsSctPe0bLfTkbVzXHxMM6NPr+l4pWo/FGlhTVyC4vSaWzL3p1Av6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9oIBOCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9oIBOCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D3C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755396593;
	bh=OtWMrcohkZM40m1Jprdt1sYsEfmpGQdWSnvN5zTH1wU=;
	h=To:Subject:From:Date:From;
	b=m9oIBOCVSEluw18WvJuR1JbPQzIj7Cb3CF1jERYGhzG7xXUbjd+XwdbxssejSOHWq
	 KaYnT+ctXTTmMo/UbD6q8FxMi5S7vQCBKK7HYpjf0bQdyFAaXSvlB8Pm0U677cg5uI
	 Xs98U/mKXgSBmF+2a76J8gHYhMHznKOipqKrrZ2xoaA6L+y1ydWfzAINzo044xGqQn
	 BEL7Ez8d2H4wrQA7Hds9ky8ApJVprOcXapIoUSazHFxk7nO1X7/k0ylCnlJ03EpwED
	 c1jeEodwlxAWdqnUPnykO3/tMrS5+k3ud+n4E7tNkF97oMD2eK/er/3W/5scJKat9o
	 IRnB5m4Uy/5fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F2CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539659357.5866.13422332563367483751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac920da63ded68101a330e115dcf35382a3aa5aa39abb64e6b8b8032e1b46458
Date: Sun, 17 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755396593
