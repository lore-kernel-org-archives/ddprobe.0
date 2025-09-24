Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3982E1746
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758712194; cv=none; b=aRCpOIUWE7yWn1WhH7zhDOg3D7dQy3z0bkdSBrqFPRCbyDrIgM7k9c3QEau7ZL3/Yv/IafXQ/bGJ04xJVi4JKyX3axj39x7VY7oeps6YyrgoIM+xsHCLfO1PdzHBFe7Lr5SHOHT9CpiP60Is1Ok74Ku/HGFQyJR9Pk5Gg2fB44o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758712194; c=relaxed/simple;
	bh=1u1SrZXgcwdAx/y3VzBbWKmw2cFGyn96oloSBgqLZGo=;
	h=To:Subject:From:Message-Id:Date; b=nVlFnO8FP86+7NDkjSNSOTTtRBgVYPSWO+KCuQNDL2dwiL7eMT74DcaRQtowGabb3hdQwWMKUrQjDNvsk+YbM15bW0I30YsmKKAm7b9bijHhXEDeQFw/XM8xCIQ/KNftvikEHbt5BElg0UWH77hCW+AGxk+HTCki7r7wbQWucQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPo+0FD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPo+0FD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D035C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758712193;
	bh=1u1SrZXgcwdAx/y3VzBbWKmw2cFGyn96oloSBgqLZGo=;
	h=To:Subject:From:Date:From;
	b=lPo+0FD48iWveAOwc7DKanRPT9hRVy/wnBOwSvX3Y35X4FQPztIVBCVI04IXOBnJp
	 4CMUzylvXMZsmq4pb9igacJxUFKPzR+wDjE1fFR1vqOF+MXakY8T4y+41SYFiLN1Qu
	 6t5i8aFKpUfCjOrqzhryHJEgxaYPZVTEjh8DLzxOpVOkFOdLWhYNcyTlzR3D4P+h0a
	 dsxdI2v9MDgx1T6eBbFq/G8/FmRe7agl7piGg7wI/XFX0lHkEbjB3gYqDcqOJawvcH
	 t51IA3Re1YUrRYOQ6BiKpqTsCz8vhy0jSXCLe7xNatUMtV5Z/v6SV5Ap8pwN8AdB5z
	 JG2mfrgE2JLkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F986CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871219358.26538.12031169721493298948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54c289939822c0a5d135628d0b02c01649ce277e26b249478fce036a6791381
Date: Wed, 24 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758712193
