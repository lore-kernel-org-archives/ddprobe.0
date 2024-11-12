Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5E018BBA2
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731444354; cv=none; b=elZgsWyGUSFufEm44PUWeofpIGu3VyI11kmF/bscwHZP1IgwsmGwtUedJ/t/O1xgor380VgzEhBsWIqU/wihr9rW2m/9Mw0NKYR/uZaivlBUMO8mRR7a/tBmQxOoDvjOqSSCf0ZKo+pti8c2MDvA7SZGmVktvTft9mC+Bn44lAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731444354; c=relaxed/simple;
	bh=2IQoZWBauQ26nH/ztqhpi3QJd4DOEC7hyIoFy8O0A00=;
	h=To:Subject:From:Message-Id:Date; b=BdJaxtiLq92BpVDawLqcjNnsV3UvwAYvDTkZmzR1ygNmRAvuTp+q0dCwzyedghPsuVUvYOIFKjDJ2n+Uxg38/UXjK+NAHyyZ4d6oLWMgvPJ1aqzb0vQEUTEkcCsACD5GcBoC3RdN/3TV9dR0y5QpwsdYacCzZXG1RKYZpVz+Y8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShtB++Qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShtB++Qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9338C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731444353;
	bh=2IQoZWBauQ26nH/ztqhpi3QJd4DOEC7hyIoFy8O0A00=;
	h=To:Subject:From:Date:From;
	b=ShtB++QdhaYocIkvh7KqPnDlaJDVv9gQsSOQ0EEJL3B8ERuCYbvY4O7I8d31Vh7yQ
	 qoIusd5FP0ZQlBU6ZjLFQCy38xEtQr/WfhkXQaNTVu19OyCkufFJRChgeA+Xk6MTTV
	 PXjpUGighw5h1QMpgPKMWcivKBT4eJs9KvZFpL03O2oIA/DIvg+znL7RoADZ1WRijj
	 CFXbkK7XH9Xin7eX5l41NV3Kv2xRJ9tAgJo9UsYZK/hkl4uD4WOLU2jt1h2zNBgSq5
	 pdcoO4tUMPY+g0gyywW/d7bLNEfj5Katsb6JJDjrbMw24dLwmqe4Yyyo0XdndB751G
	 DAh/A31UlRoJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213CD597A4
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173144435358.12227.12028771107757814850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29d91b7ca87b5c6ef910a4b77fd6a554df43cfb8b1d92ae484561c42797ed78
Date: Tue, 12 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731444353
