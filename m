Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C43113BC35
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746152996; cv=none; b=lytPd6MbWclJ8QSg/ySKII40lnO7BevLcJU53demDVQlQRXJKIZddcmplxtXHsEy76Pl5mWnYO9oziK4aQY5m2fz4E+J08pGNHZqf8J82sPdmMADWc5dEeiusNbdovS48FT/Aw0pWaItyQVSIvJTLH8R4xwJc+1tNEh0lAu+epk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746152996; c=relaxed/simple;
	bh=dGtdgGWMNLEZOaPvHCvD/j//7O6hpN/Aglj2zykEjcw=;
	h=To:Subject:From:Message-Id:Date; b=SML27fNmoKJfnDaO8wgO1XypkuWqHW7FkKZ4wWEmH85DHGwmyQRG6T+FpfEOnmMQS3jImtI3UlzuBD88WdroDwQksQ/46u/EeG+pZjb94uAXhmQHJgucGf8RLJRh42dQC3d5NpCh52o68YNJ7hXCNoIyTz4Yph6aONRF80rkK0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enNMxEWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enNMxEWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3555C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746152993;
	bh=dGtdgGWMNLEZOaPvHCvD/j//7O6hpN/Aglj2zykEjcw=;
	h=To:Subject:From:Date:From;
	b=enNMxEWyW3xcWyyZ6u+4G+xUt3hZXk31QBOqLstA+puGC1GEyO28YrcSloyFshXFY
	 SmIrAIEtB6e2Xp0letZwDTI/xeWuj/O4gXibxEo6jiG28Q0WB+1YT8BkGZFBhHJ/4T
	 14OD1tT1DSm9KiPimXXHO6fjDBkgPcvBKvU8lrX9vjzpgmv4dsvYStFo3ajKTOhkHR
	 m1fzkZiUoEupyrvLbqq+ia/Y6Z8bonVxJQShvtA1+JEGubz6noA9xW8Lq+UdI/+ARc
	 ZwJaE96O/dOQpFf+CLGka5PJKCjqg4sV0Cf+VHMYNgdE3q6RDzEd6NsoIi6xzcRaCa
	 jEKgZYHKQXQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92036C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615299357.16862.594608868801655333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d85222e48c448bdd77002c6c5dba05dc5e1704f6afc1277676237fcbf185ae
Date: Fri, 02 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746152993
