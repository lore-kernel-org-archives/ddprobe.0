Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3D513C802
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 07:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716447803; cv=none; b=SwzoKhwxIkFoeqRqE2whLvlaJgCdNRaP8ZtoUQs67s73GZHRBSpLffQCYw1hbK0LaYSR+7uJcY4cKNKG9QMW+dEJ2t2bZVXpl+RimhiSA6Dz1/LevdlAqAnoFpstotbmI7yJIG11wcatngj1Oi2cR+EJQyzL3RZS2p9d/PPGsbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716447803; c=relaxed/simple;
	bh=wjM9rBU2tgitHf9PYcMmFJuurO+Vv+HPa2Cs7e1/t80=;
	h=To:Subject:From:Message-Id:Date; b=QWZUKoTl4/uSVzfja4MIUzEm+rM3WJZ6jwbmqAwMpUBvCfHLZG3gQo1Qu4BTsVjYH8bA3FAQl2m7Ae+anFQTHun9MfA5ODXUEiipEJNAcR9b1UiK0Gg5wN9kdklr/jn0QaoQ7ROXE/B/qvFAwH5fbkp+L0lu3jBsRdzpV5RxZ1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPQTWE3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPQTWE3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA13C3277B
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 07:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716447802;
	bh=wjM9rBU2tgitHf9PYcMmFJuurO+Vv+HPa2Cs7e1/t80=;
	h=To:Subject:From:Date:From;
	b=BPQTWE3ZWX8wAwVL2cxDuNPdJTM3DsPQtjFcOT1IZxNKQwo1HRGYh80J47d0rMUy4
	 8OkF/O8IOPQV6eil5OlYVs9jERehjF4CrsRmvVB69xXey/i2nQlv1MlpmySLcsXprA
	 yDYfGFx2TAhnfRpjdowWYV/JxcMwpxFJL+Nkxs7qAOLGoErAztS9Wi4M/eg+6wgHS3
	 P9SGkz7b9QyPUO9jbFvp+P83Rxd4vy+ZcGM2/r5NXp1BWjbEg6pzePogre/d+K4Jjv
	 4PdG/1kq3yyog7OuGWJu8QIlcP8ycq7wceVij0pWmcuxc6LOmddyRfdSLLInN8oHco
	 2U4FR/S7iVDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BC3C25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 07:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171644780281.11976.12695210457038910340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c604169b14428ce559903eac550afc57a938cd016d4291310aa45f3aaf98ac2e
Date: Thu, 23 May 2024 07:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716447802
