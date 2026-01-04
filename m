Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229BB29A309
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767529434; cv=none; b=l541O2l919bQ3WgHJ6Cb3+rZ881Q6niHtWTyUrPqhhqDqxZe88gudailCRG+pmEVhtDauXRcZHuYqAGi14yrKggNMGnpJNwaOZWQjBNIYFSW94+nOrpMWiqqi62tM+TVLLcqlgnZweJ/dbjfxCNeENxyJp8+Uo8CP2iYlDIqGKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767529434; c=relaxed/simple;
	bh=I549UDVG4w/OQ5ma9tai+pbyeojZ5cok1FK1l4UlqHk=;
	h=To:Subject:From:Message-Id:Date; b=sfXaN9t6+LPeu+v8btxNm6rl5alHtcKl3xQMmsgithoPirPcJBgtUVInM1K87KzqPa1PsYuFobEd8yPBSlQq729XRDl6a393FeujWA6foVwAj567cgVmFYcqSjEO0zzfFr3rTttc7l1IbWRR8rADGdkIkfwVAXnrL8xwZRIE27M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF5JVLJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF5JVLJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A217AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767529433;
	bh=I549UDVG4w/OQ5ma9tai+pbyeojZ5cok1FK1l4UlqHk=;
	h=To:Subject:From:Date:From;
	b=vF5JVLJpJHETDjjqr8qIVURaAEK6sapvHuz2bujMUDJkfCk5pqMw89LLHeV07K9GR
	 MR3BzdBwHwseajyha/mUVUtEgvcLl5rlgGJhYs3ZxaaKHMiL8hBIRJnrI9phOF/KEB
	 hpHEf6JAjy0cqao7n5N33ZPcQirvKZcvZqDY6YIYyBmZME5tekOZpJ65M2VxFEWNcc
	 F3+lExBgYojx8AyvxUHnibOlSKwCejhtxpMNJR0gWNIYsUDgpPKShj3ynp2sYg+6gb
	 WBgBV/b+gnvZnNwcBue+Wb3uHtqyejL4uVsfmDK6NGM7SZ2Z3HQn1tQEYwy2Qew8td
	 1mXbFx0DVMIFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193BC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752943357.28642.4654414212363004765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7396f0ad6a46de3ebc7460e1f3e4d4d7ac269c2bbd5788024c5836e1c0f610cf
Date: Sun, 04 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767529433
