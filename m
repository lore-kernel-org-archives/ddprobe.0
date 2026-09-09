Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79CD4A13AD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788994238; cv=none; b=LM1wsuLCKurKLHxuZQpGpEPmYuM7y0hQkhMyVfRCuaJb5H05g8liaQ9IqISwOcLjqjsS0ddpopfczb415ywYabhiWJrkut/CgbSQRS1Rsc8yScP7svPvSXNAFVB+X2Lh0MRhTQxPBd3Na5+YdnQcedxqJEbLAEFW6+bJiQNs7JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788994238; c=relaxed/simple;
	bh=3f0meTkNeHYw/wEXv0wQN3CYyNUS8DdXBo4wEcxpMwM=;
	h=To:Subject:From:Message-Id:Date; b=grwrda0EmpWmcivl5uru2oo5INVxUAqT0cWsOF5vSixUhmcJJRoy1/kz18guAxaGtnjnC0alluIBKqOSpkaYdIvrZVAER+oqj+g5EzhCOsvGjlrhZKSs4LV0eQ/7ThF7Azq/LIxgz84PbrffvPUP47twnnPYERPqkYYsN+e/miQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5lYqKV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5lYqKV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D489FC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788994233;
	bh=3f0meTkNeHYw/wEXv0wQN3CYyNUS8DdXBo4wEcxpMwM=;
	h=To:Subject:From:Date:From;
	b=l5lYqKV28t89luE75VnnHk85RJJKMo7zIvEVjBdxRGFk6eeUPvrW3JKmrzxzfmLX/
	 kWXcZfJpnyRZMhJ0cVb5if3ntRQN6jcB3+LMROmzP1iiv2ySqX7vcG1TlKw5HkfnTW
	 8ec9z5iYV7URFKfCsEnlAgzGQ/UzjrRayLSpfHHNF2pombaq5QY/tdnMbaPVaNQP4B
	 OR0eFUMb0KOaqROiLuyRxcioOe6k+DTH0jmS7DZchG0cKIzO/yRfHfXKEXGVFJTiH5
	 DX6Fhd0u0DKxwKym7pUTrrWAnLC/z+DD/CGFjtyibcES+Nxedy2c7RGrg69YACL9GN
	 PtFMrs/e/0Osw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B4BC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899423371.10342.17561125748330099127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce46ffefb00889b018a276af2f9f709cef7cf336a610a262ae7911d16739b0e
Date: Wed, 09 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788994233
