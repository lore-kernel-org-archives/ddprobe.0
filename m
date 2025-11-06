Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B530264FBD
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762442394; cv=none; b=aMGiu4q37J4/TwSAmuwChuZwUZJ+z7rSqNmyBeLiOjhYyHo6CgslJ3ncL4R9tcrjXBQYcxQkK/9zaGsM0AQGkHEjG7BdwAJPE3ZbftRiEaSpZ9g3htqVnzkYKSpolmO0GmpwOjXq7MZHc6yOAc8bFScaB1IdP6b4VdxpR4mDNKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762442394; c=relaxed/simple;
	bh=Awzfe5HmRyIFDgrOBYYhvW/htBUgWhPdZQ8ySdRcffg=;
	h=To:Subject:From:Message-Id:Date; b=hZH7mGb/8J4RXRl0Av9Sr8lZ1oC8R4GtjLRnUou1wbej1vu0Us9S0q/zUdhu4P8iDugUCSiotHi9Rs6fSO2jZMqwAsbCFHBTS/YyLiHI8tQPw4i1mKB9WWoufscrkhebTKSLANQZoPijwCwuh1ooQg7on5T3eSKaad6YfO7EbmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdfSohMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdfSohMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA743C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762442393;
	bh=Awzfe5HmRyIFDgrOBYYhvW/htBUgWhPdZQ8ySdRcffg=;
	h=To:Subject:From:Date:From;
	b=PdfSohMdd2PJ7N/ACrBrrH9KC45f6EgoYjcIwGNUQ3DDeq8oCmJ9W0/DLgX7F0NR0
	 8+wzSAA4W1qqDiLLz4Fx9c23aAxUntGG+OWwXu+vaJsiwAlbb+oifYtMP+p+n5ox/F
	 wgySJOFZ5ExXz97YLJN4IjTvdcxObD+rugEbEmeo7bISSXFSKhYtXJa88gHgFu/XLq
	 Tvt4inZ8HzE6oeeNaYq1BjHpw4oYp/+EXq/K7IJ1FgewNBtYCo3cpb836mreRSaUIm
	 TJI2Db2qZjdYifhJvDt8j4+U+rva8t7NZSqLZVenwZGk9RaStXyIq1eCmun0cgKouA
	 mlu351pLnvCMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95110CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244239360.667.481269501341814426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6502bbde62f9ed6c7b8ace245a52328989ad5dffdef9d20de64e394785ad0a0
Date: Thu, 06 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762442393
