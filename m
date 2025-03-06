Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5926B145A0B
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741277334; cv=none; b=M1N9IIa7FeV99MGIkvqlgM1k/sfOBSOjFoKxUjQ/hg1fPdWOULu+gO4sWv4B7hsQbWMsuk5x9k9bkE4/rT6Mj16QDR+Ykja7E5ALorAV2QAQQIylyiiBpCdcDX56RuSLo++JOfVTMje1NYaaiKxaK0hf2fjQ3OUcJqNNysuwDBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741277334; c=relaxed/simple;
	bh=upnGDbRWn4UIPUK4Myv6L/V2Nq6Sr8GilxVJM//w36Y=;
	h=To:Subject:From:Message-Id:Date; b=qxfqa4XlifwyvpoeuijwK8Ahn9SJEBQzF8mjwPIDKne64buni0GzCuS6ZnTbn5GranZKQHpE3WAT1ydXWv6C++KOLGfZTIAIb06V3dlXyQo5F/cVyTjc5uXvq33D8AuXGoe/Ox8385I3/2UtxU8c4XtEQfLrQZnhAfjCN0FePtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xvlpx62p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xvlpx62p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E08C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741277333;
	bh=upnGDbRWn4UIPUK4Myv6L/V2Nq6Sr8GilxVJM//w36Y=;
	h=To:Subject:From:Date:From;
	b=Xvlpx62p7Nrp7vCppaFqlkGLAPApdAkhUMo2suktFII+xHBBljSCpWv1oWcPmd5X3
	 NraKlUITZGW8PXCmK5e/tfArY35C7EP5PWrDUk75QVnuOaYCEIf39RyIX8yncpLABl
	 1npmfemHGKOWwpGwd+HHPxhjz4mnSEKUx/01pgeGREvtM18mQEfEu9SvI3ejyERg2y
	 SDEu2qZ1gkoqKTEWEXnCAGjvM0uWW1vL3aEQFJufH5rlGeyTUP00NxwRUyFK3TjXVO
	 4VOs5EwVZqflleWZbEwce41CEny+i7fisS2SigIbl8I/HyQ7e28coLsN0km3BcIF7s
	 C+ZUPcZPnTJZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABCC28B24
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127733359.12723.6177838039807281111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ac1887918edf3cc5ef5a86db68f1499fec3acd244bd7ef4f23e36f8ffe4cec
Date: Thu, 06 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741277333
