Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACF51F5838
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761394194; cv=none; b=YFA7Lt7HSHTqxOVR6ufWp4Bt2tLQGVnTCy+Vdakmj1V2X9GhhAn7VgaknolvgPYHfo5gfphdYEgPzffYOE8aFKOpT5LfLUszVfEOSJmWf7ctUUEk2nji+FCofXN1atArb0TdwErXsizJHF75asgrbzN1LhGkCfleieIdKbyeLrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761394194; c=relaxed/simple;
	bh=S+CxrajcYOi3RKuW4iMkj7uoBUJBn2ga7q6BqrGH/T0=;
	h=To:Subject:From:Message-Id:Date; b=dbEXXTf3zdUDYeZaaRCvE/n2LL0xm+htDsw/GF0S9RO1gbBA4jNo+kD2q1+lUjlgiz9IlWsknb47OlYVpi1sXy6UQXZZMKreUmjY2dFHGNSfssJnxahkzBK81xfCaxLKcek4wD3X2BDEyHphId8SwCcMtu63Auu2XvVgl5pf00g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eop5wu4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eop5wu4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A638EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761394193;
	bh=S+CxrajcYOi3RKuW4iMkj7uoBUJBn2ga7q6BqrGH/T0=;
	h=To:Subject:From:Date:From;
	b=Eop5wu4OH8abR9Evp7ANQ00IxHwXgYgeFkbQBSVY1XpA6RTp38+MsWcnXWHxuUTI7
	 COSMZlK7Zi640NWvJEroW4UyKSvBoAaA/81QxYm7y9hjxExlvcarJ61+eZbtMWXNM4
	 +CxHFVWXoExn04FwTThHguMBHCcuucdTxzRxrbiIiDnKTEbrHwZ10j/w2xOI2w7t8q
	 w3xB6S2wg7Obw724r+4p3NctDnFm8SCnCt7kisdfunCMph9Cz30FBtVQDvEIpYnM2B
	 S3lZfbNIfIdQEf/Hm7QzZhu7hJ5BXQMpnh+hPnpLCem0pmaPlru5Mk37X90Wrq1vuC
	 yEKDwKZgPl2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A9CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139419358.25400.2618733585927173121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5444d929ee9a129585a3287176770b0a930767a251dacacbde283f200024551
Date: Sat, 25 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761394193
