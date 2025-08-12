Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4015F2F0687
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755037194; cv=none; b=ISJTVOuNO/lmy/S91jQJChxVrlInlFROefevl/bunauGvMfaz9BBOXPKoQD3y6BVSYGhdGYT1Zxw+f5/PS/p7s8H+PdJBdw/TSHFXIJqwARJ072ph5k+L/cdihI55+if+MlDrq17ertpFMrrn/by/+SO/m/1eVTLTmTsbf/PMXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755037194; c=relaxed/simple;
	bh=cImXmmNTWlTr/MmQXr1kbzdj5tCf59Z59mdXBAdjGAQ=;
	h=To:Subject:From:Message-Id:Date; b=SBJ+MnB11fz1ZnaMLUIGtP4OiyXZHJikcZb5OnJiKeDWc2HmK1+LQ0d9g0PuDtwoW0At9PeSZ72Tul1Gr71gJCy7dppCiylQQ2wnuCe9sy+dJf1qrgcyiSxT+8tphnu64EQ9UGn4BHcw1maF6DAE1CrHjzugIG1LMwTltvp3gww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhd/OAz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhd/OAz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBFBC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755037193;
	bh=cImXmmNTWlTr/MmQXr1kbzdj5tCf59Z59mdXBAdjGAQ=;
	h=To:Subject:From:Date:From;
	b=Qhd/OAz5cay8q8zS8rA01w79Q5InYojvseHdhlCpnK4Pz6HRSoIXMnt/+wjHfzsAt
	 /jkOogQjr+Dci45I8F+YM8QcMzUvdB+XhCf6rZ6288W/xVunqk3soOoVMDS5Q64qNW
	 EG5jmP8YrgDmjiiujxn3uufDXh5rFwVrVgESD0J5zYxgw46u0VDxzIBiy7oO1Uu5Fc
	 XF5MfRki0qhKwoRk4iNkFMRxjae0X/GmemK40Rxy072B3NjtX9plSswcwJ7/bm1iRl
	 BB8ryxNhZnPxwNK6QE/+p5bbzxOOqHXcJdaDazeBFLfFeK1cAvDEl2JgVAkD7RAJtR
	 VWqfxuX6Wqvow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDC3CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503719357.5771.6927189697464248259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2209f13c77f1017a45971d8f3914960d26f11cb220c200f8977dda69f682ab37
Date: Tue, 12 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755037193
