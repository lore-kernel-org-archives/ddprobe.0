Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7F4DDD2
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735029354; cv=none; b=AVQHiGGaxOsfokb2JXwe8CiozrKBDXICJiktiTDpGW7wKP+lYGX71MygfzlnCQbQWBTqTIZRrovcGIYpukSUGRxKt10c7+bu4WAkNzCHzpp8dBtJ8YDZn7DWFjttZpOYFQ6wYkRJOZhKvMkER+L13A+Odr6J0x7C6H1/8Rxa3iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735029354; c=relaxed/simple;
	bh=YaKqN7lP1UKYZpXNtb4zhq2/maAin5SPPDDQatVgsj0=;
	h=To:Subject:From:Message-Id:Date; b=l57X91aul8STbOpjHgPOvn+QwMbqsNqS8Fcwu2R8aV5Fvw0Z80AWou4hIz17cj7PTtrJVaZPYHoNXsNJ/lqy9kjG46Z9IFiHAEh4tbe7pu6uaZIHTa+/MrjY55MDsoUr6TG9XX0FYym4y3ozdfPVVBPwxlKTVDwftPQU8HjP0ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ss+F9e9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ss+F9e9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBE3C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735029353;
	bh=YaKqN7lP1UKYZpXNtb4zhq2/maAin5SPPDDQatVgsj0=;
	h=To:Subject:From:Date:From;
	b=Ss+F9e9Xti6q+t4bMHP7sk8nF6y+aLDpfhZrxSNeuYMBhaBMmLsuOOOuA7ycr+7TR
	 IEc3nYo/BmG0OQeVhB72x/E7BsICdpygZ6/lsaCHlv0sgXGLePKOMN+zFPoza3/R4y
	 vauZGNsCZQW/YuZnPdLKuxUQpEnU6E3VzJ+mk0O7vFLErB6KwWAyMwlYbcVcd6nCKm
	 +fLAXJ61dJfbDQqcbyv50pOr+7pCci2+OctQpubZovCkenGuj7uJwsBGGee1fNYi2/
	 9rPPNprPAJQairpAG9CvKlb1cKwjD8511hD6nBD6Xm9UVO3wqfEegrpkGua9YWeLUE
	 DbPlPT0Zn5chg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CBCE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173502935359.5856.15053325416011538953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2190784e6f23dcef925a011d4cd5b18938e79700ba7cbd533d43b0b36b1b134
Date: Tue, 24 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735029353
