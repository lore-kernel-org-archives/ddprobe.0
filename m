Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAC817583
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750324794; cv=none; b=HAlUX7FgiDzta3agAy2nTzKUU20fJb1VSpRADjtgnt90PDHgJzzEAw5nHNfJMEStnSs5YGtldfDx4yYwj10cHOsE5/tCiiZHIJsGuPN4vlous83Dtj/Pq4I7BW9lW26Z1FjsT4Jh35XhPVDB0TCNXWSVpAtV0pZOIyW9uWj9C1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750324794; c=relaxed/simple;
	bh=ba9L3+xQ9JlYM6gdZJslOEnIE0d3mRRVdXtXHPWvPVM=;
	h=To:Subject:From:Message-Id:Date; b=QjldQyh+NitSrDsCd9h49T1ds+iJ0d1+u0Xudb2xtIVJaQdi5Cc95IPlbhpteYnzSBkRrkzbShDFWpavjw5I5HzL9Eywh8edyvXEOrhZSEX9q9ZBSNbYYrlr8lqRKlzlsjStnWojRKjP/HJaCxN63EDVmHTaSTYLiV7ljZb0qIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OET2t3eN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OET2t3eN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C7C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750324793;
	bh=ba9L3+xQ9JlYM6gdZJslOEnIE0d3mRRVdXtXHPWvPVM=;
	h=To:Subject:From:Date:From;
	b=OET2t3eNS9ixDIgpEL3DSRag1xJ/CsMT8J+ZlHZg63VeFyyVAWSgDiM92veZa1FiT
	 qg/McyU7H8NpDiHhaherTUZ6tBuUH1i+kNEliFfiJ17tRKfCkfvdAFkNJ1q1e+R1Q+
	 wMC4Evg0Bg6MFc6REZhK0CN/9qTesRGIsd8ZlsYRI0cr9ZKfWCuZsQ448vQBQ26rIS
	 WrAn3Evrq62PGJgUCVFYlfz5xkaqohoAHlSdAMii7s0i6tRqMCjlJLjKXE66JQMAIh
	 RYAOmR6P/opv0zSBv8Ifu8HRTgCe60zv2jG9xUglPQlbiqC2IFlAHw+VQB1X4UrlAh
	 9vCbOysGq879w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1FC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032479358.16169.17332687515516528256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb594c731a076bbacb3119f40415ffe5a4fe8b26448c2112972234a7e67353f
Date: Thu, 19 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750324793
