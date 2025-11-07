Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01ACC241CB6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762487994; cv=none; b=upgyMyBy9DIbKdTSMsLMuUU8R0//wOZrTwbXZY2gNNitaE0besqDIn7hl/PD0BsvdleZ2HMKfRTn35joVV+PJtVx3NBobI4WyP3IGOfUxDhqVLWxhvH2LO0nHiSK1y5ghEudq/07mvOYXRmUHsOfv0eXp+ehk58UEM9u46t7iQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762487994; c=relaxed/simple;
	bh=YvS0mwGNZ1E/1oWdJsPREIdXztNGQ/CuEVuL35TWMYk=;
	h=To:Subject:From:Message-Id:Date; b=cu8kUpkH8d8nEJ7mlPpKrhE07q6rGaPxMp151Rg+LwVa2ypRfjKHXLZoe5yuHgUyGvnBZWOqWWvZpSPkheCVAcEvU/4R3hLG0RxSQRlWI0AizWtAKHlK9A1A8fN8qCqzJVnSAaC0/ciqJkiIabAdrzzYWHqSjd4aVDNCEsUS33A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTXspwaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTXspwaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A4C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762487993;
	bh=YvS0mwGNZ1E/1oWdJsPREIdXztNGQ/CuEVuL35TWMYk=;
	h=To:Subject:From:Date:From;
	b=MTXspwaJsw4PYoN4vmwEBx7cs2T++z/jnRlSucBNlEp1qhZrmp4h6Zdicb1BDok8q
	 fUofCJRSZHgekVze0/vXBrCIUwq+spH1xb7qsY4dtNzoPi4LYUKFlGsGIf8wZRBbbL
	 ToDox0qb8yUsmr2Oglp0bj85xl+nq/I2iaEixN7tNpV+NqKuuRblCUjN8N2BGTjiSU
	 r0DfxRLQ0j/OsY+wlu8a0xkY+zY7nDzFRACJQdMUljpGHSFaEvfM0Kd+caxqcQmsZw
	 nQKxarQP8U437N0krpjmWnQConXhR9E7OJPFq0BTy9laLgJVYuw70iZv+LU3UgBBL9
	 we38cpDccUwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB8CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248799358.8162.3225055778175939467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a402a3590157ad215f6675d48cae0e7df2493300f9ea7f0c96f7bff224918f7e
Date: Fri, 07 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762487993
