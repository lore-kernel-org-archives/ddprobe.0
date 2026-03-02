Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DE5183CC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772414694; cv=none; b=KuWMaftB1kQcZ9e7xUMmQcX3CxrwB98lkfdrxWYU2vNtU50GdT6fyAvSNZDs89iVHZ5IOsBdk10VqUhtjAXHQTiacIbcA8/9E9XVyjjrtCi3wW7Zsc/I1AayHDQks+r48lQvwYsi3kH1+Ukr35uQZGczB7BWqihwv9f7Ep41Mzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772414694; c=relaxed/simple;
	bh=ujXRhrQyNdQuPEF6Aop72AbPDMliZHRS21Dl0xaam3k=;
	h=To:Subject:From:Message-Id:Date; b=BedC3UOCIwp9cqQ83Hci6QbecMWp1LGIPI7XMDGGMHmj1wC58NJq+VVQ10c5K/jLAjUnfQcz80QHyy4RmZGUns8fCkguMAbOTEVrdLlDLT1DVRNNxnrLJ0LjvOQFpB8HRaMvyKcTp37GgqXkuXUrsxh0jHsMweBFvTYC8JF+ULY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NY542hLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NY542hLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E4FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772414693;
	bh=ujXRhrQyNdQuPEF6Aop72AbPDMliZHRS21Dl0xaam3k=;
	h=To:Subject:From:Date:From;
	b=NY542hLW0fblzbxQM6oeo1q8Lo6r41YLimKF6aruetURTyP9sgGXwcu7G9ODbx634
	 Hlnb6JVudQV4bM9jkJrHuBPv8Wjad57vR6YF6aBbJXEr35llgBU9Ayvv6vrrFyLgeE
	 Lc0hcps+zsJCAhQe4MDceCxhuaRllyBUG/EOjmaHCETMlPQB2IK1OzNAFG8vKhr5sJ
	 iaWsOQ4+FTJmHlGyMgjRO9yX1fD3o5PazgtF7nbwMM0TpFHGr1Lq5RGHO5XWQXrt8j
	 KiDRtTeLsNT4op8r7P5c33/biY5b6IBrcJISgtOpGlOTC2S7QgwEvF1xlvWROy2QSR
	 VCiLg8xOXolGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F9ED58E43
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241469363.27949.4786717402648329727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6401ec8a70bb0d5853e8607c724c7b5a705e7b16f98dd51490ee0a7febaab638
Date: Mon, 02 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772414693
