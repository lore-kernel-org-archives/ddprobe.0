Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382553438B9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779943354; cv=none; b=L2lBYOTmtC5rXIDBzx+as0mELKolWkrbUm8chvZKagYCYGR2PZLabuOYGZXaLYWdV8lYL+4zU4pQVALSugiFt5AOiNFj/V/6nDlLIPRYDcfu83azHgiIyOZXz7Jfoe9KkxvVSWCmHUaSNbVoSzrEF3IFRDKLrFN7FXRLhq0Fzek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779943354; c=relaxed/simple;
	bh=udmgPkA10GsTWFMN5jUx3WIuBxnicBSf3CBVNIRm+Pc=;
	h=To:Subject:From:Message-Id:Date; b=cdGNPfoIW7WcBZlIf6zMKmo6eH2+grcJd7kmeYC9PAwZljx11ewHxVQfGvz/iUk1LioOxvLkMSqGq3Dal0eaaVAFHSdrbnCHSlH3VspBAsoov0QPOJGUwnmg846SA6m3xrXzaw0aF/IDL867V8Ro+Gi/go99St0HeNFnBYVijY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWCgBZEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWCgBZEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C040BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779943353;
	bh=udmgPkA10GsTWFMN5jUx3WIuBxnicBSf3CBVNIRm+Pc=;
	h=To:Subject:From:Date:From;
	b=SWCgBZEYxheIQOSr2TqdqFyZRICOEjvlONfdm42RO/A9qRIijAfFdf85yQv0enDa9
	 7Q27Jh3krRuErOOQV0lL+xBWEIhpkvY1gfTyVllsf+N1wydH1heif+ta2nikzGJkTg
	 kCcZYwHxEH4etXIUVzjD1UBwDfsWD43u12N5uQxfI0yOKvvWpon3TRaQaBJzOZkj2I
	 gLBDbu7qqg9B9Tw4knMsENATEKaH6T2Gv0MLOGd5jsMZNKY+r7+g+slWcbcZWonivj
	 WcqjVN6xr8W0S5amk8Xdo7+5r6VDIWqHdeJfA1T4TN73dxd3eKr7f3d0XN3ZUu63xU
	 C/u9VSoucrO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C3FCD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994335368.7113.10271137194260917363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be2f76f800d4dbeb9410cb2aea0ec6436b2df067333569ed53b6a6230ef913c
Date: Thu, 28 May 2026 04:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779943353
