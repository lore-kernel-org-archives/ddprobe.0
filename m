Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39187275AE1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757875194; cv=none; b=KPNH4gMxw36R/EjnjI7SG6gLow/HDKiXHciqaLdEtu+rllB05WcdjQL4GTJWVQoZS0s7tUaB2kXDseIbVN1/T3H4B4PQisJFpo9iCE4sJfzxhBr9fIfCTZQToYl4HwEkadT33/SXNBx0lYMdynQJnZSW+ZgnqmxaS/xZWJ1zuPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757875194; c=relaxed/simple;
	bh=vPKP6co4bSdBRrjptQ4txtfq34t0piFsferPLembmu4=;
	h=To:Subject:From:Message-Id:Date; b=MoNTXAkyL8DxSp3hzH+UdcVvQJ5qk0Yv2h2baGzH5ctvLHLpK+tLKeZIKv6SGCIU6FfVoQrxbprEReSx2KtCwH/oAaiwYEAjdVfog/XEYqo23oXiH8L3Q8ONFxGCRDqTzlSgwYefKTVuWc3fZq/6ZRx4v1g797UPG85EHAg9BZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/NfZeZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/NfZeZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FC8C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757875193;
	bh=vPKP6co4bSdBRrjptQ4txtfq34t0piFsferPLembmu4=;
	h=To:Subject:From:Date:From;
	b=o/NfZeZ0xXVXmgBG23bQV3/NxvYhFpa5nGYEWhRyLhH13qGuEZsiUzrbIBWXMD1vv
	 SyTBkySRbCuIl6FTewCzdBXp7a7e42VXFItwpDhwdDxvKpG6hdYnpGXHh/Ix42M2m9
	 yxsLwwBNZ51tEw9uai3x20wk0kwYAJIrpF54vlBXRN5YR9Yol/qxBw0hiY98rprLoW
	 UJeW5J/jm8UZZP5wFdWb9LSO3esM3GMhNm6y2KvHlGDtaU46AUoLLbZJY7SawoK0CS
	 nrvPJnFTU0Ge0OXcTO7lsNdJJAnMmLVKIipIhh65I9T1ixcJ0obF1w7+UCKkl+bGug
	 d+lzRtvwj1Wig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE2CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787519357.8760.12332425756283760412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd3413ae4aebe0cca751d881e9d133e84eb37232b0f82dc852d4e6a730d24e3b
Date: Sun, 14 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757875193
