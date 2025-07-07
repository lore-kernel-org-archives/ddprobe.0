Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2673C2F
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751863794; cv=none; b=h0XyiQX2gW21Mq+HIL4/JPEpMFKhEm+EOHPhUq6SDLItaLs0vvDSuM6fmr4wmBs57luBPzrIegYB1ETmh5D+1gPZko9yJpsa/ZSOQB/PBoQft5KeRWe1VuuiYxagNL/P0l7iD7wWUDr9b0+6ErroHDMzLdb/Coj8pETfghK0tEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751863794; c=relaxed/simple;
	bh=6YU4Kp7048HrkMM1o5D8OWmT2Xv8n73dHh9OhkewObk=;
	h=To:Subject:From:Message-Id:Date; b=IGRfte11xaC+TAtOaIuoqv4rBDr1VfOgTT1eUTAEoX+0ukc0rmjczVnWBHH8kw4Bf9RC4lwr3IHssS7fEJ+1UrqNWx8ZJ2CRBPw7YyMSrDyAQYeGE3qqTAdKRDNV7026qGFEl1cw54pvfR4likZjt1WW3BRXft6jcQSwitEF6i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXy4+MNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXy4+MNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13A1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751863793;
	bh=6YU4Kp7048HrkMM1o5D8OWmT2Xv8n73dHh9OhkewObk=;
	h=To:Subject:From:Date:From;
	b=YXy4+MNcDEdVbC7NWU4GFFXeD5acqJAFQJ7EzTqfgQ2ul4pp0sf7qP/yu9GQZ01mr
	 caq5xcNm77XXL0A87jmbhrrOCMmdjuoT5keDc2FfuxEl47dKmzvwn2PTem4bK2BEfv
	 RmFQ9umfJPHGpUZIwCt36lMRXJughaYfuTgtjOlzcQpubC6dCJH9CioteLC2Ypjyql
	 bRMcaVfxzY89iH62kuRP2g4mVoME5dYcGzTMnRH9rx6YG1GavW1oVGuWqylR3hl2f0
	 p/uyZ0JK+2xlIrQBaF5e4NnjB5SATiiYtevkTZLufe2IzbsL856BU1EowqYpKuDbLW
	 SpPZV9c/yQoNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47BC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186379357.27358.15053690380913171854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92651444b79aa3bee0bbf170f9ceb82230401b512fc1caa9d67bee4a2339c542
Date: Mon, 07 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751863793
