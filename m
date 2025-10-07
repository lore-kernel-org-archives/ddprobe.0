Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242BAEACD
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759844994; cv=none; b=MUzFZSrhdUe4U9Z05zBkVSY8LxY8q6PhoAPJs0qXSkBnglJNxKA55b4lCnqnqPojhWlWsdeZ4VZb64+gR5g2TZb6kaV8tRRFEWf1VoWPGv0ipAUItJQmyg7CqgkMoM/m5PdaS/sla3AfLySY17n5FxVjIW22GC4v9sS504O7uQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759844994; c=relaxed/simple;
	bh=KWxRQjl3oTgfn+oLZEckZ4Ohc6vt6RNDpjp82zJGQ8k=;
	h=To:Subject:From:Message-Id:Date; b=sUB6R1gwOQOeT7TD6rC+x/LfdZAGvVrEmjyw6xqFEdEFC+u1rOldsI3aylXVHdlTv1Q8lGQ0CkFohUAiapSltZ5S6s35KrjTSSi/cvCL82H4XipjCNQLgUZBTXZDZgKlBPF9InJIciZ36it1NVbpYERWK9fedzsHTBlImNM1Jgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9IN6y55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9IN6y55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A285DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759844993;
	bh=KWxRQjl3oTgfn+oLZEckZ4Ohc6vt6RNDpjp82zJGQ8k=;
	h=To:Subject:From:Date:From;
	b=N9IN6y55k8Qc75Qg17R/3mMtmW1/NmgLBFptw+BAyQbaOxeIEVFU803oLV/JP5ARq
	 hV683KlBM1DUiN6ZYlSL992ULsrYwYhCbBc8YxyVkIEjvWIvR4Vf0DyLZxAYc15+Qs
	 Alj0o+0BbHbLb61+7H1dQqFyLSpg7A3At5v7ZJwCs2yDrCewxNNWg8mV/M62+zNxtJ
	 ah/9XnnoqcXHmnm2uW39sGowb3NRCF7Hx9Ie2nF//dHIZOh/JMRm0xbX46Y51b2JhX
	 w0CynYR8Oc1Z35qEj6107lPHmzDrHcCSIiXhI2+shKICxUI2QoskYQD2quNW8XkN6V
	 BJxJfFDoHRFgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB65CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984499358.31184.16657767704562480049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97a483a206473db9696c41ac42b9ea7f57c1af4fd5921c20edd93989543c47c
Date: Tue, 07 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759844993
