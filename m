Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2551D17FE
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731998754; cv=none; b=aj/tpXC+A1DziIngaCfsQN80gy0D9XIioitt3BiY2994gQr9grRhZ8qyn3YVecuN3smqI4PpkXhQyLEqQ2hPe/ISJnKAvlgOa9AD+in/bcUxr+WMRbog+PcOIEgYIBqizQkvJNl4/u9sPZAL7+g+ItBWWzvxCoLRmqw2ILYbtic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731998754; c=relaxed/simple;
	bh=U/eYvpQfgAwkeudNmhr/Gei0c74Y+Wh8PV1PCNzBTqw=;
	h=To:Subject:From:Message-Id:Date; b=o/mLi8i/k8M/Y0azYdzBPkQBIKFweUfz/Klws3VE4MIhiXTYqhlIABIW7MvuTkGgeLSk1/Krdgi4RPmV/ZgZQEUhDheEUQivEgxbzsxEFHMpNj7V5YfppQyNMUvNTCUtj1WmDb14EXXsqSY4Ttr9radv3FufUAyrly9NgBVQgD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N253s/eL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N253s/eL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB09FC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731998753;
	bh=U/eYvpQfgAwkeudNmhr/Gei0c74Y+Wh8PV1PCNzBTqw=;
	h=To:Subject:From:Date:From;
	b=N253s/eLT54kDCuZpoGxM6b1eVmKurvf17ZD0Z9dUaVgNm6RfU6PIbtXoZyuVL/Rn
	 perQ/3mhxRlKSwdeG5ycSNrqVCYuj2XIJXcuLvH/vmgt1bhyeiB849UWEzW4u4PWxW
	 Ox6HfijXcQMJsLcf2icjacbU9MNs0iMUqGErZgH8nkz0j8DU3LmTODr9cX6szrNwkL
	 Ac24o5F2ENKsSKP9BPMLokySNMcKeq9B420C64+NZQWleooQwWC6flFDWsr84AlFoF
	 B5WlrsP6GmTAEWhIsontFfQOxINE30EBwNJMRHFWxgIehcEG2NWsvbqp/MCe0fICu8
	 v5W9QfDc9QyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB60D591C4
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173199875359.29377.14970432567216768956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b84305c00ba003d43da3a97a73624d43b0ff6a1bc4d5084f37fe45b7fa33567
Date: Tue, 19 Nov 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731998753
