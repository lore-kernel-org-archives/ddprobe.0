Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A2542AD85
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792174234; cv=none; b=cFbOXctVJ+uudrINt0Yls6snoin5DudYxnEeiTQyFWPHY7n57VahaH1N28S/95M0bor+nWfCd1UCWB4kzgnc869DANxQumuw6+5IQ8ZazPZuiiZY/oS/U23upA8Bv2LNoU4WRkbrcRQTTexKhN73orFh7ZDU2JJFrG3AIX8VlWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792174234; c=relaxed/simple;
	bh=XrfSaw68sbGzqBHtYB6nFEj2GVMn+l4/eL/UUR+iZoo=;
	h=To:Subject:From:Message-Id:Date; b=pk9PJEmxPkbtC9Sks7mFcMdYMcFWvclEotJVuIdGlRC/yIm3OLxgwyFGuRmvosoB405sEaSaUGhBO6ZUBSq2Dtzi8nB/PHIByW/ktM0Cz6oL6bhn2t5Uf+QhZQh2b4TrPWPT6gBwvseuo8JC7HwuN7U2fuHuOQM4kSfy0HCNrAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh2fZwLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh2fZwLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFDFC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792174233;
	bh=XrfSaw68sbGzqBHtYB6nFEj2GVMn+l4/eL/UUR+iZoo=;
	h=To:Subject:From:Date:From;
	b=Mh2fZwLWkOdSlvFnS3wFY9X5mgPm44FDiI0WphlI/zmQzKWrt3JOh4+T1Z1UARS18
	 42vt11dkarFSYpJ0/bNuw4IAwIDiN+VQZN1RzAwK8Ur7cSMcPZL9dLsSauE7Ay4d91
	 nBSZ/G5BnDKoqLvKsCN3XB5b+6/Gb5gE2nLqP6uDcCSU4BIi99PLRvmAyYvRYBr6BZ
	 2Bio9FPRjOPXM1ub0jaVKN+2qJBu2kWRw9fg/A/nhevQKYOry9A4PUlOjzeqcTLbnR
	 bFaj03PgJMV4r/CQKcPqFC/0Mu/tCujs7GmVgFUVBg7JcQEDk1IuZ/7mBh0/8pyNP2
	 V7RfM4p81ibVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9120CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217423371.5335.6076434553355866968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a2a35bd9ae7ff5d56daec943c0f0f818a8be08866b66a56a3886bc105c0db9
Date: Fri, 16 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792174233
