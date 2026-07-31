Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F001E22E9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785502834; cv=none; b=NHbryb/CEAt1xQBWAUXbifSUVmYlQ969Ns4Ksd2WTed737U8MNm1dBiLWJm2k9dkQyjraVoMDpmSJnpJzrMpPs4z75rcT8TEUJD8aw0T/F6AQMPW2lI0K9uBLAC4QWRQQu/gfXXYqtWH3joiEZsZFQcKlqeIuaTc4GbDW+GE+AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785502834; c=relaxed/simple;
	bh=r9c0DlU4cvNQGGYHGrVbeJp5US/eRS4nT+X7QfUHVbo=;
	h=To:Subject:From:Message-Id:Date; b=sloVMBKCv91bSKNoCooIfd1VpCiL9GICgn7DYlGala/w3NSvuxs29MnMmFhfkqRTv/2rvn5GyV86H8rsPmosYY64NJ6rcCOqlUeX0zyT3EuO3HFzKoQ+bezkiOKZcsB5sm2CcAm5v3y0yofuBd1RpLFP2JzNtelLxtwUCMqexIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVEZpXYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVEZpXYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4171C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785502833;
	bh=r9c0DlU4cvNQGGYHGrVbeJp5US/eRS4nT+X7QfUHVbo=;
	h=To:Subject:From:Date:From;
	b=BVEZpXYfoh6noJmBwghDSFYawL/frMoTGkczvaCQr0ZDDddlnqULMgGGQcLhdwznz
	 cBHXCBb4fEu9vBWQxBeZcWdxO82nAr+YlxfDsP8afnuMDlF59gJwejASkYuCKcGM/t
	 IJNABj+nemPeo97gwnuSEnJIcOej4xMlsBTbq/bBVZe8wjKh6A7r7DAH8wqDTblc9K
	 KdD0S5sAdRYSLRkTBSt3qoAKpTBxJdNiIdDOt7n0BOvEx++kkH+8QHiBTrW19Zu7YN
	 1HSBxJM12j5nDtHAxqU9ex7Bcv0e5CrMnt5q8MgQwNvrEGWACknodLsnDWFKI8hSWJ
	 LIH648jOcv+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBECC5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550283369.27354.9671457569397634710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888dc98b83ad56f365b1d27758c6de2be32c722682e284399923a381f81b8dcf
Date: Fri, 31 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785502833
