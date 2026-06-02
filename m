Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE48395AEE
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780425274; cv=none; b=Vj9nqLA5qGplujViXIeFeU+f3RXu85kmLTmH7xsQtF8fe9Tak1gf9q++oUh+swIXGmwy/v/oIbEfL4hlZdS6SjD72WOPVXelr9Hy8rJqqVDc04GLPEvP2NlTPmywnomHFxRh6Sbsn26qrlNJjt/lgHItJavljcvoQ8RHWdzRez0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780425274; c=relaxed/simple;
	bh=4wJWLcDjlHi9LvuBYVSEjemitYZycnXRVm4O+jBGeh4=;
	h=To:Subject:From:Message-Id:Date; b=jvXMa5lc+te3ojuFvH96HNTG6Q7TZv0bnWC3Wvz4pc9zurvvH1cXGomHiM4cnuJ3E8hrW0SygxJUVWfXPoWhPTPMuQBtd8KJtxo6KxvnQLoqphaWllsMSeRkxTYCNTRKxU00xBD5/yzjiCp5lgt41D5NhL7/33cTKnsJ2WoKdH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RphMO5p5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RphMO5p5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB539C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780425273;
	bh=4wJWLcDjlHi9LvuBYVSEjemitYZycnXRVm4O+jBGeh4=;
	h=To:Subject:From:Date:From;
	b=RphMO5p5pGQ7lg/bedgax7G+WigLFt5JuEZzhhEJRDZTwJ8BnfecF/8aHP8WqA6+y
	 cXIX+U4U5XuX4GzH8R+/yEGhdzZznq4UkP2+HSTu357snaQZswblIk0LGjiP09Gq5h
	 frjfYS/EEJIOnwDpzRFidMpXySnPi/hV+zmfrsBAM1LhQetCcIlC2hOxFQ0erFGYkr
	 6lU1F65rAnu29uHMpw+fZHdL/hZXmfOnztOYHBiCk2hx3Zus8QwAC5AN3ztwpyeG+5
	 59+0PunJsrI00c1Gl7J16S70/eoH7s4Ax/cilxLjlxZjSqiok1dFj8b3SiqkeVYsWr
	 5S+fPjyIBLodg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB94DCD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042527368.8410.15839829741539550808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51814fa40afea1c079d4e80e6249bd7689f628584f2322f726879d8a5a57b745
Date: Tue, 02 Jun 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780425273
