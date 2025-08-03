Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36364242D79
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754213994; cv=none; b=RRiB/fsA5ST0Wu5lDV5rM88mPpf+uv7iGEyBW9hZeIJxcNaa+3xmQbZYydIgd17iG1wrb7uEEQrW3NgGIHbj2lMx/YtTswqyJSPHM97iJKwOlZLGWgDq9nBIPq36mtO452WZrbVtMlyWuJnMo2A5qZw1Ui8R9chlKZ8RFaKjiJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754213994; c=relaxed/simple;
	bh=+jwMnElGGF+y7q7N1oHdJPmkhwMWULrouj5KpBexg/M=;
	h=To:Subject:From:Message-Id:Date; b=YOMqMSGBEmJTgUUO5iw3a3MFGDtLYdd/ZWVK5z0UShi+i8y7frs1EOM8nUFwoOMYMVEmAfjsM39k0IK6U6CHv+Qt0tImRQfBW32SvGdCoxBhagv95iwSBIDml196jaMgTavOsoCkHs23NszrOevRgEMfZt/MsS/CZGqRAnahzsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bs+kXyDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bs+kXyDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF9AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754213993;
	bh=+jwMnElGGF+y7q7N1oHdJPmkhwMWULrouj5KpBexg/M=;
	h=To:Subject:From:Date:From;
	b=Bs+kXyDpWUDRx2wH54Pgrojyz0KmFonLkJxc0GmcMXaovUZsmojShlldcesFUBr3N
	 mziqJR4jM2OsJ9bT6XD5nAHkgnzOwV/R6JTr8Qjmn7qCCp5Dv9JtSaFqNGYgL27B4j
	 RO6TjjU1iW9YyjRHNhIy/ZklgeIMHBD9jDwbj0cowC8SS6Zt+/DC9ceqdRHmh9yQfo
	 3A8ZsvWFPDLB6OB8UD2K3sCSVkDQVIRmweJwFR97vvxVY8TxJ3iA0hQVMHgY6nqUBM
	 M9UvPsTPjTdDkPbp7KV/jpaZNG60vRBQfnHXe9f3QCilM8MJOHHTT002DqwdoMlUR+
	 RlxxFipZon8Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F3AC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421399358.7868.13261404340069013166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3540e719b24f855c8928af5905f5ac03607b7985bdb234a493d393d8a96a099a
Date: Sun, 03 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754213993
