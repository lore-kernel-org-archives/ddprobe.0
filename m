Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C46179BD
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716276143; cv=none; b=QS0t4D2Vpp0SQuEJHXEFSRpMkWf7vMt00Daixr2UE3QFx2JzapUSoLtd68PXcpetYHIPCXf6DPJyvmu1GBXBJ0sOf2sDq1p2mzIXwlt5GsHD4jdfvgMfwTDGJu5kf29nl2yUGwTQnHqmFMdsrICCnniOXsGchCml/ZVgMZwPE0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716276143; c=relaxed/simple;
	bh=s1SNzzlfTZqmKHKXxulCGNGbqb21P1vBC/E0fUp/wac=;
	h=To:Subject:From:Message-Id:Date; b=Oz4nhDtIk6pDWdhls88dBVqjwo8kdGZZMERyobelYuYD4bBU8LGtvLazoaDi/lLxYNjjR5ZyFheOX4hKNdafB+YyWubZjsddEbbUBLiSShVgSXZ/U0jboeisdniASjtQUsg0W8qO03OLItsWVov6DhS1Q5aIHyq9Jn0Nxf1D5K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avZd6VT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avZd6VT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEEFC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716276142;
	bh=s1SNzzlfTZqmKHKXxulCGNGbqb21P1vBC/E0fUp/wac=;
	h=To:Subject:From:Date:From;
	b=avZd6VT+t8MafpIGMKbpEVrgy0LGaozJB7KdcqTcBn/SKUuuTy1t2QhQq1m9TCDw/
	 K3Dq8GB1RGWzo/1MtlQWGGAJIUn6NFNTnkJ0kLy/2UyVbtn6eO3XhW7oWq4USPPGJ8
	 O/Kl3DOSgz9C6ji+jjqn9zFXBNLBW7AQylyyiCtUrqJI5/24AUkp6vPpP+p/smV2sW
	 ESp8cHLOSPhfP9AWoVSN/qTNGnU2cn1PM1r5lIu0s3GNU97lsxp63NdB6ALqLU/j8W
	 lsX4oWwXneGOsYHDZ1RxcUa028Ew1j2O/zT8c/5EuM1tKIM9ZKFZXW7FkyZNBmfqyo
	 44dTz+5nGS+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC837C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627614276.31143.1785759996342571569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6319c1eb172c64f90c234490bf3f9088ec07ec785ec55dc9f2276864c820a137
Date: Tue, 21 May 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716276142
