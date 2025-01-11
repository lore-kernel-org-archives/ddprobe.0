Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264C31114
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736555154; cv=none; b=QAuuACUh6hRE8XR43jLzfYQWXw1WFOrmYRo8rEB5r74kJXcJ1hvy57ZOgRAN7Ea8HYrjZCrm4bafSbZ41Rp3or+EGUFgnxG7FxkwOIY3SK41v3Ky7rxnmwA2qJqL5BOQbwp67iyaDAE1vsreHRDXhrmX3W/35OXRSorl2nHf32E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736555154; c=relaxed/simple;
	bh=qmps3xb1Conlv4E0H/8A1iL/HNETAUiDQvlEtc2G7Nc=;
	h=To:Subject:From:Message-Id:Date; b=uaH+SCHimkynTttFzmxfjOQcye7j0dglR0rEntdqgeNN5bowgMZsJtAcoSDYNaLLEV0R6WgM3/YW6GG9ldtWlgK9Uyb+/INcN5f7LL6tuq5iuW8Jz42iNQPO9YvI0+0QutVtFfUb+cZmR4xrdJDFo2tIStuOediTNuLUr4ci9rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfDuIHkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfDuIHkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBA8C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736555153;
	bh=qmps3xb1Conlv4E0H/8A1iL/HNETAUiDQvlEtc2G7Nc=;
	h=To:Subject:From:Date:From;
	b=hfDuIHkQxOLXLyvtrJcv1Uufc16VU72ALa/rO4TsnkKqJavVe/CtKGdXALroS+Ssm
	 D3WU0E7U0N2PzVEY0COEYOQBRT+3x69XGTB9h3YNIDlxNLXAr5AZ1p6pRZCslQRLM0
	 rugito9XfJGjuz14RWGLNkPKw6oDXpE4yLW8geuRQQN/ndmJKFEjKl4549PdJF4+U/
	 Ena1ShUwii3O9EMQJg+jGaHdeJAprFF3GI/wANkHa2GWugG/SXR+6sLII0JNs4sp78
	 6/DALpElUCBhC1HxtnIDB07d8wPVH9PdgWCDJQssiFI+F1YLUf4clFS1lz8jGnAUSu
	 y6CpTS9/qQTnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B11E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655515359.18180.6130831176010357986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d75143907eb80e90fecdc27f91bbb855eda43c7d0681140b63237cfa0603125
Date: Sat, 11 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736555153
