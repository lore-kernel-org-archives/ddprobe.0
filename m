Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEBE20E32B
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729208754; cv=none; b=pzUSmEkU4DOf1teiY2bqw+sVVB0lOqhul9Oh41PrGuzTlCozLr6NXFBAgt29mLVF5hVjbL7RFoq22p9AleX0rhQnEMBSv/8vhh1+vFpihTwdcqWYAEk8TTGgyKdvV2kZwFpoqLzFBIbE+TMtyuGiFtElRYsfvTbbQdzeXXL0hdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729208754; c=relaxed/simple;
	bh=bP3UaxHBelxdsz8OBYgP5jT3yvGEb5xOC09phJisQ5w=;
	h=To:Subject:From:Message-Id:Date; b=na+yFVbKiSIJ9u+eBLDFpFwCAas9q/NYARn6inej3R1S/tXc5Rm7dHFaDpWKLHkCkU9fKr5CSd0LYeypwpl1+OSVMQEwzcJvxqBciODp+Xo8tRCE6lGuFvJdlViZavI8/cXHNNt3f+gc5o+91guvILQLtb6d0+Plh0RmZQp6+NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfutlCno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfutlCno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06EAC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729208753;
	bh=bP3UaxHBelxdsz8OBYgP5jT3yvGEb5xOC09phJisQ5w=;
	h=To:Subject:From:Date:From;
	b=HfutlCno8vJ8xlmRM0HtUD5yDjDLch8TirvfME12F/wvLR+9cSglGK5OTXGPX4cmS
	 JUsj9XCscPgZe0j1njvJrhivhLOJnFxJc65Q3vwFIS49irgGP/DKf+F0Erezqi1OXv
	 AyERQKxygUMK7jARxt2dbmK/Ro+6ci/FtktBZiHUV35QCo4xOx6lToof6lDirvrDtd
	 2cTNRdQus5wAO7KJP148ADcc8FksdGmMa1nT6lJIDHXLM9BXEKmDqU2ShLQ1sCK2ME
	 QJzzPRq2s/4sRZyQf21EkVn5LZrtkmMsw1qP8zX9QzWeA2Q2GZvWYfwiHIhGzfePvV
	 mdkfubzgKYUmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300BD3C538
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172920875359.22560.11138008554709886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01707704f33800ef2a81c573640ea85e065c6909e57803999fe79f4415c18043
Date: Thu, 17 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729208753
