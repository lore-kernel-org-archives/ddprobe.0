Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E72A22F772
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767519234; cv=none; b=d353uxQRVdGNK0O6hRMVCQv/WGXQ/eu1RbYpeuPT7KrlQVsowe5QKQApGvvjJ2wrcSr3zO1lTCVtwwKmDU/oxnbUI6hkao1e8K6WiJ+kthVFGULJ035yO4W8RLyAEfEjAz7BI+Lji5nFtohjdOWw4nc0noGclHpcwanYJcW6xms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767519234; c=relaxed/simple;
	bh=iWqwUJHy/oaNkMSamwAvFE8F6oT6Z3JKu6sFVHkLngs=;
	h=To:Subject:From:Message-Id:Date; b=elRJJzkJART3R3nPBprmrYLr5ZbxeF/+jRzMtlRJi+hkiIOGna3lb8Cm8lQdL3IkuHklZi89qJwMdodxEnyh5WTgwUUKjzwdpr4Hw9y6x0YgcG+IMWo+Y6SlGEFgcTNI76GEH63rCrbvXuNe565ocNKK6591W9P54tVqQ9UKA3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO6B56iU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO6B56iU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8820C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767519233;
	bh=iWqwUJHy/oaNkMSamwAvFE8F6oT6Z3JKu6sFVHkLngs=;
	h=To:Subject:From:Date:From;
	b=WO6B56iUlRbfFiGJ1/jAVCNSnCK4tLjAF/L03QURjqw9HF0gStk0Ov1wK1poVguUf
	 pK+t+5AvTUgEKjBVd7GvKqtCMaxuZVkoZxcmB5qvQstrprb+Jj3y6M1x73nlIzoyyt
	 wi8DXQxnIL4puD5KM35laASr+9rdlmgEssunyQV/ctgXFnB5svo1w+q7iU8K3kqdez
	 f32dT4ZBWPUD/bv7AbGyOToIglivDEq/AH46gO9maFxF/ar5mToijELQc+2WAXgF+M
	 N9jAb5SNgWAEZKug4QDxm6bQBQ2ohDbPJre5fKRHOomE95D90AAjR7RQ46tkH4ue0X
	 RzyCEggOcgbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151EC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751923357.9458.17911712532159844694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103ea0264e8c60295917dff46b3d8b261a87112b26e149d9c6064b98a634d4b1
Date: Sun, 04 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767519233
