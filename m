Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6066318DB2B
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743989995; cv=none; b=TMXusG6vbUwDKGQfgBOYu1Glf+FhPyWpNpNNSylPT+olPKkh8wGvv62ieo2tv7u16YbBysczBBHD9JH4f2pNmFij3141KmR48HzuymQ8iT50yHCCNGgclBaEasAg4y8WYpC/LKsGoJxbdJBr5QMXm3f4GNMiAhQZYeHBKMI7sOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743989995; c=relaxed/simple;
	bh=FFNE6KuU9sIrXop2OJgNhWysCbmY/rMiwL9xqNI/4Ek=;
	h=To:Subject:From:Message-Id:Date; b=Nd9styBKxauUg4EvVA+a0c9qXL3aLlmsXZtQHE+RPw/E48W2i++SvDLrK3zFSi05Bnb1vLheWa5KbvCwOOJDFmGGnVyRux06dt8e2AKJMnrnFFGxRX7pQI9WfkixRUtCuj3Kr+x4AAf7jYnKly7nPZKgMeOobqwKPr11yQRnCwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQrhqoYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQrhqoYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A26C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743989993;
	bh=FFNE6KuU9sIrXop2OJgNhWysCbmY/rMiwL9xqNI/4Ek=;
	h=To:Subject:From:Date:From;
	b=CQrhqoYjHQ6tTNWWEX94PZREZ5GWrbYcZgSIpGFdiOtlbOPwciFZMb7hEAKQ2IvrU
	 7TIpD0FkZxm8vuSIDXWh3NNbzgf6ioQG1L9rVfGztyZXLrIOXg/IHsgB+raIVxRrLc
	 XSvDESTIYyRej3S6zUH9fEKORDaBWQRzDsOd5jE5mgmPbrL3hEFBSYkfVTak+TCjDn
	 hhj1hRnTkrVQ5vK4PK+fWOMuV6IzpHKyV4hFdKwe/D43FDRKv8iLlQi5rRbT77PSQK
	 kH9r2f2oOvcC/8B5SXPKjQhob1iQI3KRBTHUIrRMu9uhdqcahEoEaLUNuINGN9YYKd
	 TuY1aLqv1LKZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC59C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398999366.1320.8262237214118852418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d281bfaf28bd8b0066415d5aaecdf1f7d797b8fbaaf39a1e74f39a6814aeacb
Date: Mon, 07 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743989993
