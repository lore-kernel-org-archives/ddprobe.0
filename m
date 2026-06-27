Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D53919EED3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782571714; cv=none; b=s/RegV0kTIMubVnPW1m3S8g9MBJ7fD2Sq+inSaUxQ9g/1xg4Cimvp7Ob6jiVs9CcPbovNtG3Ve2EkwRD9QB0wuSWwJsf2MhAJPY0UnW45qiCYu3Dvt/gqlk28gIOLlym+Uim1Kw/zP7nfNRBf126x8YORjtC6EtnNz64AqzD6CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782571714; c=relaxed/simple;
	bh=eGNBOzprhMems4BYKucrtWcaP1UwzfPpwmo+8cF4Vxs=;
	h=To:Subject:From:Message-Id:Date; b=j/npTJWWExWpt0ejX9F7iVO9+kgI9ZTU+lGfxhBe9ByPbSo2WWVFkg3Ub6+X3jDCB9tuaBkIF3quj1bYevYsGpQAj5D1Aiym7MPKZv4SpJ48ufoFjLtY5HRauExoi0yhlJ55IfTOLyHvdoQj2JXW3vcUN1GjfUS1b4CAUz5hETo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffIHldv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffIHldv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AC8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782571713;
	bh=eGNBOzprhMems4BYKucrtWcaP1UwzfPpwmo+8cF4Vxs=;
	h=To:Subject:From:Date:From;
	b=ffIHldv/BoFoXQ5Rr7ZjWZBpZlsf/I7qjhTCauy8Zfs6hZ06s4HgpDx8eQFvkRzHA
	 OpXzAVECEVI+9YL+x9E5I/U5bmjBtO10mOGd7kcBofv1bmqI7WA1DohaMf9E90Wn9I
	 9I3CBGe1UMl7plpRFyAXlvHZGRpSzM/AR++ZnDOonj5bYDsoGoprFlcJfiz+0HzpOM
	 WXOo1JdkNVGnLX8UY7bqiwylvnqQnte2RESr+qC0gjVS49LMdSvn44Gv8dm6fPSUNL
	 w47NGxiZ2ELbSTkn9iaC4CksU8jfxk2z8nArdqdSp+xZMETxhuHNcZBanwEB4xGU+k
	 N0NrRzJqOWGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC47C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257171369.20427.7532476275388788551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e58f4ea56688a020ed6164faf260bd5536d5e93a9365db668f3f73532ecbb8d
Date: Sat, 27 Jun 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782571713
