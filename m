Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE3233CEB0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770333834; cv=none; b=LWzwhNuPCEd4WsCub3ejnvj7swZdD/kUqgK9lTHfA4jiAlE9+Xlg+MpiWNuQNqoISF81MKaIT2w6fcMXVXfWdfhymCASt9bFWcdAlcem6FqcY/09BLA8miOPdxZGIV6nPoyCAnzAOboyTEfuIxyYWyHsEt439rPPngGKCkkQCz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770333834; c=relaxed/simple;
	bh=AygMDtYohXRmkuehTqJrd4r45bP3D4WXw0c/LW+hHyk=;
	h=To:Subject:From:Message-Id:Date; b=l+pYmYg19v1kztLwCm4TNtK3gsppTUNsFhUvl+qJzYD7F45DoZrwghSn35cIjhhehrtKkt0S0GC+0XtbPa45ilKzYgpuqo7Tmx1u5S4HaiC4SMTRr0fHKYWH7XG0venUjL8QCk8LLkVu/mwM8mSE2WE7FrcXjZieiy5KrDWG2ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvvRJTpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvvRJTpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA168C19421
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770333833;
	bh=AygMDtYohXRmkuehTqJrd4r45bP3D4WXw0c/LW+hHyk=;
	h=To:Subject:From:Date:From;
	b=CvvRJTprCaTnQxFGzGWz2nj22FDbYuen6Zx5Y6XMEnhUExUiCzdCmrkgsnaBrQWtk
	 nZB7PdpgLSwNkoTCpJuNm5ymDRMl714lDdK0nbjn4tSGntRB0hO08duDEoVywGpdkg
	 IW+basH2zWhfQsZVTcj9R7HfPH9q0caSc14A9MpebplzlnVO+9cTJ165u6dwPk4oYm
	 SrErQbetqfeAHwNTZm8H+tNC3FYuBNrv8pKhkibnY+hdFsOb9RoTwcUBkt4/ZahU+H
	 77oKYF2adWNFSFTyR8fMMo3HEHYjmyTOAsr5AQu2FXDrSrbnENWcjIS4hGpj1TNXFz
	 ocT3aByofxpGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95860ECD9B0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033383359.4732.6039011938744691990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba5fca0d64bf1eff4849bd8df314197fafeae51442d4a41c05df437280b19d8
Date: Thu, 05 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770333833
