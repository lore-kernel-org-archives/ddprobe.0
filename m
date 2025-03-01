Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48780B664
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740868736; cv=none; b=Np2nF5u6D1wo5TnisYKk7dWeferk/RbqB0ucURSOfjW+g3f1vhZkW3iP44pW4l4njRQRHMJGk4ruyDTl61wPgvzDSuC7PsVcYK9GCauUcGh6BMBM1n5zCKSC5dvHW9nW9tr/MNI05ExGYgWDj+JUxSomPGsxafdzj1MBTr74dvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740868736; c=relaxed/simple;
	bh=lanqwIyZAt/Cj1TN1B28I/BJl6YxyjVHZKU7hlEuadg=;
	h=To:Subject:From:Message-Id:Date; b=rHsAo/DfWzGePJ1dPz8ejRKh/35rqteFcM9VM71hOPQNCIrnPybrTWaiNNZGMDjjvHJjFW3EKNUE6twIYrtSD8AZeFisgSVLZJo0O3lkg7v5YJxpex0aT/thTjoC0DRyKhUqacOg5v04evA3n/LOeGuv5yCbSi4RVRZ9DMXOgCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVpWFZbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVpWFZbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF361C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740868733;
	bh=lanqwIyZAt/Cj1TN1B28I/BJl6YxyjVHZKU7hlEuadg=;
	h=To:Subject:From:Date:From;
	b=tVpWFZbK9yPySxdgeBUAZKBaFEiotZtwYokNHks05k3BcdG+7NtfGCvJ+/V7pEoHU
	 AXdePs394WJA6kalPDgbm9rrL0yYGQRGKQ23J3DR/qfpgBCQ114YgjH3SwvwFjvXNz
	 BN977E7YVW1tPW/E5B7yVO8WfKwlbkbsMfX2+nlATXnB+UBR665haQwXsOjXDjRQaL
	 Od2aMw05J9Xa/2EdYsqFrvZ+6c2huPhWA3zYrz4cXnawlQIllO6vrzkpsTMWssJ2ZL
	 Jj15jlxDuPd+sxocmVNtneR+tPOkvCJIocOIUEcWUk/ZR8Z67vvefd/GF3geo3U9Yb
	 4nxYglulZdm/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B78C282C6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086873360.6408.6882283738520736560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3d6e93224da913d4c43942747ebcec6bef303a3110ad1ba432d2933e90db47
Date: Sat, 01 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740868733
