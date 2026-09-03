Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CC94A3D39
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788444034; cv=none; b=hFzQWR6leW5xJmmdADewWKruxNfMHGZ477WRXTjPFoKr7GEGitn2DxPxg8ewcMxFnGyxwDtrHhW7doK3aA0Bo32cy16b8ncluFxSgkU0SuubDF6pbjwZCZWpo8cs4agWAvS0PLYkCv4tUYzTopY52mD0P2F1BQlHdClCpR9O38E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788444034; c=relaxed/simple;
	bh=i/aup5mQPKf5CMFRFk9natcfW6nL1La2R3dEis+xMhw=;
	h=To:Subject:From:Message-Id:Date; b=cQu5Q7zznWSYKPt7WrrbREkj70d21w018BO8mLFBtd2DX822SWVaEHEMsgeTLytymRMwpb7hrPB6dstw0CjlcKA/9x5PAJeQu+4vOKiwbPp2iq8hoRL0G2waU415spw8POSlD/xCXMmo4rwVDFe3YLkCF7Wfdc4PEC776nD7CzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIbXAKT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIbXAKT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D059FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788444033;
	bh=i/aup5mQPKf5CMFRFk9natcfW6nL1La2R3dEis+xMhw=;
	h=To:Subject:From:Date:From;
	b=JIbXAKT4IUhAFUeimhQEQr+RazUbXmsmRoLqGQI1c2jexynY9QitOBmVuHm6eT+tO
	 cBxFYdx/qnrFkE/FAnxXuA9qdX1Zjc2GTj3xaliHN+qgXAhKOHF7tx1dG3z1oCuhJf
	 piAKhRkfIEmpW92NrUcNTBQkEoQAerBwaFEPDmDUStzP5Y8yjIk63JnwH0ysg8kYaJ
	 KuTXH1391F5YWq+foBmoKBo4uyH2gsFplZdO3599R86mPOhFcADiuAHgX0SySLtWv5
	 yorRngThnO6uhhN0fjFomyI0WF+OVOcM46PgR7TBBK58D16JuGm7nm0pqEcoXyaVA8
	 SgHTVkqOSrEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA3BC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844403369.11366.9305562189725731414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611f1341d0b52fd95f11d4992e46232da353cba69141d8b404375986c4d4e0df
Date: Thu, 03 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788444033
