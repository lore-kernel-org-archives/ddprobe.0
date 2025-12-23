Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090EF29E0E6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766510034; cv=none; b=jGCPFyE9p/DotVVNn8dy88Orxm2V8UBrPVo6Qq+A5jAlNuhMF/f991WqXPSLTWySS+y5/CV3BgOSSil7JWxEt/w2xG8ZN/2BH4PrpxcTBfTip2jzmkZrZTxGL/0SmlJgBvz7+KVWym7EA6gGKC7+dqcb8tHPTnhgDSIPgvSxfJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766510034; c=relaxed/simple;
	bh=KCuVMWSXiFrgJslbTpjVJglCuKXD1yWQYIppcjqnUjo=;
	h=To:Subject:From:Message-Id:Date; b=MVjlH3fHccC7vtQC+Zq2OgIyNTy7s4xRAHUHpXI4IKzhVzU5D5IS9B3PRYkN8wOiK6bgdZEs5sNCrp9lvKzFxphpmgW2eMpFCYE0qoar/eHcDuHcBtKFx/yz9BT9Nc2+REeCsfFYRAAcNM3owGOqAeGEuC92o5Bngwj2Ee3eK/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkrCogyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkrCogyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54FBC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766510033;
	bh=KCuVMWSXiFrgJslbTpjVJglCuKXD1yWQYIppcjqnUjo=;
	h=To:Subject:From:Date:From;
	b=PkrCogyqq7NtX/p24J4qihcDSYHgK3r9rRIgCRZlHTj9+OhENytNKTD27IKQZJ9fN
	 f+/e3RLDu4n3+zf99p0rsv3s+aKOzrwOCgJkebG2EFumeURKdYJvnPyAViDDZ+he2a
	 wg8sLBFfOXOiK9DPFpMD9vAT8O0JWLEkDhuZDdVs2TMerzMg7xmo5poi8Ml7YOcKG7
	 +kymQz7AXSvKB9isEgOENCjJHQ5HyRBSjxcNg/3XkJ6Yy9ddTO89eIkYGp92b/Fmqs
	 Az0lP4yLJMOc9kjLlPYe3hRUrqix4p9XCOlUTqTCIU4jMdP+8Ay5m45eOE+g4jlnNF
	 v0K6Vml5PbhwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93426E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651003358.8177.1102579103711942845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd7dbb3cba27aa79cc6792653d5a33239dd71a612324940b3d7c0d1e336dc3d
Date: Tue, 23 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766510033
