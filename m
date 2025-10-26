Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D725C96
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761484794; cv=none; b=p5vgc9MEjB9Wdy8Uu1iq6Kj11wNfFY5V0D+7tEHGskQlVqtGqOlUdv+VaSI4YIjUHYh1VS2EL6eS1IsDmb/+7qFr97wq+L45Y5Hm5m90DZajg6+vpAdekZb1y1aDeb6pKYXRNzXhrmitJaWEAtrc6CEdg6Cidmt4AhbLvGdQ9uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761484794; c=relaxed/simple;
	bh=DBC9ewg1dqc+hMLNYhDDIHOOEqAbPBt3+V+utsaVFdE=;
	h=To:Subject:From:Message-Id:Date; b=SGsef+elftmUGMfh0ALSr3LAnkO4kkXk8GRVSpn99fD78yxaDMPW6CtmUuLL0UGpEfEbA+EiYPwBZP5w7s80e5K/lDkV4I1VqUQh9kjWzIB1zpU6yYcaPX7Ip/aG+pYZHKb3+DJQNtb9cCptC6LKq72LZm2h+mUADRdT8ZIkmlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFOWYwWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFOWYwWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3899C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761484793;
	bh=DBC9ewg1dqc+hMLNYhDDIHOOEqAbPBt3+V+utsaVFdE=;
	h=To:Subject:From:Date:From;
	b=DFOWYwWBAv8zVr92UhtACY8qPvTP9/vOTq7egZcSSgJfd9ZZzVugIdZkYPxfWCjms
	 r+JyJ8bEThZPpyVIxdE0zTcwELRi6r9XQUNgHBu1r2QqvICJKVgjgGAR4PXQy/fHJU
	 +fNSILZL/qBdh+l8ISy4inQi4Edaz8qsKu2/UOKqDyAE0qO3E9bf5ojnvS0x2VXo5F
	 eg1dyGW/oWqX5qbJPiMqVSq6s1JuF2VNGWCirO1aFTFUVk8viF0Hs4dVvRstGhtLpZ
	 n2fcbDSWV4cwQeqYuwpUe3ntY32+Q04chaxsSEL0n2/UD7ZE72RwKKFAkEE56c8bLB
	 w2uAO77fH/SPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DECCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148479357.3373.13786136887683100263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59ae7e6c787398ccde3fd93d9f5cfa78c78fc92068f572117b58f41e1db04ea
Date: Sun, 26 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761484793
