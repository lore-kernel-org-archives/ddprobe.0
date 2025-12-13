Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BC722068F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765626773; cv=none; b=rmyo7glcZcstrAxzDo0dNrXr5pyP4Lg8dYE+lC83IwF20IgHvr/rWqubVoiywnS41K9yXrWMdZFInazokBkAqexE3Wd24MKrT9NwZjXiH/cnl32TbfIHks0CjWNLtqgg1Fh3YtMmEJDdYXRQJAj8i+TGEKU3n31VwIm2KDEquto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765626773; c=relaxed/simple;
	bh=KEywkX6cPkkYhi7ANS54i23TGAcGYKu75ldQSnIq2Hs=;
	h=To:Subject:From:Message-Id:Date; b=FEsCr/V8R15hxtLdkA3lfk5tV/vKn24LXeoNmZ04O8LkUZubiY+UDn8cnfIwg7WjDJmpFGLKUrt6te+Cw42zgvr67pxOVpmDecpVG0H0scokNQBh0c782kNsI+VZEuRz45g5HOzKkzH1SPWcyLMF5vYDPOroISWxSZnKpjWlws4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5AJj7aJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5AJj7aJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DFBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765626773;
	bh=KEywkX6cPkkYhi7ANS54i23TGAcGYKu75ldQSnIq2Hs=;
	h=To:Subject:From:Date:From;
	b=B5AJj7aJoh9Cga9i0cJZIiI/aHEkbdneXVKyrZ8gKk3uDOAtDe8BZBj81rOXhJc0a
	 6jzMkMYw2EkTHnJ/6fgY9mf6Nn7O2OCv6xYcE749OMkMHT0ldDjz9frcZ9iqjm3PkK
	 qhOYzRgbB5jqSByccJsg1yPozF4qD7N4zk0/jmRv9aVQNwIXaYdGj9AuZ9/iAIdnxb
	 B4/uyQ+3B16INDhN1jtaz69uy1r9mjg2nMX+Ug7DbZuSCKPgiNm+jmMI4hsjmjgqv3
	 KVUEbGPPDVYK1uBnKa3+yLCBK/gyG8fpSNFv+Sm66vd+0teMOsVsXSMpqVag1zEW+Y
	 fhxPjgciTTuRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE9D5AE45
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562677358.8456.1787195231840163624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a8068b52a552297a3bd83c9051b68a562e2752acd11a6614fbf5a18f085151
Date: Sat, 13 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765626773
