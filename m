Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1693E207A09
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768267434; cv=none; b=CTjX5sJ3bpeQJi3M6yYBrzwY1qJot6pDLNLKQaaBHV7j7owFs5EObWWJTd577Mm26Dcgh5ZvOEv17yX2rM0MWm2Zq5P5kn1rl7olyHL9yAK5jCFrQWv6HQi+1PBn64gnRSYYJnF7OFYKS6BKr+kVjT4JFelwrFmVu7/hbU32TYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768267434; c=relaxed/simple;
	bh=DFSVBkoj76lT/2dDj/nStfSyTzQyBooJgZkiVsuM1Lk=;
	h=To:Subject:From:Message-Id:Date; b=BBtrZDoGMZaOTnEfnpMe870mSmJGJal90fF6jJmIILmUBZyWbnJy6mgmI8CfQGWhLx+HeTKxqqTpTk836GIzXmBXtVYHsjbF6bPHjkIrUYBuzp45vmUY6+G68j0/6OGZAHNIvJ52/I4t1rV9shMM9XD2z0dq33C/0f8DQWQm+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n39jhY2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n39jhY2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0612C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768267433;
	bh=DFSVBkoj76lT/2dDj/nStfSyTzQyBooJgZkiVsuM1Lk=;
	h=To:Subject:From:Date:From;
	b=n39jhY2SQ8ypoaOgHShbZKievy52O3+twDw+qIm+R2d2WV2WLm+7//GLbXarM8psT
	 wlbuN5dTbXr9GA97QFyL31zdfEODR/GqzFt55e07YBzPwJIaGd175+6+93PlgHoxny
	 4Mf04AaTFGN/ZnlsstjBz1UKs8RyO3CX4dQEKA4IkldGMASQijxLRG+tLW6iqB6hZw
	 sPQ8fiy3vD1uRqj9BsiJFy8e3Pws2vD0NDCVgB6pV0CuD6Gqrpl4RDB8wQt1XxUikh
	 ls23/SH8LYwDybfreznzOrli/ow0Qjs7t5NjEJ7vmuSwe6ObxfxlJyzDqiJ4IZw8xQ
	 u8j+xUpY/YCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1ACF45D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826743358.869.11216304814852994493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699f3b7f2f44fff4c7b3b370df877ecab806809e0b4cd643d54cbc8a99dca3eb
Date: Tue, 13 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768267433
