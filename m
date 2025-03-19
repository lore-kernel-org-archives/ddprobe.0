Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513821361
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742405994; cv=none; b=RwFkZVJVkxmaRNuDT0kgNI72xu8qCz7k/Lwm5FPPv0PrByIEfCzpMu3lBz7tgAdIgmnkJ+PS81yH7F+Zcq97EJadeReaUrB/t/HsLwtT3/6dXXt47/zkmrNmeW8WFmrge6eEX8SZJkllIWxbs2kqEVu5PUuS2hO8gYojOORZzFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742405994; c=relaxed/simple;
	bh=b8ntnGljZSvmDiO2Uqhzsw+ltV0DMIpC3apQfNs6rUU=;
	h=To:Subject:From:Message-Id:Date; b=L3UMrt8LYrAVnEI5L6A1+mNEkh82Slkudt8JvJD6fSP8+ma2j+BESzBHiRuH3Y9dvXxd0Km5vDwlwpc4576ZKxlRMXyWPJg29NFpZq87gr2AstPp6hL8+D3/+So4PXMTqhwYpW+BOhMUaGcMuRZwj1pr5H7cvwK1ieiOMnj8oBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaH/1a26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaH/1a26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF15FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742405993;
	bh=b8ntnGljZSvmDiO2Uqhzsw+ltV0DMIpC3apQfNs6rUU=;
	h=To:Subject:From:Date:From;
	b=iaH/1a26lqWduLPikSyeCdhyhYxxnAi6RZCSGwTetFRaaX6ubg/yYrfO8X4GYqd6w
	 DJZr3rAw2vVsaZCZbYdUuT4D15qe1RySIRo9A5mwkEy7MWw9qy8qOUrfqZOV3pEN1V
	 +BRNmQBSzzBta6ScK6ot0ixF7f0uCusyWikMzaaAJbYL1LOEMgDiMRQ1QOArZN8UPj
	 N2P6tFvhoAsntIjstcNphOPA6aCahXjfMvRS965Zq6tfpvVjael67SuC0RRzHetw67
	 LIg5Y0ho4mnIouAca+xZrDKm9tT56BfF2T//Sz2/mCVkvVbmWA2mIdBMeBJrxiygyV
	 pC+JakjA03pBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C17C35FFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240599366.29497.11446293632926697659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9bd8499f737f26dc9facd7aa7fc93f8c761f01ae062d6c75693bcf9cdb2239
Date: Wed, 19 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742405993
