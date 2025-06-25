Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E7C2DD5EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750894194; cv=none; b=PsvIY1PxN4N7hwlK89gem2yxp3jCWADS/h6rqhdRAxG9li7spttJUlnubaE7QwpLKP3CeyhkX2QMATOW14kji4+9ljkaiP7fqPJUAOhLCUv0/Rq7U9Cjd7Eh/sbk3ufyjDyP3Goj9SLeQtTePF7nN0GI5r+8TlxQtu/jnzli0go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750894194; c=relaxed/simple;
	bh=GQCwhcHaJWJ+oNNSiPmaIV3EDw/04XHYY4T5i6YjRQo=;
	h=To:Subject:From:Message-Id:Date; b=tQzHLMBFp+eBt/NZ3rSbhpiPPFnBK2Y980T3cR5OwACwxUdHnyIcS46C9Y6pRNc2Ccbl6sH/g2LePa/eUe9YiafCC8LQu8d8pSDyZgivysRTEKQ5jIAZc8I5x6W47m9X3rfGaWvmKwryHY3vS5HIr4iz21/44KoYT+LJvsdQOSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kw7EoW3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kw7EoW3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7313C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750894193;
	bh=GQCwhcHaJWJ+oNNSiPmaIV3EDw/04XHYY4T5i6YjRQo=;
	h=To:Subject:From:Date:From;
	b=Kw7EoW3qqNw7EnFnwBhLevZfSJM+P1DcvFbgfJP1JSMCzkQo05z9/U/BU+vfKDQSt
	 k6agsm7gmtKKs2GZmyThupqD9ljtpO7A8xzXpnqZP/eV0XX2p2+JXAZZ2jSYnY4Jfo
	 iijAHkFcUkgX1VRtu9DK1qaGg3zX1ZZpvfcHBNGX7DZ7lXSoqEfL1zCEKcRf02Gj14
	 txPs4yxkQmjfHa3X2en4/ecF0PGuJiBDgHxMGvBKC25uDoW0kz91hUE2eX3210Tn0J
	 UMMUwkrUOuMDBEgyL6gb93uBBBdL3RsM3JVnX/5hysPp2XmK2jFVa8iyd/1iiWPddz
	 XB6Cjm2t3fC/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96215C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089419358.4961.11003998093493556621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800cd898985e3a397e884507dc9ee2e9b4f7603e4ac3433b8ff40278e8338d6c
Date: Wed, 25 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750894193
