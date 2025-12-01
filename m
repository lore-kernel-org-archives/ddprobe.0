Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3F030F958
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594174; cv=none; b=XdBfU37N1T8z5CzdUgTAFFQcjP/Tafe+4EOuVva8NdFEX3nilHJ/3x8Qunwsldaec1p4lzhEhs1XhVfq7FCELGLWHINX7OsVkLy/+BshS6RWkKfnlfgV9QYpv3P4g8PjEZ4JdwyNgMy2WYb/yXq5vtuktm2x4bIznVqb4drbrSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594174; c=relaxed/simple;
	bh=w2hWEy/BjSC6npgJTKlD80sQVLMn/SOFPy/Ue4h8PHc=;
	h=To:Subject:From:Message-Id:Date; b=K1FwJlHeuSyFKOTOIkcjXUe1jCUynSeq8ujpUzPPRGJSkbUK0QxqU8mDIdOCSvjH0Dx1r6YtH18WXLG00smngxtTbuW/n6T9ELRVaPGhhyAdXPwA/eWmEZKSKoq50DncvM/DywEbCf7gcVfr7iuMn52qF9rzKjX9zZBI7AiCX4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1Es3Yux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1Es3Yux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56AAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764594173;
	bh=w2hWEy/BjSC6npgJTKlD80sQVLMn/SOFPy/Ue4h8PHc=;
	h=To:Subject:From:Date:From;
	b=p1Es3Yux0YfhavTQmNTVb/Iq6oOCW7EUr578s884WvUck1ULHjhp2XctTdJx9atYw
	 DKs4XeGWMC1GrBQWZh6GLS5YNfBSRuN0YmEERv6fP16yyLliDnQCK+TAeq0fxkRYWn
	 a8Q1oUaRfqQvVYH4hZjbfEcS6LL3RZpMe25emTInEtmj+wXBbg4rVJTAV3RUgT/Vp+
	 le59HjCuw+KsmHLWTj8yzUfz0iIpranGpVhQGXHrfzezlMraD34jvl+NWJxugSfjP7
	 Y3QmsK80sFCGfHU+74pmycReXSxbw81UGhxo0qDx0SAiD52ovHwQc/0vzXnzgLDm9v
	 nfpiGdXFuM/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91276D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459417358.24072.5300852988677339081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4606b6eb0ac8a94a93b406e62d2ac3caed0681e48b612a7235fccc3dc8860a19
Date: Mon, 01 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764594173
