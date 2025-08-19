Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAD4274671
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755569394; cv=none; b=Nm8OWC3151KY0zCqX+8YhjZX8aGgYcGZItxJ9KRdRvcycj2dZ0xYHMywgku/KgJ89WSdP6RAdlg80ZKZUnkanMDribVThX/ifqzhAYVwmDAYF7g0MWfbkDD1yNHlgq4zX5oQPgwLjuaHH0zEn4y6dW+W9jMW7zpmnX+4SYZLK9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755569394; c=relaxed/simple;
	bh=SD/6TrgDEB0jPEGaUSV6QeaTWh0YLClMU9E/4JZueR8=;
	h=To:Subject:From:Message-Id:Date; b=fhC5ooZhjJEd7+FNxR/kiV3zSmqXbHUDAVPNiv+TPe6mEoCz2RjG2p91KR/hbyuGNtNYM1bFyiRNxWajXe3sZ04nCqiO7k0qWApCeBSjNewIut3I5ZpG9RwBLs96UjAI7Dt1QsRo24IQkdVHyN6RwPzgx1Evo+Db29TIjJlxx2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGizeShk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGizeShk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F634C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755569393;
	bh=SD/6TrgDEB0jPEGaUSV6QeaTWh0YLClMU9E/4JZueR8=;
	h=To:Subject:From:Date:From;
	b=SGizeShkM0qUXTy3Zsnks+q53+TU4BVW68GhYv0ynVrWMaFizZvWS/EQTvr4Vj/Ih
	 A/WgEUbfT5SYmw7rvoyfaM6T3GyAOpnI6epgLypLcUDPEvCdkiy9V0RPF824Rp+SQl
	 hrFUye2rzsjOisXbgEj/eXdKUSthZFNXBJoRp+c2Z/duIwtsbp0y0hWypGA3zKSWJT
	 XcK0NkXocaPBCRUQAsLi9MoCtbkGsTwdPdqDpSWU1btDOxE/hl1YAqQuuqOXel6PDF
	 yVomWogCWPdqrGmGifNRPFkj6YczpQIClLpTJ8KYqie0ttCRIKAVJvZYScSkugJ7jW
	 ht8h+KNoy0O1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E49ECA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556939357.31103.2942778209044132467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821deb4439532338cef1847aad6a52ef62160f9a443752727ccfe2e86662bf46
Date: Tue, 19 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755569393
