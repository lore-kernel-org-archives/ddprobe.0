Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E85F3CCA12
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791626434; cv=none; b=C6mRW7fhhMaT++2I/THDxyUM/j0a9QaiC3os9GYjyld95f1fCLr9v4Tws/FqHLtjFrpwZQsqhpngh+E+lJQxn6qZG2xE7MubmJvD2HhddqrqqALrXQ1TzH7FLP4j9H+I9/wbdkTWYQLOhUxBw/RIjnIcrLRwliu9fqLcWP7ZYrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791626434; c=relaxed/simple;
	bh=4WJMX7If0qdGlsAzw/cO+z407tfmQXIo5QApnCh8vz8=;
	h=To:Subject:From:Message-Id:Date; b=qA+rdikPAXDl5xkcf58aClOELmWnYafk40UeSe5rJUzfPrs1v6XXQPaMP7Z/y+MA/i3P49SNkXG23brXgaRLmQgVs7+p4QJHBWYz1kLjuHcattcoQHuPSRlQraXIzPuCzdiScr9xIqn6ndL6Z+FDt6FAUdYhs9GN2zf3vajj0L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRBSR8DT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRBSR8DT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB7AC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791626433;
	bh=4WJMX7If0qdGlsAzw/cO+z407tfmQXIo5QApnCh8vz8=;
	h=To:Subject:From:Date:From;
	b=nRBSR8DTAsHhfwgEROLjifXRpb3/vmN7XIiiQgCa0p8e6tfzpTR1ETeLRQUp2FVtT
	 c2jxkz4LzD6HGUCEMDwE19Oq3tgimyQeVxf+GJ6QLHyplfHp7rAvWK7RGLZZsdZiMx
	 +hWCNmWawBdYBepOSWmXTFLn0V3lREGBrYHbk38ZfpH02vADi1c+fw262N5tAyNOUm
	 6CN7ImgjVTmH4VUoNKv2FF/40uO8ByZNoW7NRoYLRmT6xvTvTOSihd5KsurkqhTUDN
	 id43buPFF/jCw2fOFQ1VSqbs4MMzuQCPdVe8JIWbXuwQT90wtdyjDok74YLMHjMC+8
	 14Yt5dQ3W0fQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD826CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162643368.16984.8425179364284169878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b06386ba9fdbf813ff5e380417ce9d685080a52aa9df15b272241f246da95b
Date: Sat, 10 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791626433
