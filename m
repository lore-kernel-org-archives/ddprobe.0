Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B472FDC54
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077634; cv=none; b=GWyG8rnVdRq/nRnhe0xXqxpdOJXCMqZsWeCjKEAxCjA3FhhcgLpsbQhJSuXi6PPsGBrsuF8PAKPm4riB7VaEV/kzgVErX6H+shZBX3PJZ+8ALMj3v1lrTL+I4+k+KHs4u/SHbR27jRQvbf0MjoEavd1psSwEIMQtQsqjabPpvlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077634; c=relaxed/simple;
	bh=tXjI8NJS/OF4td7O42wDOOHQZS4phxeLeSE8ept2IWQ=;
	h=To:Subject:From:Message-Id:Date; b=ZkitEIUaWLrqK1lKWaorXouimAjXdGnNEtanCseE2DsqFjLrM7iJzGyWsEt2c7x4YqRbeR7QSAcxR3VyRoOSbPgYjoQLcO6Qp50A0JwnaUWcUdXehDLZchjUfUJS416l4x4U5nA6wGI1NucOwK6Lhk63JB15YHyqHsDxJqyT6CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwDqJvQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwDqJvQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD56C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767077633;
	bh=tXjI8NJS/OF4td7O42wDOOHQZS4phxeLeSE8ept2IWQ=;
	h=To:Subject:From:Date:From;
	b=NwDqJvQL3AFpoD/cu8cx4Xf7LFnkoiQzMyQfOLnZEbs7vF+vi5cdXNArjsJwduyVd
	 jnbcLIn2a9W9PsWJBbigYul3ULSNl/bk7S3cJy9jJersDHHF6cejG4SWRhgzmAziMX
	 RDm+iVT1euoJRQ05xerCOYaD56HWqpu2ctf+JcP872+DJgW0ZQwADWVN7AGWC81skT
	 JGDvjz//oj3XmFb7DGf9OC/G8+PPXlAQqwfKMxuXasorlA7w24PWDekCZaEB8/bN2e
	 VZgPsjRtCyWwIVTLFkMZMMrGAozdYRCiszhsNx2wgg4uDfvj8oAkzdB0nUeR20Pj5m
	 m62dS0JJQPNxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C86E94116
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707763358.4519.2288788551466801971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e166f3cc5d29322e082f9033a64da1be6bf66526bac1051bc46ae9f625d46f80
Date: Tue, 30 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767077633
