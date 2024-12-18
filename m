Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAA8155303
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734510354; cv=none; b=G9lcK9tzgpGMwMQ4FNvi1OGihQAVuslgWPb3+bKq8FVfhqAZnGlhCEEvSySVuTnRzPvzF1c3KitP/iPc5lJvqFpzBgK5zDQ0tf9HgpM1QtfDDuoxvJPT8brbOOu5AHLG4hULAC8/3Ch4cgkNh61r0iYMuyz1mGcGbTt7BOlI2DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734510354; c=relaxed/simple;
	bh=1V8UEqC9d1b8TC6uyaGOZ4h2clwB/qr0dBAyKKOGzI4=;
	h=To:Subject:From:Message-Id:Date; b=sOaz9d2ft5PPHn7NSBkCCASmX9jnHYNl2ZKYQusr/4AxgnFw96o0FvL+LTIC8c4wRvcukLU+Wo152AP2y/rpAzTiC28HjU8MRG5m9CnSvm5GXoQjAQTg4k+pvMnpkQh2nVHoAL8eQAL+vUcSM+hBKv2a0iW+xTF3Uqq5MtnBc40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trrnIex9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trrnIex9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8050C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734510353;
	bh=1V8UEqC9d1b8TC6uyaGOZ4h2clwB/qr0dBAyKKOGzI4=;
	h=To:Subject:From:Date:From;
	b=trrnIex9l4jb64Q80PC3vVY+1ROaq/ES+LLvJYWELypF2oiH6OqaMczPq6KMk0LNM
	 LWW/R+PeUVBeunPnjE/QMLNznH3UxJkvsJ3DjwOlJQmU1DGYj1kxUCsnL0Gf7u/X8i
	 dMN+1f+lGBukBOS43iUjPhuSQCEayo/tj/k9JOWnyZhSiLN4UXkP5gtFlDHWJOqmt4
	 gM/EzFhqUT3P58XaqFMwxHhynJJ5Qb/1HVtld6o9oXIkyDG97sRY6Y3HfDLKDt+uFF
	 66CZSLn9wrspDIyXKeha/3MyJNKfcaftTR09WBF1P+XOyYged/EB49rSWSmB5qJFNS
	 uMLEQt+M+o9EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E64E77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451035360.30726.7817979653197490001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df70aa014de4d7acb52bf256f971e8b0bf83f3a49efc6370c4d5704393f67b0
Date: Wed, 18 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734510353
