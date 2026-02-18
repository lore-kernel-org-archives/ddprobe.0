Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1606832ED37
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771428894; cv=none; b=AZo7CApvTop3w8wv3SCdIBdzVlpnvtzF63yhdzTjiGv6hlTH6QQYVfKYmq7NoUq+L71Pk6fq6ET+oCY/phXAVsY1SNbZZvthUH52dPydJqx9U0hf42RBmvu+JhrERgxCOfEVYIZ0j/luRx1b1UKPxzv0ZR2bDs8Ry2MXIdCSFsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771428894; c=relaxed/simple;
	bh=+linXmvhAkXxTca4rQspm1T7li60dFLDRhU4yZHzuRA=;
	h=To:Subject:From:Message-Id:Date; b=f8aRelWKgOmiNgZ8rmhLWNbjM3gS88UGhY3my70qwzJ2kWwMubHfrz/ZLvEjQTAJJE/OM8UlVeCFITe33jM/+M2J91L5Ke46k5QHThjRJB0B38LEvQG3KQC3BRdCuArwk0UyCUKrdr/8xn9wMH2dE658PeZZaQ1QnwV8Ervd/BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSp2VMhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSp2VMhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEE4C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771428893;
	bh=+linXmvhAkXxTca4rQspm1T7li60dFLDRhU4yZHzuRA=;
	h=To:Subject:From:Date:From;
	b=aSp2VMhiWMWGNrp4Mx/3OYA9BeHjQfAujtcYL/FCq360JfRGS8Rxn0DEXibEy/mqG
	 WOnsbGbcfQ8gOIjhA5BLPEJiCQZkWkFuOcaJlPBGxENGb0DThuFEBbiNqUHwpKbYE+
	 uoPUttE3GCOI8DHonUWp5xUd5NWeoGHsUXMPQRxsKarSi1gQI68x8syj1tID3teSNF
	 uwf/hzmSxro2OgKzlDWuFsiUVEVk6rSjyuvpgWffJoGd/ymJOpjeOy8y24D5FhZTpN
	 2oz3mDdIW0/7FaQI4aO+mcVkBpme6ARuN+6E5Q7znTz9HVYP5NzBJAd0cepyD8Vu8W
	 Bhw1ZABIi9nkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D09CE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142889359.29928.2184925628381749250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f903f3406dffa51cb3ea55f2391d9f56247ff4902be6ae382a23b57670611c6
Date: Wed, 18 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771428893
