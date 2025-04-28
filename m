Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C43270831
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745884194; cv=none; b=XY3evSioDXWG9Ojgv0Mxjl9owEmknyH0OvdnGs3BJW4jklnwSeagJSJAOMLzHkLp3D65CRQn8ku9gUlK2HD3lQaISr09rOCojYzR5w+5rZQ6PSVYzbMRZfnVIc75wXy/ya0npa9oeT9vKIv+WDKlCug2yMWacFlhK9MZYiEEcrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745884194; c=relaxed/simple;
	bh=NYBGaB2wVjJfn4MxEthpycvHnoHQrkw1mpESj3+4OY8=;
	h=To:Subject:From:Message-Id:Date; b=Ewoum7OdCdZ64QYbThTQwMy3D8ClFlpgrVUeKZ/opM0BlneKPp2zsFXMlWD/POqN8uNsQjTGTJIEJubEwwSzksudJ80Wxuuv1PM8DTaRs7MbxM4e5Brrr3NBxwNy7TS8IAE384y4yt+QMm20PQku+bcK7LsteSv4uGp4Ou1rpvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2IYXPQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2IYXPQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26FEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745884193;
	bh=NYBGaB2wVjJfn4MxEthpycvHnoHQrkw1mpESj3+4OY8=;
	h=To:Subject:From:Date:From;
	b=r2IYXPQhJD83Hdz5gNbraKg4K1jRYM8PLAlkJiyf9f03C6WmLOy0Ac7NfEbqlbhdY
	 w0ejU3n03/LhXtYZrjyuAN9rMkDfH4ko1MzQ6aARIVxqH6oEe80pDR12R0TVnEH8vh
	 7i1QO9kY70TB3mnVsg6d92CQbu8DJcHJBiYCLqdbQHUENx/LNVIgZHKpmiG2v5vFW9
	 +5p9B7YDEBTbxw87m+aFR+4udfZx5f4TjZ2y/sOVcb79z5y7ReeTl3Gk/0ulVIw+te
	 1Cglx3zkIePHePFC+YbA4g4o2+gLGSxFQs0cm3jJWni1kGNETv1dggGO1lrQKZULy7
	 iqxKnnHFwQtCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9440AC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588419357.6358.7694332974275479093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85aebb2ccdb25bf66607d3799e0aacce8c0e58c8ef09a03666c9a56e0e8aac97
Date: Mon, 28 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745884193
