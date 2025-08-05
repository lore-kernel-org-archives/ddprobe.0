Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC98274658
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754401194; cv=none; b=glgeTC7SieY69t3AuSog/W3c1+64U19tpfFk9CXFrotxonYQKYnb4PPiCQiX5x0ktELfvgAxK3ULXzHFYkNtMxUWAsrf1n3cyo3V7oVHVpB44n+X4SUqw1hDKeQjmlujig7sG4l8whvFmgE/5At3HHyNgVNxbZfQsnkWS7mHeU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754401194; c=relaxed/simple;
	bh=H4rT17ZTBbWNmiBQ0aIbLa18fQSegNnKIwfk8epEFm0=;
	h=To:Subject:From:Message-Id:Date; b=L5av5Yis/mZBo1/ryiPiZqY0nhYCWXjmvNspKdwjA7IRL3jmIXImn68mOVJe/ly5hTM4Ex2FPT97cI/xxmIR5M/rMUVfEPHTN2z96GxuxxCgIvC5u57dWwRIdxeBEJcBj4oJIVOz64Fiw9fWFVJNextIDDQnkZD3i48LjJw/wTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD7zxJKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD7zxJKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03E9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754401193;
	bh=H4rT17ZTBbWNmiBQ0aIbLa18fQSegNnKIwfk8epEFm0=;
	h=To:Subject:From:Date:From;
	b=PD7zxJKtbNefpv9JnT7M2plLFths1qK3sZR2qCE0DFg9fvzy3PEsbXvVdYv2hiG8H
	 xJqDVHd+QyVZyEZC8uLCuNzyP4U63rof/2bgL2GEHmc/1TFarlW4G34IUe62jt73mF
	 OOdLyHV+ksSzOV6U3m8TUzMOCmB/IZxdpb38Cg5KufcJkzW7Cd6/JWqrNLeI8S/pPD
	 0c9uP/72YQMU089jga+gcOy4ybKJWnge3ajqqKBKbvLqb1sGwr7Ab8NzShGNm6VYUq
	 ci0nPK+8rvRVrq+aKU1HINLxPhzrBiVCHo+nAwPC4bKihDa7+6cZ+ZHA6r6kTu0aOG
	 UO5DdKEumW2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB01C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440119357.10318.15820766694836478594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2173fa74324dd6f5d213fdabf1ea4095aeebc3df55876d264d97fe72c5e8169f
Date: Tue, 05 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754401193
