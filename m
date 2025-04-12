Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3820C53365
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744418394; cv=none; b=Ya47+NOiYzQ1SOMFjG18e5436AD7bulsVPcXjgQyeXY8kn3ekhwcgi58rAETNygRp1bVWFvcAGnViP+QATFznU1DXeZH1Qkga4KhapuHz46kncvGnNzjd+PNxLle2dq/tp8kKWYN0hBcnKjrmcQnCG8RQCp4fScN7t+uRKIs7nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744418394; c=relaxed/simple;
	bh=BYl9VU8wedfTG4buMldwm/tVFodmoOOVb48w5UuyQ1I=;
	h=To:Subject:From:Message-Id:Date; b=b/3BAMqzeEW68cw7tluGaZEJlDRkFLvSfF5eLCq45zZFTTxevxdrqNsoF8gDql/lKwaUzC04N74Z8tj6o4iapl2RHL9eKzKO30R+EVRozBhtL+YpD+m4axS33SlNUZJuE80QW8LyIy01av32GxQkVHAOneylba03wNYrZLnmByQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz53LBD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jz53LBD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BC7C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744418393;
	bh=BYl9VU8wedfTG4buMldwm/tVFodmoOOVb48w5UuyQ1I=;
	h=To:Subject:From:Date:From;
	b=Jz53LBD5XIdyiml8BaTYyDjiO8gyEbuP9/TsNZY9synckOf3Ekm6iuAoTtoEzGYvv
	 IF2WpmKP1rY0V7gcvDP3v+6iiXZ8yqNyqVfjEzA4zmz6KCxJJfDFqgpE89G5s8pSrQ
	 BareMGaaL8a+W6s28GQuJqcxK7Se1l4cglZdR32/Kvqkrcn0l6gyzdDPSk1XWc+70x
	 XXPgP3Ml3/fqDt73IS6LxL0l71IbZ08rnesQRwEsRa81Zd2mV/nQ09JgfkLf4P3TK+
	 UCtJvu9K+FYTmbz2jQdpzb0/SFLe2f9RYXELq2kULrwuhtPqCvbjvle14163J6Mjlz
	 gS825cLD2/3WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACADC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441839359.14265.3450311625585739312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4dd211028eb4cca3d978bd18568b3da5863bd6e52a1862a2492f832eb040df1
Date: Sat, 12 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744418393
