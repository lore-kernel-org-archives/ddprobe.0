Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C72F314A8E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784851234; cv=none; b=oQOJ180whoIb8qj1tHVPs+zwo+Utqb2SkvJn1NnBI+cf5u/MZc40cxhSWbv+GExwHY6Zj/HxP3KCuafRZnTUt2J2RJvMwJYMf6XvcWLmvCeTU+gC1+gZdocqtsF1ApFRMT8Vl/g7IwZE3MpAzoHlpanAHJIHLPSVQfR7Uwtpjoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784851234; c=relaxed/simple;
	bh=3ZJrfG4Fwg8h8vV/86NzRX3ci3y9EKKZ/70ewf9K1Yo=;
	h=To:Subject:From:Message-Id:Date; b=ZboKZIVpl5bQ82VGLJIeQCPaxeAf4gh1PnhvfA/0PR7bPbCzRxyyloaigliWJd/johrSaJ4pnn/jXKVLF+SQTj3fIDocl601dcp87eDI0U8IJ/xzMFD195yV6RTz1l4SXYg8cYgMJtNWgrTZrSYtZ1h0pJevgLgLClcUvkVkVag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSAHuJ/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSAHuJ/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2160C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784851233;
	bh=3ZJrfG4Fwg8h8vV/86NzRX3ci3y9EKKZ/70ewf9K1Yo=;
	h=To:Subject:From:Date:From;
	b=jSAHuJ/aO3OWsraNitWWjnomaTDkVMKAt77Rs35Gr3Q0bGcHflymO0d870Mno6HfI
	 j9ICY+Gz/izkVcOyFhQ727Huuc2n8+jmFm2Z3QWjx6B3eRlbTunGk/CYjuMsKQuDvm
	 ZNYo2an/hJk7j6gtMZ67QndRAFyk7NRqs7cIeSxl+QVB4alFaJO6A8zBUaU8MpDVPZ
	 z+vyR70DOIx+O+6DrLGBjItudC3hkfmTiMsa+inpb0XV/t8c88OBiVzILiWifKXFJN
	 xF+f12dl/RN62SnBA7HTjkHoZlT/tiNtDqMmwtOIUkOhIAVt5q6+jkB1Yl6NZWjXBC
	 4ndH/lbRVhbuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE458C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485123370.22576.9830650487465256836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2697873e5318e4af6fc4ebb42b9aeebad3f89d9afa673fe493f63dd61fe7ad1
Date: Fri, 24 Jul 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784851233
