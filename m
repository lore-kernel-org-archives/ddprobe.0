Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124A014D2A0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750668594; cv=none; b=MJp/Zsoq4NTlTcPenB/kPrTC5LV6+DoQWBoQCg6Dq1yBmjeWolcJrhXB4VYZnxhcGiHAEMGiAKi4YLszANl5RSPFR7gomJt3gDvXhTbQFPWeEBbaMg8hPVhebJTo3yWGS/nnSfxJo+24rNSF4Cuxr979dLUon9Z32N6dbNMQJzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750668594; c=relaxed/simple;
	bh=LCxuhlgy9kKJj5bD+utvUFhNCLys/GnhvIeV0hooSCM=;
	h=To:Subject:From:Message-Id:Date; b=iZGkcCNQAp4n1JuC+/YIEZmMFLQQjJci3atZYt4FevOyqBL8Tfm4WmC1InJa9KkNizCpj1T9WV4iMFRiQ8Fm8gvYfeP3kg0tFgJX4Frihk/DKf5JFe29yWN8OUM9Y6q4p66s6356J/YTt9tLczcZoa4ZYyWe5r7mKC1OovzY+OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlr74vsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlr74vsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D6C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750668593;
	bh=LCxuhlgy9kKJj5bD+utvUFhNCLys/GnhvIeV0hooSCM=;
	h=To:Subject:From:Date:From;
	b=nlr74vsFW/HYgq+12Uma4e8iG/r2Z6pPRoPAI0ZogYrNws7EwGdBRBJsNKfLAVWMf
	 xw7gccUviUu0yQ8lzfHw73zWYIY5hn+emMbwv8PeSicKc1cKUuXSwgiPj6B7xpw2xf
	 1GvvFys5KH+ECIMUwlFP5AukifqBbhQONtUcU7+7tPkPC/5lnTMcBnNQmlM+LnMymA
	 gpz545Bbb3vRPZZyEtX5fRmjCP87G2T7hNZ/k4VdLAEkqj4zOewxUos40HCF8xJOBj
	 dssB6mSXGSQ6h0MNpJ8xupP/vv1Pw5w8lwfk947r7N2dPS5eoYLUsylMdeRkJdV7DA
	 brxtLmYz5Klkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C3C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066859357.5890.15697197117742341031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8f07b8e08ead0af9584fda39ee753ba93652a201e2a2a17991eb5158343799
Date: Mon, 23 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750668593
