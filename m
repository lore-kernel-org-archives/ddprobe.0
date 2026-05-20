Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C913D300D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779271834; cv=none; b=dpSB8l3cce1+YT1usAuJjlHTBMfKwvjfidyN9JKEgOxP4KKDElXpVqNgOCMcztE1gAl9auYtPu3m5ykBLVdpNH5OexpWkEH/vx7jk5G3Y++LAym3bI+qHQY/uJtMG3jzxrTriDKAeTMIekkgyNU6H5esm7oRyCd7oePo8kys4gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779271834; c=relaxed/simple;
	bh=G+TxVEAsKISbSe8sFrQsXh+YpxX8Q8kWF42KrPh0JB0=;
	h=To:Subject:From:Message-Id:Date; b=HfNJI3fhsYwPnvBHdkE9BJmZW7r3Fs3OIGrsPqR5nVHWDgIobfnpFLPjT3BOrag4ITA6iKoPomZ7/WRadNfT730xRCmRtXopAv6mF883WVRsmaBZeaozV5+1HEaCww3/AMto1sOHwxpbge0rStzmToP0Ay5qJyhnFNa6WQdM8nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dy2Vmg5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dy2Vmg5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AE1C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779271833;
	bh=G+TxVEAsKISbSe8sFrQsXh+YpxX8Q8kWF42KrPh0JB0=;
	h=To:Subject:From:Date:From;
	b=Dy2Vmg5zqcVAv+0GBnmxPMi1NzM1cb6AAesJ/mW+evgKwwxHeWTKNEBJ32oMoWGxW
	 v35htKXlSPNQDsaCNrb6Us0XZAQ3+slxMHgEWLcKXU8TKxcjHVsOmw07G56OPCWOby
	 ztqs4tKGxFw0CZstKyncTF0ZKRBR5mGQpL4KXSOXGyahuIrgEoJBDbIwiB5BRiESYN
	 ck7qmfGOmQzloreSlOFZU6UI6vUlYxK3zjt//zmLUPTNc4tUg4m0cROWez6T3/Aqo+
	 ZXzHdjvngdX+uvdsAHeQ8aG6tlYyKJ9vjyMoNJu5s9TRA6bzRYQBJPOk96dVEDDhez
	 3Dbqy0TsBGOBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF808CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927183371.12419.6957835174490243057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7d07466c5f65e93da0ce665dff5b7c161c641e6fc4a1858c7dbe49bd27f1df
Date: Wed, 20 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779271833
