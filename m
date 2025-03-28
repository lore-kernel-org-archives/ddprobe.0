Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C984A1940A2
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743155393; cv=none; b=qIiyuSg4JUV5IjlXA464gsKj6rFPrt5+aY66Ymxs6NJTlu9Sf/1Xmb5dF3C/O/uB7JpKzS01QHGpmX2V8GamdQnMM/mxXFFUoSfHowa//CoWBZb6BJe8AqPiuSETDxN5fyVR4yWJjV21Bn8QMMpcBEtk6OLJbpxiI4S/qGH/5R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743155393; c=relaxed/simple;
	bh=n86UOlJtsj/i2Hx1su7OUfVFnF5AFt/DDf1Cl1/GjGk=;
	h=To:Subject:From:Message-Id:Date; b=Vmovzs09tFsbJwpQvre40cQ5QxGy/jLQuk7PxxmDKRKleI24Z7RTAvs0p4Yavty9jOVNP8uR7SbBcDleM0DCAsauPw3sXGkqQXKt/r2n/kYJwHFIeUMlWm9oDW3aAaSLjrd73/g9qPSToNzsJk6ABL0jG1hmAfQPA8kPaQcRdvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1yeewi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1yeewi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB35CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743155393;
	bh=n86UOlJtsj/i2Hx1su7OUfVFnF5AFt/DDf1Cl1/GjGk=;
	h=To:Subject:From:Date:From;
	b=a1yeewi8yGTDglBfqwStR3h1Ddoc+LtQlUUD12ZNWz6/5Gq19l/qes2qJi/Y9TU+w
	 VaM8wMXNNEHBxed3XAFUHW0PrfN8tyBPPKQTEMCU/q9FnO8N+0Rg4SeFYUAHzaNHty
	 lnICB6MXz7SFXyk4vOHjgvW3LfSbiacnUFBcpuLlO2G7UKNzGZNm4ZGQ7SXiKsRfQe
	 aA2umd4pttgKuIMYyfY1xVEchlgYNxMpymYE+4voeghhC+m9b5GO+BWQT1bfiWYhMo
	 ShvLiGEOzcQR7UA9cYPTTFgzgg8N6FNzXQiHu2bNe/ShVjThnnlPHozkyyUnMPUPuM
	 RPo+AjUvvLl8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B0C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315539359.23465.15677708009865050610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c4f79979c8e0b68b662724c105129da42f84b6e138cffd893916d75f614a42
Date: Fri, 28 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743155393
