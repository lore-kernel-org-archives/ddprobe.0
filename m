Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF9B35BDC7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784030314; cv=none; b=G4pCD6/XJfUQBT42MTwVxTHB0DnOz1N19PBREwXImE95Z53s63tQmb6CvddKatcg9V9D80OPx0ozc7c3JMFeaxm+F0LlMal2xSnSDny7QAVC5S0Ff4Qi7wsWsjVJMv/udABkRDTOAkAKuxkVssN2VdVHcOJSwW7OITPwLzOLWz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784030314; c=relaxed/simple;
	bh=pdyUUn5q/yhQt9zfMP0NfMyp4GaGBPFyLEkZGnV5Kc4=;
	h=To:Subject:From:Message-Id:Date; b=eUXZcLwgLZ7pCVejirI8ifQMchAIK5m4inmEt0CW+SlsoJA+weTPuSvPnC/YO5h6qCSIRhFCHerrsN/vD+R4YhIFT7WGBSNbMBqJzCnkmMCSGegxnekP0Caem3V43kmC8Ol9bUUj2AOuwehopkMXiCcawIUqTIXv3y/l3Idz1xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/W4XTGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/W4XTGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7B0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784030313;
	bh=pdyUUn5q/yhQt9zfMP0NfMyp4GaGBPFyLEkZGnV5Kc4=;
	h=To:Subject:From:Date:From;
	b=c/W4XTGTp2eozh0UjXr34zs8DuOsXaEUe0Fnp7ITdj4P0Ul2pUAjkBde5fJT/ttQG
	 WmkkIWOvHYmghzo9cwkPR8TIDnpMqoYImUYXbjQ5RZwI7wPn8emUSu0Kze06Dequpj
	 0Fc+2/iWtFcpriOvpWXxzfc6uB4slpty1Lqib3MGd+H6tGv/8/UtzzuMO1PKqyui3l
	 31voxxZk6z1OGiXzcR72/RAINpXGoFgkIVQh9GULexDNdXT3YS8seHss+POYEDvIV4
	 3vinNueZhc5sz/cT+CctzZUyFHNjFm2QVcQJzeviX6IgX2HN9xGLD9oVdR7nDUOZ3S
	 /ha9pBQJ4zM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF1C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403031368.1993.6389846580102286448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c5e1755018007192af78353c35a29e595074605b6de1f436893eafa1a72ed5
Date: Tue, 14 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784030313
