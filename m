Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464D32595
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723374954; cv=none; b=I0ghsAbmRTtfDOADLInPjTjRzk+3hjhoGYaI2wk77kHtSXYGrasy3/UkMSUmc5GAd1Hbe/px00kT9Frg/mMbJWLe/sbyN4U2k657JDeRkE7aSzRIFcxfgdhrrNRyrJ/YF01v9Al/d0YYGvB07oA6PY182osAJBHQLF0RzHUweyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723374954; c=relaxed/simple;
	bh=7RCVc8ZVo1cjPMNldfpE25Tq24i4c1i7QeO9PXCKcjk=;
	h=To:Subject:From:Message-Id:Date; b=pw3q92s47FmdNFGAx1r1rZrN58zVCS3gy3Bzrz7VKDV3KcbXFN0IKMqwbzh44Ri5rMoII+f+hcqBcpjjFiterfdewVUMnyj7UsEVyaDquJ/mx7RdBGRDZHRhpOIObMcM+4TqtFD7AnhuQ0ialK2BpkTX7IXAeSLGDNc8lBEP+yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu/Z/ggc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu/Z/ggc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F58C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723374953;
	bh=7RCVc8ZVo1cjPMNldfpE25Tq24i4c1i7QeO9PXCKcjk=;
	h=To:Subject:From:Date:From;
	b=Mu/Z/ggc2TLMoRHgguns1NplBDXliXVxbj9ECLNfZMRZWWSCpgqMj4cxBR3mXV7lY
	 LLT8v5TYHmEyiRflOtTG/RcDB8briUQ5EZ8EPcY9V5uoMZCRuDKNIlIeaCfJ3VIcIC
	 vwz1PgWFpkLIMsSlLf6RjMFuSYv6NqrzzKHtimlwPJbayipjWjil1M8AzV/qFU/Qti
	 jHPjN2HB8LaIsveLxXrE1gkEo/FO4pAH+fABvonI175tSrDrmzGVOu75d8/e6fhUqP
	 MX/poBuVrPF8kRtzFg3eAjg9WYIJiTJCsIrAFlEmJJstbd91pmbhIeA4r4xSoUJGYw
	 LumxUKOPlXAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE5EC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172337495361.10083.8812991853980669966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4a06c51e11fc73034b7b7725da74003f48cde2260b3009988013d5b2f4d9e7
Date: Sun, 11 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723374953
