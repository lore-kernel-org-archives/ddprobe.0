Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3667D29BD97
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755061194; cv=none; b=qWEPsoU3FxjhasYk0g0OZvQJsNmTz4bUI+beG4JcWuWdnsbsCQMCnQgig3nzoeIU4xABuTKBeqSBEFQfeLXRkRCZZ2/4CS8EVLgQVLuZK/Jg/OyDtFmtak6NXF2JVySW3ufG5DubzoCfpvbsQrHvHtd17twERGeHrApDwZ4w0EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755061194; c=relaxed/simple;
	bh=bOmdpUjvKDSg3+Ax+hMvfYlq9rXVAhR7BKVO3oui8uo=;
	h=To:Subject:From:Message-Id:Date; b=ZyD3w8aEgZsRbg9O3VurruOZytPJQofmjdJ74436c+ULFzPr7PAbkFw6e2ytOoOntchvwdHEF4hvBv8xN/pJzonJapSinaSk9+VXF2amKjwYXu2ttZ8CBHrlM4IJJAZUGMCZj9yqHw1wxbsH/56jsDM+zn0DYEEBgNw6vtijjQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h99OkKKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h99OkKKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FFEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755061193;
	bh=bOmdpUjvKDSg3+Ax+hMvfYlq9rXVAhR7BKVO3oui8uo=;
	h=To:Subject:From:Date:From;
	b=h99OkKKKGRaEiJK9roBi7Jm52L3ZOY/pKJHo9aVSwPt869AE3Yn/RIGn3aLU4sjyJ
	 UrYE0rZpmlaSO7bPvJGUItNtokf5BHAjfwjk6mEkLcqSIchC6bTzxrPBaFROpA3zlA
	 22Fo/xTFDeoF4foG6dfD8HOAyxJKTnvCJSoX8JtjO87BrNlmMGmil5ByM65F8e5TFc
	 0tTOO7+RMllegoD9DH+lLzUd7Bpc+N9mu4H4pdYouxkbs4pkASu87HASYhtDKtIaj/
	 oQZKsii+p9dbvU6t8IWsVuSCoObiBROD+m4MoyJBAOPRyWSRQKNSAVjzpb6VcCE3vR
	 m0mNSJl+rTx+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6CC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506119357.12386.5529826579356591562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5867393651c786f24b48d5204c0a7b27cc547e340aa5a9e6ac46e69b23cd4d7
Date: Wed, 13 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755061193
