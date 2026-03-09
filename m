Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2C62FFDF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773080694; cv=none; b=iqqX5ShyD9jyJlPJliF52O3E7I0NgjaA+ygUyFHYs+hRO7nYwlvq2oagQ2VCvjqmL3+EBde9lKip9VLNOhjHgmd0fMQGJvIgnvD27zRxeZr22JJBxspBYG5bY5g/KoPdylePHxI1A2QrpmWyJBrNfjR0MeOJoGdIlHCeJINQxUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773080694; c=relaxed/simple;
	bh=Sxx5c/pl0yrjyzkq6BsNo8EiOubgaQdiUf/KId0vts4=;
	h=To:Subject:From:Message-Id:Date; b=gizW2BYm5IDej1RDB24RHTEczjDGWNppJ+LvgB9vMyTkA6C2t3+iI2aNS/HB8Ogk+nDveIrVj0ERhBAqZdYKBcOs67cf7hR0NQ+vE4rKVUaBmk59A5KXCK2PT3TnvDPfPprSBKQgSreNuqVWzgLADMMAxYAHKoC8ZPCnflx0jpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a92zQCFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a92zQCFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A765DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773080693;
	bh=Sxx5c/pl0yrjyzkq6BsNo8EiOubgaQdiUf/KId0vts4=;
	h=To:Subject:From:Date:From;
	b=a92zQCFjHzEgqXbEseE39koo4SQFxBRqxfCrsn4yu2Zwxvw1XY3mWV7Pvxb684klN
	 htNPWyQi3K1Lj7qJZIicQK/TYwyEHwchqD3Pv+xyplUA8AFmyFhKwGNcefqDNC1Jey
	 eYBSsByN8R9XvvakbeDBIfRELm8xMYT066VSQ2tYy+XQ6I6cLVaRou1fprIwXYSuH1
	 oo0pDXiq5Jq9sPmhwXFhotVGwHdejh30OBT0H5Z4Tw+69/gek4Wl779BrLKlQJXgJj
	 UcgGL9jdD+tJZEZpJgNCfPLfE9giTOmhTgTx9DmLgMQm8O33BfOLvkgcXJs3nK7MPq
	 AfeGjo5D1kPyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FCFCA16E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308069357.23491.14202098794771287745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f949a34436a08f171b85939c635b0b2984f9cc9885533f34d77cd10032916e
Date: Mon, 09 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773080693
