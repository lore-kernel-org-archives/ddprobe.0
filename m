Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939F274B37
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780739674; cv=none; b=ULSggvG+LjrlIEC6YWzfzHpuokNR/24t8z2GG18pxM1TfZi2QUXbZUzI7IGVOueWdeecfBwCNt06y3X1HupDgEUmVUxmOw3Uiic8JtxYoup5zszyqkEok4M3liZcE7IAmSbP1mZzQPtoyWUQ8BsDGfY5CNNYPit2ZTdRxocyJCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780739674; c=relaxed/simple;
	bh=vJR97M73rKGo4katzErSXH05IOPwBu9+czZz3M3AmMI=;
	h=To:Subject:From:Message-Id:Date; b=E6af5KLmEaMcIwjAr3MB8weWTTCrW3699kophqiCtewoICwZmTXJGgsnFWWHlW8qSp3dSUnioi1oIeYg8YwaORcJpom/BWupMoLGeQ8JnhPf4TfkJtiwdxKJroWvw5tHZS0lKQJmo7SnIJiorSaoQfJSPB+vnJ22+A+4W2DO54M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgquHfYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgquHfYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780739673;
	bh=vJR97M73rKGo4katzErSXH05IOPwBu9+czZz3M3AmMI=;
	h=To:Subject:From:Date:From;
	b=EgquHfYzY2IJba+lptPyD+vwNXVGmWOeuHuSrlQjsYwusPx/3hor8b5JXrZ9rva/Y
	 F4GdRUFLURg5Aa2nbALvzVFdHzKmmIOX3tDVmh2eTcmuckJV/+wkDdMuFM7kSDWA2C
	 Q2hZI2ghGYQ1R21yrSdeqWXeDSZI1keVIhToIen5HVubaisbeEOi4Pxl0DGw6uM4Ae
	 uwYCmmb4Eeww21sx9QPiTm1HCWGGRLgrOjZhiOk53LwDYfykdoFOeXnYF8z6lr3DMU
	 QnrxmiJBC0ZxO4Sw0+ohbyO4+U7Sk8TT959Rd6IJu96PeFmI1iLzPEjJ/4qtnb37Ti
	 /Pq53cc3BGdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAF9CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073967373.6522.14441207037469847290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2da126126121349df12aec41c78761fc1a6006e0b94f09cf177e114f6fb1b7
Date: Sat, 06 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780739673
