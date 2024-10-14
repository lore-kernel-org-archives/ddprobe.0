Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4473515575E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728941154; cv=none; b=dm/jHFqAIaEctTsC82iFeZNBLy8KlgrSDyddpJUkNV+EojX7UpPi/5GH2lGKd705TFSwxOvgDEnfnwP097TYCqm2rVjKhLNC6rFCMm6xqd7DlAOm7ZlBsbAWjcByhsReEoUftOX3BJETKyAjs3x6lpgN+S/tj69FhQEWJlHhW7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728941154; c=relaxed/simple;
	bh=0x4sDN8iF9AWB9eBNV5T3jeAHmRz4DltSTcJf/a05N4=;
	h=To:Subject:From:Message-Id:Date; b=EpaocBnx3BjIFXDGZGkM9lgJJBuOna4Am8NS6BnfroxL/rqKu+3olnMnbB2Re2XX6zaZ18inXx8vfbfDuIr8Zad52jUGIY1DrfiiY2UbZ1Kq/AbewLyiG2spXfWfCJcoXqWBDphfJOlAjgGe3asmjT8eYwgV/yACqufBsGRnHbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRdVhTKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRdVhTKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AEAC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728941153;
	bh=0x4sDN8iF9AWB9eBNV5T3jeAHmRz4DltSTcJf/a05N4=;
	h=To:Subject:From:Date:From;
	b=vRdVhTKDZeicQZcjlztKz0MJT5Kcj/CTzobvA5cLwCmiir/dhjnyILOeCudKqdhRG
	 EhO9IpnatZm50vxH77F2i2nxotSp2ScceUIjWNy9roQZNMInFDhZ2vjZWGIGlW2uU4
	 GQkeMufOsbQTyPGuFDDZy8OUIjcBjpUVfFiT4mYsnfZz86lahq/Rvt0BsBNk60CbRW
	 DXwDK9XMhnQsBbQLmbCTe1UUdkVzHGhkfdzpchVN8eQCoFIlPJgn4FCJib08uYtawo
	 YANRfV7YLRMurhp36rbSwI7Zjo5RtSyvYn2wvLPFBxpkY7gQFpXaJ4axCclrlLCFni
	 Zr81VNptsj0/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95582D18151
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894115358.4732.2018049411025391431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbd3623e1ac0c767242c231f1767f52f1168dab6f39d64133c5322f9f3863b0
Date: Mon, 14 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728941153
