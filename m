Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D68D3EB81D
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787566234; cv=none; b=BC+W4uhRZcdoM77H16nByBZL9n8rpxVJDxFhECZCbUxeH4k6KuCY6TMgz8rM1VnPtb8PFRa/zyfijwyCidu1AquzcumR2fq/Z2EzKkj4WLwkV24ih9eFH9Bk8KlhoaowhmZirY28GhbhMU0g+Fvf+Qzaql6zt5ARC7fxLtiWTWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787566234; c=relaxed/simple;
	bh=0/mbs4ONDpa5c8EvxMWRHDgjRXlXRgyhB125Hj/XV+o=;
	h=To:Subject:From:Message-Id:Date; b=C6WojcceIPs4RabdYN6VUbTUxVz5szlJoPtBzgAJ5ck6bA1UmBGAMONr4cspdKcv4OalvEhBSxozZaPcnPzsPNEk9SgmTt/hpB1Rv/uOr555m3/z84eo894bVRSHpEV88LqNTMnUIeLsD+Pf9DXezVtzaIuGWHnG1PeXeyFrOTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbguJ8wn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbguJ8wn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE7DC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787566233;
	bh=0/mbs4ONDpa5c8EvxMWRHDgjRXlXRgyhB125Hj/XV+o=;
	h=To:Subject:From:Date:From;
	b=GbguJ8wnXOrc5gZxDYkIbfnqz1jZPyTkmWJjDKoXAGC+PQOV1kXX7aQ55Q8eEkl3W
	 Mf4tkVcFwFaKYD9K4BHxuedPBtCqzgfHNvYkg7zw3cn/x7oO84r8+4IrMSMI2QEho1
	 XoBBchzNejPl+aMEDCEFz9Che3HymgtUfsoZjVFrxMcChiNVTHDYD3UVZQTK5Ff6Hd
	 W3pPCtj03ZL7IgTdKjFyyernAKvVJcZOGKqqGuyGrKp5jpvjyuukngNMFo7SuLCs88
	 o8gKI8Wuc4oNzPQkTjjdjf46VF30Qob82RDVGRuAGnBXi9SlTH23Z26rt8OCEOU5Ti
	 2F9i6TNrEXsGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB715C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756623369.28945.5093653836392188910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d9de3cd22d0a51e5af66573a8f47e70a8d943f02c94baeb8ef2007138c2d3c
Date: Mon, 24 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787566233
