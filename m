Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8DE1C9DE5
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755210593; cv=none; b=pugJ5dzbtxwXuc8hdoxXHDeaADULnu3fxrrksNGtxWimkweBU2cdRGflGBUsTOhQftVS/5SI1ZlS6fvN3M3htrCHnY+OGGicvTIw6lzU7qe0kVAbTrApmKUWNPQYy7AuO+F3yqom/y4aozXX7saduzlArH8yKCgxNbAUlt/61s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755210593; c=relaxed/simple;
	bh=edqBg3PO6dHNFEw816m1Z+61N4d2i+bFsVsu/N3+SPk=;
	h=To:Subject:From:Message-Id:Date; b=smmyx1KRh1efSZ0uu9JDKmcynr+2XXFK4pcTq71vwYQUd7mQzB/Z6k7E3Bav+gyYkZJ8CNjidhAwhI/PgBoTXbRBzHzNyZ+0DmV2aXP0xZF87CnvhyUi/IW/yxELvXxcR4bmmIRkZQyww1/qulWv8ix0uCmrF6aUQzNcq0ReqYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+Lvlm57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+Lvlm57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3373C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755210593;
	bh=edqBg3PO6dHNFEw816m1Z+61N4d2i+bFsVsu/N3+SPk=;
	h=To:Subject:From:Date:From;
	b=g+Lvlm57wdditg6l+NTPj2PJaQMnFYGEl13Z+vGrN7xeZTV4y4cuSnN1GS3nlBupP
	 UQg8D2YHuCBgXS5vggn/HI5gZx03ycX5qwkx0r4DOtelYDdO6xMbT1p+ly93Z4f51F
	 jvDXi41WJKqnPKPWXudqjPS5Z0I7Fn1OpEQzPXfsOKKsGnbpwi+ozXIhTfpNv1GzVe
	 I1GEkgNWS8aySwSGBztlQulDkQTl52GoqY1eeXx0c5rM4h71qJaZJeOBFzkxTjTz+V
	 D3JT0EO2Np6MJMtRG2dt8ETvZmkhzKtKGfTwZU5Ulh5YPcFY3Mzrt6PpxXf7O9eMiA
	 vxZPfDx9yguAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91535CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521059357.24288.214255847251967784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee1fd14259ccc30281e92b26f9ca439d19925d5d9753a5406a1025cef13647d
Date: Thu, 14 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755210593
