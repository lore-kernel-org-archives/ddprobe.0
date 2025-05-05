Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A5F1487E1
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746477594; cv=none; b=asH2oDXBihvIbfSoW8Cfyrv+7Ml3GEj1Ju6oFut+0KZuvT9TwHq458YTebF5i/D8yf0H95wDs0RskCtWo914esHH8QhxWwqzRw0q7Oj9zlTHWMJACw7fmx/HSYklpHoJyQ5/uq+atsw3UpIQQJiC/O1QeiKIlqjbbnPEgleNVfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746477594; c=relaxed/simple;
	bh=XAMl4UHqYLRiRgdtEkkspjSHisgokO0vFGFfhUGIm4w=;
	h=To:Subject:From:Message-Id:Date; b=aQQLzpZ3ME+ITAIwZRaAFfeyZw73/eH39y/IRmvjxeUQIa0GKC6mymIOjMSB6JmNMpD/G6k0ekWQlXwLvx5GkqRjjqGzV+8Z5kw1XczxzFxzZGhDTxf/r59XYbMS8jQGoPxNxVNDCnT/jDFgv+o9hZVDrophjINdWumvqAQh4wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGxXqis8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGxXqis8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD68C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746477593;
	bh=XAMl4UHqYLRiRgdtEkkspjSHisgokO0vFGFfhUGIm4w=;
	h=To:Subject:From:Date:From;
	b=tGxXqis8U6yrBCQXPKq4Y60GOjSL2B1akUiGpdmhoSjK0IZaHdLEt/Jdxbtnc2KYf
	 5GXbzyH2eWglog31pKWR+S1TQ3kBEpesWpndroqLb2yZsjFW/ldtlOsgXDoHWAJMfc
	 gtJ4NuspAmq1tPwXczAfHynu+BeF0k7o4es2vY6NZ8PEQ8noHQNT8DotcYWVsiwaIa
	 ol5AkGNnxDmeGXsH1OUJSEQP1K6uE4RC/JbpCnszkCGPgct2dmrr0B9QvmYjQdrCky
	 +CR3NRYK2kWXCCE2WyBnNHSSYUCIuE6/031/y/vcRdzFFYKaUyBSPSuQjqXZ+m+Ygn
	 t8hbIOYonbK9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58EC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647759357.20659.5521453257064902902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b9194d55d5c9aada0a760c9c0f03046844959c5429981f0ea8fd9d3fbdba48
Date: Mon, 05 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746477593
