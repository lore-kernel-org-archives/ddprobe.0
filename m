Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D28A26982F
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745431794; cv=none; b=oM21+XeleKZe3WqeeKKq9FaD+Knw+EOh6Phcx3sEvxK7BSXigKsmqjtEI6h59wWMS1QzUe+KF6RGdC5HvabWjSDANWEzSlDei/C3jZCP3n62asRYbXGISiFt8Hh6uimTEgaoz923DNKOasKw2tbeeDljVyKqq1Vs5J8p2SBmyaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745431794; c=relaxed/simple;
	bh=jOHyw0fH5dT/jb1W+OxtS2uslyzdThf+VHlY4zC8b2M=;
	h=To:Subject:From:Message-Id:Date; b=ulENccsKWXzMH3HwGi8thb0FaUQ0FTXs7Aa5IMUumcKk6c08zkrbTHp78AKwzE9UX6cH3dp6pm5w18+n6mQwBkQuaVFB/e41i3jjh3D1zf25JoCXEs5DX0qBjj6CkUF6RXZIaHTS8K97R33WQfqhVIT17oTxo17cSsj/z8mZ4yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/W7yr8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/W7yr8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC1BC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745431793;
	bh=jOHyw0fH5dT/jb1W+OxtS2uslyzdThf+VHlY4zC8b2M=;
	h=To:Subject:From:Date:From;
	b=c/W7yr8SHv6nwvWNM/3XQVo02VwBQArR55B3zKj9irGzQemthPnwYt1AKCDm73LYE
	 PwsVhAAVldavjPgie8091WIdy0FcfEPgHP+DJ9wXb1KII6atoz67HKCjblRA5lPDN+
	 85v8Njt/6R217zMGj1c29zSt26Y7FQ6QTk/d9b1WEA1vx3rLamAe1YvwSqBSsZ8Uw/
	 3V1WtETmiQIAOiMEn8EuTJLsFXXUItehfKCGtwsUeEeRmMd4YBZWJQeUaHLhhdvt7r
	 Nx7xfRWg735mYJpZfEPn4A/zIRy93pSo3bOfY+/J4/EGriyHhLaDVicc5/4Ns5LBue
	 QSPn8K+ThlWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD03C369D3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543179358.2895.14921965069033785406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b4fa9d0e70282708424ecb32b20cf928167a0f7f9e91f14ce2776e254814af
Date: Wed, 23 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745431793
