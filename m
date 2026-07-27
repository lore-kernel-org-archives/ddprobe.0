Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604DA42CB1F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785171036; cv=none; b=ewNTnhYR5BFQE144UUBxENZFVhS4KsUrB0TigB7MWqD3U+OST2vJ9PAs64WXkEkIAXgorCsGslxsxBUpTj2vJ3UA7GEnwTsSXBNGwTWIUtMafPfi4vQPaw8wqn6cl9bI9cwKYmm1LlLySojs4JkeIZ3BjKVbu6L7FcZa3Tx2lCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785171036; c=relaxed/simple;
	bh=1muuWAeEEf8HiL0Ze57rcG3/lMYUPZqChQENLHVcOjk=;
	h=To:Subject:From:Message-Id:Date; b=uu2StZJlM+F+KQGFRdRWmacyHZUym/KAvDMa3BauWZNe6hDXVTofzPAJ73LUmUPoSLY4FbN3llx67adaytbq5LT1PNS51LZtsdnqEp4Zev4AhN5U2la7Qs5qiQjGdePUTvLX/qXh2XKVHCZLsOaiNUwNrvH4Mz5XbTZpbEWu8MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj0SljIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj0SljIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9895C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785171033;
	bh=1muuWAeEEf8HiL0Ze57rcG3/lMYUPZqChQENLHVcOjk=;
	h=To:Subject:From:Date:From;
	b=Xj0SljIrvNlCwthCBIrSRZ1E2qfoYfcuVXCsW6k/fw+l/DWFW90JwIFPkJQPlSAXn
	 TyhMpZu2TNG4CwtFAm8dj1XC8IX92mofwR+CiZxFwIcfyijLwHOUE9awQ/nmzZPrlv
	 wyTKukqnS8klogR63EXui3m/ZaPuH6zGcvn/NcL8W2g11cB8L4yCuBlsdWER/qxDm+
	 xbbMnkBgmTf2R5imtp0A0cOC3ZpRnoYpehZwViz2ahotd/mJ8eUb3qTM/YyK7KMVFm
	 pnH0VfhivOfmxD5A1+ngE104oHmjpkLKOBeoi7EQ/EZdyZ9eAEUPRVri1w3MAKPrpF
	 Tk4cUqsZ/wCwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95A3C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517103368.4963.18125810949456352580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f41dd7bacb2f0f76ed3ef5be8ce3d0294bf1541c049df45c809e46aae8c036
Date: Mon, 27 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785171033
