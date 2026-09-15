Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E483921E0
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789438234; cv=none; b=SGjgPQTxnwIxYCDYeWsvTbfkwmmzeox1S2jgTR6KrFo485lvuye+fgnobfb6nrDqXUcwgKLXmfNrD7RkOaW7iGBbUI9TBelHh4RChG78eWFdgWiC37E947O3wPsPawECUwTtFXlA1OXQE2fNuWH5V0ub/6ZIGrCUsiGEkjdWYP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789438234; c=relaxed/simple;
	bh=QmpAzqr7ZIky8ojjVfL6wu8dsHqjkYhzoOHE1Qj1Uqk=;
	h=To:Subject:From:Message-Id:Date; b=Cwdxp7kjjtGbDEdu6AE8A6JEpQjX7cfQe1Zi+4rqXfiJ7J3LJNwkAM5+c9XqbBjVm9eNn41Iy2ou84rq2mtRr4koLoNr0YvMDA7r86PiTQ81ibohoAVsdl4PymhwgfSSA62VOH3qNtBvwdjOxeEju6ai4hkbu7cYig+X/pAjQpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oILeE96s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oILeE96s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE00EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789438233;
	bh=QmpAzqr7ZIky8ojjVfL6wu8dsHqjkYhzoOHE1Qj1Uqk=;
	h=To:Subject:From:Date:From;
	b=oILeE96suM3mPdfUMyZj8RIOO/WPl3rBzxDoi/SkszVivL8I9y2cOUXjkLLzz63U5
	 YJt2OEHAR/j9Pk2CQUrEA9a1E+VVnLkBAU6JWgoIjBSKCO1KS2OAD0BBNFpN+dIx0S
	 HKzaCM8dp11W6NUSbibjnx07H/Y/PjPX/9T9giaNQQT2yWR4kmvHhi7aPNGJCmNUj2
	 aXiPHQnzsbvaHFCeKktsVY/neZwYgNXLKoMBhVyUeneYAs6BdCF3ayp+sYFX5K7+sq
	 /h+THBGRB+LVBFvSgTfUqeW6scg4T00lOiAUrApFJ1dgQRXFLsFWFQuwyhJYAdaP7Q
	 iniRrfUIXxq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951EC88E72
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943823368.8744.17413438824826817980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7388c4e05e5be9673a5d6a553e53eac554af3a43e19fd67b30070d20b11b66b
Date: Tue, 15 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789438233
