Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F88E3CF660
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784833234; cv=none; b=cgQKNHUxFVqILkq9nEUXk26PZcyyy4IfNW7VGOH2ZOjlQYcR/2amD/KyAtxM8iycO//vyIoBbDnxTNLlxgaBwYMVvx9Isirst6nvkLE3428ZmpKXyOcGVefTJSEEkotn529YWCVIWhoIc/8cEEOdyDFDwl0eMA6w2CKEpwEj2+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784833234; c=relaxed/simple;
	bh=9Z3Ch2A76ZVrXRE/pw8DlxDj6+muZTiVxE7k/7BsA2g=;
	h=To:Subject:From:Message-Id:Date; b=AWLeh89JpFPTb6xWYf+lViBspVxws3a+nJ8zj+7ikG+a31ulR5D2/IVTed9rZYB/5f3TvAraHYw4qNPuqVisQ6Ipce8L8Rr1BFeMLYmYxLuv/pzup73SUDNVSKwJD+2lK7TWzom7I4tzytP/DB3LftI+fSaZUF0fFsrLL9RHeTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxtZPJ6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxtZPJ6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7127C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784833233;
	bh=9Z3Ch2A76ZVrXRE/pw8DlxDj6+muZTiVxE7k/7BsA2g=;
	h=To:Subject:From:Date:From;
	b=OxtZPJ6Fzx5SONRanhS3gWVfJFpPwqGUYOi5bt+7LXUrrKN52OZNIgzE0+jlKlBCt
	 ZdQKzwJxNRRfhmxmo/ZrlqzGCKuVkusq1ZiHygvptT4/L4NnNduU19mc2AhsraW6HZ
	 Fr2I8oQM3vC5jCzLr3ZXH+T9Od7B8aU1Vo6IIte4mIxRWVo42MqeGJYr69axTzpF+0
	 6qkpfkw0ln/pS5XkZw2d9AshuMQahh06N2qkERv+UR5XwNxdC49B9N8TSAwvQvksda
	 e2oGIx2xolyEMuWOnTiTXRdQ8fF7RJhOY8GgDkjV5ahrTY4jpBIoREK7pWaSi+t/E/
	 uxb71IipDDG9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5478C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483323373.6118.14400445415285643128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355e5fb5b3fc16abcf3b578b4fcb61327744617ecfb223c3f84cc7b83966d85c
Date: Thu, 23 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784833233
