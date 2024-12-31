Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A331925AF
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735660554; cv=none; b=Ht9SPiTDEFEHMv010okQWBaJc1Gy+pKLLxQhPIZgnt62fZ/7c2UCU0tC4IJqpqLDUIgEPhlA2dC3Eg6/SUOmnsA+fMTs+bYc4aKFMNuFKoEKyKxBmfJy8FAKPArXPtZ7VLwhZS8QZaVDXFKdEPn21avcX/p0q9lXrUGeXVY7Vts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735660554; c=relaxed/simple;
	bh=KSyCJM4/jhE/bkrxzIHDtCssMnsxg44rJvUHNZ3UQHY=;
	h=To:Subject:From:Message-Id:Date; b=nZPBQqQ/LdUraq/CDvSvOnBorguIfF5Ny+BzG4H5/gE8NLo+pP7lx7l/iQbkHpEdcfjbvP4GT80QQpIRacaXZBzqWkyppEKDWro8F17q4xwq563YCf/WXJMR8apy2OR4oH1ss8PEYjBxNyG6Paw3W71nG1l/6FdeZxGL7ji4iYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtUnOMTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtUnOMTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F67C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735660553;
	bh=KSyCJM4/jhE/bkrxzIHDtCssMnsxg44rJvUHNZ3UQHY=;
	h=To:Subject:From:Date:From;
	b=qtUnOMTQwNpX98JeOpBUIZ3oGCxMMyUycw1XkWPVMiNO7niy9wAPgutHmPPHRR9Eg
	 tZTFSUanLk3a4CBNVm4EV1NbInJPtAnkjkguzNtEktjQA9b7GfrjSuDzPp8U1abE6u
	 7GhHocMjmdTkKDRHiMx/BdxWh92rMwmbACd14t6/4myASahzkE8CqtL18r5t6nDuAe
	 xwyT33Yi68LMtfkPHL/Ai8TlEerSxGCzz2UXJCvOvCT+9RCgiLf5vnzXH9bNhfEuFe
	 4k7htMxL25QopyP+g2e3m+GU59nM69sIpnJ5MrpJYg5X+mgdA3dQiSalzttoKiPbtd
	 wNzsxX75pqKYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C4E7718B
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173566055358.27162.6537913055601353690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bad6ae08060b41a49d07248afb92f245451a611d301ccc3fe243c967c351949
Date: Tue, 31 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735660553
