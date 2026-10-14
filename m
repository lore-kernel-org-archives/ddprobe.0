Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A8A23B61B
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791943834; cv=none; b=bGUAtRdt0GqJ442XoMli014lQYI9t9BHImOPy6kA7ca5Oc88pUO6qpubJbDNBZecXmuwP2n+FvHR+/+58NZ8nRihPWFqk8j705iKIpVFMHBnt7smqB5RviukIDwzlsTcLSoQL4btbqZseGpfOIxUlH3FataJ1F6i/Ad+btJNqDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791943834; c=relaxed/simple;
	bh=vAo7E0CksfXKzh742U4UPSORI24kVfnzAw2tu0e+Mw8=;
	h=To:Subject:From:Message-Id:Date; b=I3DylN6v+LdneUhSrNaWgYWd2gdnKjlrEK5qJ40Q151DmnaQQmVqxIQh1j/2XoY8pSnXYPf5exzJqZSBporyfkrtrKzv8HhiJPaDr4IWsSI51O7nopnWKCi2z1/YAAGoRIZJ3ZqzQXridFixoXzffSkkQ68ECW/nXOObSB0VSrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5Urq3Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5Urq3Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2B7C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791943833;
	bh=vAo7E0CksfXKzh742U4UPSORI24kVfnzAw2tu0e+Mw8=;
	h=To:Subject:From:Date:From;
	b=D5Urq3OwekDnn7bA3gLgD3/jwTXotOnFl5ZR1vOBQFG1WCvmgqWmGdlSr79nbHmQQ
	 Judpajl9u+S92J+E9/XJu3BSZqk4Uy7LOJY/C09i4RN2Xe0UseIEqHalEPGpc6bMJA
	 9Ql4ci2tRkX2HGDiQ1M6uiKU9fARf2Pn+JyFAC0xWjj47GdRDfnq9ptOEc2WMEhB6G
	 XjGh7icagEHjHtUd3BdxxfSTtgjcGQlrbtPoorFLpfUDkMRJeZJFtBdQFX5ktBVvVG
	 0eywwiRf1AP7ZBqfp3LweTSLm1twK4c+fFocp0fOaMmgVPT9Fspq2GXcH8ErHGAJtO
	 3nYQNMkQeaerQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D49CC6B1F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194383369.17006.16696865968436289594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e16d3e4208477c71ecc6b02adf2b32d16b04b4618c80629e86d36c96c2e8954
Date: Wed, 14 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791943833
