Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB92277CA5
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787159434; cv=none; b=sWYraOwsoajLGAAd4th3neVywIYTJuqlz6RZbQ+tu09pzqu5jmpdseik3mnm+FUtCpMjc9c4HpKuoC/ZPJ/Bd81mtJ6TOQ1UMAfQYiXsHxQq3F9jrSf77ZifdF2ntjZysm8Kj7WXYVDP5PzEYKRnKn9atxXgjkECaQr5lmsk/6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787159434; c=relaxed/simple;
	bh=HW+ltXI5jPY+N60oBMM5kqYBXMWwvA6QCVKWLItQLuY=;
	h=To:Subject:From:Message-Id:Date; b=CMUlgvNJl4cPrfFMiFEpzkkt0kMxMGjJ8sdD361ilsAHAquutK5mx+hwVU6M/ETrlvE/V+SmUimLGFaLrMaIUHXDZheKDXGJq2whly95anvwifNTsCEGh3Z8ZUmKAVr3j4hmC7ORebWinpZXjOHj3RBEtupPi9FWbYptEaAB00g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXXXK4oS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXXXK4oS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFBAC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787159433;
	bh=HW+ltXI5jPY+N60oBMM5kqYBXMWwvA6QCVKWLItQLuY=;
	h=To:Subject:From:Date:From;
	b=OXXXK4oSvyQciqeGeA2QVPBOsatUtHkZ0LvbUJ2lmMWkOBx5ZcSu8p4JAXmaW/lmi
	 EzukcXrL7e0U5LhxwT113cufbhItQ+rfen/Y2W5FYnX4yOXE4YTJv0u8uOHUcAVItw
	 1mlSnWw77em5B2NswWzz0fO+Ccx+k6+CGy/a2/lENO+T1MnxkakUuz+E2WBpA68rUt
	 bVzZTH5Zid0su1E5eYVfA+HZR0oxXl93Fl2CIhJjwgZNsAdzl16sbVNv62Pf0CD0iZ
	 SpmvLBteDu2xwPFJPst3ci2OlBZkc3Df+FZ/lqJPrvzpEkfk/4UYFr4TOHSVIjHdf3
	 k4x8nmjFlmJ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5DAC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715943368.19387.1444537149213761899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d756bf20c1aa390ecb0bc2489583adccc0b9d2df126757ba891e7bd24d4e464
Date: Wed, 19 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787159433
