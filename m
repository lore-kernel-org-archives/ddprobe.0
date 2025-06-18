Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E7C1E49F
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750276794; cv=none; b=olI11OE8NTKWJFDxnde7DxfWMmsTQZWyfrzcpvROYVcpPs2iNvoeEBlWWmVAeblLlujX8hk5A7FsupDHyVT3NDODjE3+hjUGQv6d9Z8v5X1OKbRWUgXqJcFC+ppLhpLHQNye3yex1d0jSdCVWKt3arQJToRNqrjTaxk0UT4bhWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750276794; c=relaxed/simple;
	bh=0ZKUEwaDULwxG02n/+UU8vPPOmm5VNdkxNnztPPJk9I=;
	h=To:Subject:From:Message-Id:Date; b=jtcHKmrkFA146uKuYl0V8Ek5wpNgycqONaKrl71hou+UnTT5gzNSwjIZ0cp+DHB/C2UMEfhRAZpwKyMtnsEIQeHrFTHkRLl5MSTtA8nnLc3MTf6woUiTZlQK8huvwAhESyRDDVISf5C4l8fBhDjdE0P9qv74Mm8rvh3AjuLWp78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0r5j4YE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0r5j4YE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A21C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750276793;
	bh=0ZKUEwaDULwxG02n/+UU8vPPOmm5VNdkxNnztPPJk9I=;
	h=To:Subject:From:Date:From;
	b=X0r5j4YE4g/owZD3UJ5SxUReQCXuzh4p3bPtPj13AvEW866zwm8mVl1x3y7cbOCHZ
	 zHbIqxaMRakxuBTQy+vWmoYxmaWH+Pgc5ZaGh32v1OQ1eHp6GwQD/IuzAERbHFXZQH
	 7z0Kq8B7+F7xwcQKgxJ/ZEY8Nz9jE0w+HdBvtJx2HKw3qJYgdr2+FR3C3xBqhQhPZE
	 QYWU6Us9GKm2l9nsjzYyUcGHQW77g3Ry8A8ywB2fTfBEpeuQ43yneelh1k/Yyo2OnH
	 L/ac+4WoW9+w0Ht/03A0FnJpaoPVm4Lc+I76YNuMe8EGCRGDiTjr4YoZSBoc3qe++a
	 6YnIYleiVJi4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E1C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027679357.19284.11327128617168489491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1a9b53b73962ce16ebf8d03394c902fbc28a7f635ad78b48f727d893e7dbe4
Date: Wed, 18 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750276793
