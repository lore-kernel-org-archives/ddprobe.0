Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3DA33C9
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735578354; cv=none; b=A3+K/o+Smbaj/Ue9DdnJUM3lYBSJ5NgXdJlKU7/m+2uv4Xec7V4GQccoH+0sC4kRWNDdNoltw9RvrDt51c//dfA7NaPuGhvTtEOB6znd/l1m9A/3XEJHglI2fhjMuHDSvlnGCGEEy1oLg5RyyomnY9JWqlR54lMyOMGnlst4gZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735578354; c=relaxed/simple;
	bh=qHRxOB9yZpSfPlnylkKPe0gDJIBFoktdjSq7NIvN4FY=;
	h=To:Subject:From:Message-Id:Date; b=Aor4SkKFjDmEVOy+YeXC1otz11rxSeSQq706VPgGz+Sxct3ZsdFLwu7HJwHn4en0MWbDPTtReXBAo/yScPxxhcOBIu4C1shx31954bV7SpGxeRuKw8Jrxfb5+Pf3kJ2JTufaTrayD6yOwXgXpq+JtKFrbEV1pyKdtj9WsqKPGdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1yddUKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1yddUKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4686C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735578353;
	bh=qHRxOB9yZpSfPlnylkKPe0gDJIBFoktdjSq7NIvN4FY=;
	h=To:Subject:From:Date:From;
	b=O1yddUKKJZzyI9TOjMprZwqcwYTazsSJyBQqe6VHAHwT+kE7Zkl4vt58A/1XlIYjI
	 znSwAFMTHKy6CarChHu3FJG3MxxmRXM5ibb4J+04mihgKeucvG0QrGqfbizYw607YT
	 CSnVTEp6Ac1WZcsVLrNQXJ32UyRGCRVU6Myo6vbJLbkdJIYaFQbn1TEV66ztQYj+UO
	 icOM23PBeQlCrelQeoP9nfN+7OObYU1MlhH15peRVmMF4/00+jOgMABjJJ3El9JhhG
	 nx6jxdjDcWZHKfvgIzZKZrnNuz8h7cKWA4S2zTE9gBPH9dTISnoxqetz2Eqpnl3UOx
	 idfTYmJSMyY6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3DBE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173557835362.7285.5959037577480536374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddb0d00178ba49189d9291a868928b12364ab8f11c6a8c08f84e7b7480370a2
Date: Mon, 30 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735578353
