Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0F9231CA7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728875754; cv=none; b=BsVOLmdUovGlAXmog9JhWZV8M8nTf4u9Kk11xUPsk55eRD0qTBLP8jLHmSWbjq5FFd+CQ/jtNeTCijBnkDL6J6Is7QhbNXPxHtq+toHVciB4WttSSnWsA3Zb2aM0lItMKd/JRRK6RYferDXImAgN22wERfqS3MmAHHE/iw3XDDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728875754; c=relaxed/simple;
	bh=Vvrj82UdDD/LKkHQSgQEMLxG84n+Ny7HUCvlptZLzKg=;
	h=To:Subject:From:Message-Id:Date; b=QaeQkGOZ8+tETOfXyr0cVvG+eFtuLvFkMssAeP8pDJKn0S34utFunei6204Wfq9dP6FeEGaxaqrW2fWQignwPpq5LxdKWUdxAm8Nn0yhlotGIJaKn66jlikkBAd/Oq2yNiLIiadxgKdYqZfK9uYL+Z2gH7x4uVL2DzS6Ao33JFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA/ycOtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA/ycOtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ED0C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728875753;
	bh=Vvrj82UdDD/LKkHQSgQEMLxG84n+Ny7HUCvlptZLzKg=;
	h=To:Subject:From:Date:From;
	b=LA/ycOtAKdNR1ezkKjMdYzD6QxBWb6jerYRJqCXE3Md+SkD1GesuB7xI/V/CxtyeA
	 bUNG4iBbXK3NQAWPkNtdi2dlH3oa5irPC7ZNudyp5n6bv81TVaGm+45bQif3MhECHI
	 oj4iO556Bt3izLkEO3sxtVX+zaIb4CUk2I5trQVtBqBTLLLRbrFhvS70aqSo+LP/j1
	 FnXGDUzvtmQXOS3torOLC1LMkqJ4AAf36IMVhv4z4QnG4dPZ7OcYjH1j/1vzj270IN
	 02G97iLWKLJOAEjtkfOp82ZfCxbnS86C8WSFVmdzgozmdpy2yeNlChVIhsoM5zqzTc
	 IT2lT6fyQF1tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3A1CF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887575360.19654.12396622798030272645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc0c18207974db0e6f253b17c422b6dbacbcb6a6a2381912e641196481c1f80
Date: Mon, 14 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728875753
