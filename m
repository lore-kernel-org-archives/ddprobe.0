Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21226158868
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736241354; cv=none; b=e0G29g5bWGqi8I9xcWHjxHFDRKCm0i2Bjy2dEILk27E3lMBnYLDrgerz4N43hsC8Ot2Nve1rOF7gjbhr8oU60Y9kUj8c5m8nKvq2Sixb+LXRdFLPosH7RUS0qc1AnVDktc+Q5nGP84cXnm0t51Bz6hSiDynnZUq31Zw1np5Rtbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736241354; c=relaxed/simple;
	bh=mTpx25p8Dtu5bd/LYWDr9wg9sX1A2FAmG2Ajg5TPde4=;
	h=To:Subject:From:Message-Id:Date; b=Qok5W8i18rRPGoG6/RTz1aOP2zCch011rJFaMnE9ZjcNVzvy4QSrrwPqdOROW54062RQtPUbIvLIveV8UE6i9QBBlCQgE8XHonQv/nz2umIMzu9uI+hJ/k0lT3/s3ipPSkbrcI/k12PV/F7k8osZE1bRvVaMcYt84cGDNcd7rmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7Y0kwQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7Y0kwQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A639DC4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736241353;
	bh=mTpx25p8Dtu5bd/LYWDr9wg9sX1A2FAmG2Ajg5TPde4=;
	h=To:Subject:From:Date:From;
	b=j7Y0kwQzU2/UPxjALxR13GBLwfhpcnOKfsxlOvA2GnL55+OIRZFueOiwbzfrA9vxT
	 x0FeGGddk5xyMWnVFYR7q+1n+eHK6U8ZLEs7PUPqNwZuYNFWFOYluyLdrQmlzBlTqH
	 8mVDWoEFyVSJ288Bw9mOWnEd+/cHBedta/Z3cmQDGQw/BrDZviQGcZqJmIuZgTsxxh
	 P0CwIkIvYi7ZEeI9vhmXgauIX8tiN2Prijq8Ac2xxARa6bvj77ogjG9vW2gcZUIgGv
	 /SSUuCXdgflJr0ywHtAl7Xw2QhuUTjLYYrqLEj/tiFDy451pZD3zWen4Hlnv4xB+Xu
	 KgYfMv5Ev/wNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95549E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624135359.6271.7161162598529321715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5859a9eab763f6f395c7a4b60ff96fce0161961e9505a71f3c7045fe9b71fa
Date: Tue, 07 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736241353
