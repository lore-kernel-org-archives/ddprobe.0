Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D94230D1E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748645994; cv=none; b=d/ZvgKsOaq6tBQrtgf+VuXxTcXCABa6TRpEyqy2w3IjK77bLoZs6wtUSYFeclZeg3+zjKHI+p41UT/R9V9sUJj0CJEzKCUq/E6QPJXXTu4CIAptbPumFVSszxsgjjokFYEjdijYEfkeTABr8wv+CboOMoFcz6ybfaVA5LXi6vBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748645994; c=relaxed/simple;
	bh=VP4oxZmhvAJunGKSEuaUuQHxjKK28H0tYweob8ddrzk=;
	h=To:Subject:From:Message-Id:Date; b=ZDRCfwtMEoquoNfLA4w04IFcwFWaPP17jiMsDhIH6YLVAUxgCcHcnupBd9U4xpHEyq4UPYkTdK7LT3Prfrv1tPIQyXg90LqSvgp3YtYb1xn236MOWxz4U7Mj71xAkGgyS04nEe8iQbF+1NMuRMpqD9aupINhQfr5M/G1RxvJVVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUcD5juP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUcD5juP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A459FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748645993;
	bh=VP4oxZmhvAJunGKSEuaUuQHxjKK28H0tYweob8ddrzk=;
	h=To:Subject:From:Date:From;
	b=NUcD5juP2Rh+kStHcUW4aVRzbPsDZ68FK/NHguwY+so8wfxMufFhAmI0P7jfWmWe/
	 d3TDH+H5Wf6BUtqtB7cuWQsvfzehR8nABxK3LiKkOtpptp5FvV5/qvYA6WAouJ+KdQ
	 2NoG1p7gwdyEJaCOwrIwQZ/jQUx+PDATpHBXoehlds6TYH6BzeyBqug45P3BPD1zxt
	 XG/e1jyfrtuigmVA4FIBScQmMVMKaibaFXF9akkScjal6D7GZYCH7cDPcKHYevIm7D
	 4fNh3mZFAoPg3C5sgRUIMzvt92BRCv//i99DHlIG1/kNdG8wE16Ht7zfIic63PvXw5
	 XkAc/l1kWibfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045DC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864599358.23742.16120377420062241515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafa20d54b88f49950d936dd1f271209e6686c8ac184b2e93a0e357bbf91aef9
Date: Fri, 30 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748645993
