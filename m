Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F4F42050
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766310834; cv=none; b=I4S8srv9CfL11oguPuKR3pivl5U8g4VIlUE4TFQ2z6O5WflHtIZ6kSBKrxSaVLAxclpltvHKGJWZFDPZrF6DnmG2bV2bICAtful9YlYvJn/tRnoX84jBxQhsThUI5dd0t8pzny9NRajTbQiBLEk1w5EroHLu901QY7DGBoqodFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766310834; c=relaxed/simple;
	bh=NMCEPgNP4n2PEoB2zTM7ZxAas1dSa7a15Vprtgm+WbY=;
	h=To:Subject:From:Message-Id:Date; b=eMGZzjlyy96nNd/d/6SpuOv4nzis3diFW9mwrKh/fXqKEXWt4ne4UUTn2hGp61JboGaPG+9GBFGe5NnaCg3mOvDpqqKhaK3XJd+viS2yr02GeJvCPcLyfGw75qhcuzalJDhyh0jhYLPPhqjwWElDb+s1o/gg2HD6JPuIaGrYAB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLDwH/kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLDwH/kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA69C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766310833;
	bh=NMCEPgNP4n2PEoB2zTM7ZxAas1dSa7a15Vprtgm+WbY=;
	h=To:Subject:From:Date:From;
	b=cLDwH/kN0D5YSZ32bRwel/SctldSYhminMZaJ4wpSsgV0cyQ8LqJFB9kt+ZM7hNbb
	 +6Yv0jXeT3KUOrm7eK4Pnm8JwouXBYiTBQtt3ya3z1cvphpvQFtVWeIN1TrZyPzWTY
	 vslFaiYNWLFS5DazC2X1pX823vIsoFaBzLtCFjUb6ljuhR8bfEPZSTA+zqHBDap5aT
	 6XT6l/YI5oGN5VJOSqe+yuD1M0MnUPVg6qOBX3WeJmX5Vl/y9301VQv8uUt/qD+wDz
	 H/mkmRpWT3JnfHgNvXKFzawM5h4jvE+azLZbwAN+OHlpeI/6UBP5X/0sA7ffAZ68/6
	 sAmYhY3WMnJMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F225E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631083357.21316.15291593578631932890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e61c19e2407598b5ce41b7fbdc9079fa5139bbfe800c3c2ee31febb765a5da
Date: Sun, 21 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766310833
