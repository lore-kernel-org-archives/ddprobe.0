Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5110A3ADB99
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785490234; cv=none; b=q3eNk8b/r6xi1IP/MMqJFV7JwbZKrPDnDtCg0nuzKUXPHYeRmnYC2hvNLPPEUg3fNUGiGy1WsWvup2ww0yeRoyu/gdgNJlgZbpuc2aUS5wJYCUd5bdcwTkewghY6w6Ri0EqZa+N89e/kpO8gCeRBo0R+kJDqP7wnGSvtyvluqUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785490234; c=relaxed/simple;
	bh=GkyYtzn6GHIwVFhWr+D+edjcNmr3cekAxyzMrXMey4Q=;
	h=To:Subject:From:Message-Id:Date; b=RnADQpDWWHYUgRaEn03Xf9RTfDD1opEhKDKh9k01Q4bvXbV+a6vRyojzGj3q10HxnDjD0ytEkbT1V3vdsmbTIk1Bkw0/3wmLfvkhX3d8nWVN3zz1xxsdZrD2y1+wx/eynzF+teW5tbUlZYzWK1Rd4r9UB9WvKNP5WSEXWAExLWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fustbJLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fustbJLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AC1C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785490233;
	bh=GkyYtzn6GHIwVFhWr+D+edjcNmr3cekAxyzMrXMey4Q=;
	h=To:Subject:From:Date:From;
	b=fustbJLuTRunzbJdjRtMJEdoqbdqAPQwqM6Ip5EjsaYqtZ6KE4B1o5plo92hX8Uwz
	 zE7dhqjBSZSvLSxAyU6cbzt5swg3etkq85voFTF348eVenCSOUU6iprCNUwlKhL8V0
	 Xs/3KiAo527ajEJxebkSxXPjSjEBlOyDIMFuGED9UB9jXoHgh7KIkG9Uf1QhItPvSF
	 HLH0cRzaRqHCOBoF/v57IHHg0Tujpf6a7hcsSvfD/ogo09EzsU8hVlHmHrA+6ECoGk
	 i843Q3F9Or2M2WqCLxIN4eQFrtQJ+fDf4EzuOtQBsPVn73towjTY5ykB16HcwCRe5h
	 dOxLW1bxrlXGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA0CC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549023368.2653.7881154632715173697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc11a3c5d9233a3e5666e138c6d574a490df3154ed5b5ffc8b1438e95fc568e3
Date: Fri, 31 Jul 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785490233
