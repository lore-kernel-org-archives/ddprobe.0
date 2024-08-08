Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D1E183063
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723098354; cv=none; b=QXgvLPr6lAm1/DQeQV0wUWebiAsaN13u3/wd3S0Hrnh+LZDfPxqctoXMNeKtLm/+kkITTNK9qxCH9j7MNtiqiSDVX3AklnXc+v7GWYlcKz3T+rgP3SXD3x4b23XENmzPSm6PeOkm4J+yj18Wea394xFWryZ7YC95BVpqfz0qEKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723098354; c=relaxed/simple;
	bh=kgMDHidqEH8N4Ky03t7CPMyrGJDx7k081yLlZcTHg0Y=;
	h=To:Subject:From:Message-Id:Date; b=GNw/vFytHsaNVqccLf7astBXJC99K8gW28qhNuM57tm+jmOyLmYpfmYvsuUsP0e+F1LtOJ12i4kv9tB+ivnG/F/g/2kaQ7hpdUiZlRmrDAk3cFDiKf2gigmhLa5fjdtdYHlkDv6Zl6kQ3AuIFyG4SE3c6SWd77dwEeUvdiG5WEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK4VX1+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK4VX1+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9B9C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723098353;
	bh=kgMDHidqEH8N4Ky03t7CPMyrGJDx7k081yLlZcTHg0Y=;
	h=To:Subject:From:Date:From;
	b=gK4VX1+idzUWTglHGAzTCO8qgiiGgcYIDBbXBtWehBO8z1ylOiRQul7Kr5y0p9pq5
	 YBsMJs1DZFfL81t2QPGDk+azqyS5gHARKKbDzb6O0VisRgYlHhkXNn2ezOxpW7YiTZ
	 7+ut+zosXl29+JwapUBXSAe8uOuAei0DSAeqvwaHecirRctBGt/bJ++whGRo74vU3R
	 FmtoE+Ht+n3kWdwvQkmy1Wl/uPkeDJfdInMigxeC9U8ztiE0QUGfdlxFmsskkEd3jz
	 DeJY+Ek4nN0A2bWuljL94aiXrOaQY7ND66J/v1gKYX+l51U3DT3LpDC1oL27kCWWPz
	 PnsOGfjPCBM8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DBDC52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309835361.15279.14261224154839838103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91b43c36bfcdb6c8e210b8334843742b4d4090b45ff7c5ba8ec40f96d641384
Date: Thu, 08 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723098353
