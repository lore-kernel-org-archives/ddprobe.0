Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17167346E75
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771446294; cv=none; b=sToAtuDWEnvRei/xl3CRzfT1y06WKRU8k0yxHHM88ytu2wPDv8ypUsr3lFC1QOYs+cmFsNPFesOkSatM2hUBj3DfwBy5v1Er5ZCm92b7DsruPsaeVotqE7ma6FUT7eru5OZL44i0c4n9zaMhHu6cKfySMQE6Q6LjXe0Yt0zsNaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771446294; c=relaxed/simple;
	bh=8Fl8QDcTwTsSL9a0vIlqVHCgELHPMznOb7jgrwdXe94=;
	h=To:Subject:From:Message-Id:Date; b=pWAPzvB5ClS6ZxG6kw5vlapaP0l9Nn2f1lUzRpcrrnatCVABSA7iQYyfQMk/M6RkMrrzTyM3xJIi6M/9tTsBqxgfJ+R+xMZskG8yf3v71QKeZBqMysYUQ4K2qvrVs8nzl2LKr6Qq2+XCLp9/YI+41JS4msU92+cyrVJXlu1i/LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDC2s6u2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDC2s6u2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F73C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771446293;
	bh=8Fl8QDcTwTsSL9a0vIlqVHCgELHPMznOb7jgrwdXe94=;
	h=To:Subject:From:Date:From;
	b=KDC2s6u2qxpy5LacMyWhXpbKihXuEaJJiBRwoqd2/t7oI9I+tnb13aWCGp9DlDhYR
	 VgIfOOAI63Nxlw8NesoTqNp/P2yPPC8uRDYjcPVi1ak11fuIVgLz3Bg3F1RgJeaP3U
	 qnwaAh5qyo0YT0QYx9/gXjlzmLQpQtoV7kdiOZA68xKXfu9UqTjkR/r5N5CqlYd5wA
	 w5ikejTpZaKyYbluuRr1HNaIfW3xxU56q8OSLTqZJAeOqF4KJbZwYqa2Et+OCJHFIr
	 51Y/WOGtebG1AvpoaJS7r4A9Sd3XEdAacmXGlQp4EZohV168Pm3QPEWkleJCcKXJrV
	 WeEBKlF37xEmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94733E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144629359.25482.1895617515030562284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41347600117caaad66cec0545bf02def061b432d67bcfa8857b0d40cfe55927
Date: Wed, 18 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771446293
