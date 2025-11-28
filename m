Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7372737EE
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764301374; cv=none; b=qvyIkqIOZmYLrQUhSSAZuVG7mONkNp1lpqYLURxElZQARv72uLMU8iuCcaFYiAZd2Jmjs6ZSQapRe7kyjcdTZo6WiX2tZ2/nEVi7QVQxAkUyKBnMn2lVagO+y+m6kI7CLbMnvDjYEH+Fk04ehxHQUGuPNshxeQcURI9hFrzVnqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764301374; c=relaxed/simple;
	bh=AOsg2L3BxpDN6lE9h5KGam8WltljN2KdQ/CEsiiy1bU=;
	h=To:Subject:From:Message-Id:Date; b=JiQS5UsJSl2lPn76OzuPQS7R04RLfzmdwYP2/iImIQJDqT9Hmt6oILD+uaVrFCY7WyUf912ZBnhk8VguMKF9xD2eSDWQwV4Tr2lBmAOkkDWIL/7V1xJUPlOZYQytUyVDIb/50WvznSaksQ6tlZbj795csxIB1y8Se5CNFqUisc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3YOJALF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3YOJALF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05DFC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764301373;
	bh=AOsg2L3BxpDN6lE9h5KGam8WltljN2KdQ/CEsiiy1bU=;
	h=To:Subject:From:Date:From;
	b=j3YOJALFI5zsnJK5keJuiguhllX+Dm6ecBERKIxCUjwS73DukC3BfUDlGndXXsCi+
	 HMuG+rHz24TuOdc+JMIk3mCnfwQNvKAxoeINcm/aYEUWiESnjnfOY+IpMleyYPfRJn
	 zBgj8GMO816wNou9Q07VQf142g3eYHPaACZQhLGdkjR54hY+p+csYeQlW2Q+Xm2ilk
	 GsVB2If7er3R37oa59Urzhwcs1wGy+3IUXpwMSzLe/rmctvQQ971VSMi6sL0UCgoa/
	 7+bzihgSW6a6765acHliNnVO96RJN1MZbgTa20u0FarCYgyYaxfQByYN4cJzK2iB4Y
	 l3QRMlxUVGgMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA8CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430137360.26139.14052179015010903264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f802daee7d4f05cfe7c5e73767d6a5721a212fc28533fccc78c75718233b42
Date: Fri, 28 Nov 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764301373
