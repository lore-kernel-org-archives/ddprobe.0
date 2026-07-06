Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1E92D8370
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783344514; cv=none; b=H0xz5nBiyIMg2LYpy15zZJ11wZgt6jyu7JT06hIijUiBiT79/XPBG6u2eETEtE+klh5IUfiGp+409iKxOioqDZXKr4BzvwJVxuqJLx4v++mX4+5mMS1PEExi7rYrxqebAJbLhr25ia0dc/2GSuvG3oe6GjDvXCaepVWjb2mBb3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783344514; c=relaxed/simple;
	bh=LCVxD+quqs5KT5EoriXrBfcSwZypooMM/5CBr1R3dS8=;
	h=To:Subject:From:Message-Id:Date; b=MfJW/fDzuuSyFuNynmmrSZP5ugdNdFiDYRrFfeO98O3oKdP1PsZ8Vo19SuiKXoQHhoULNUdatmkG4jWkbxQgBiXyyBPrin2V4IplFfKVvNM2MiEvoJ7vpsFsHdAeydnSumZdsg75m6hrM9W0udebCZ0guhXgTixq476CJJmJv5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih0VHgyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih0VHgyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEE2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783344513;
	bh=LCVxD+quqs5KT5EoriXrBfcSwZypooMM/5CBr1R3dS8=;
	h=To:Subject:From:Date:From;
	b=Ih0VHgyHlCR+GuHMPitkP2VWUEsAIkzBOpvf08hEPnZObdOHL2irFgemLQ9WCQzfR
	 ieaiVfM2LMh4gDfWd3q7xwyGci8aEwLcci7RTeNDEnhiCSY4d1fKjOemgbbCt9RUlb
	 p5Nzsd+0rlXSnAuXqNVmSGA/g8hjRRyX1RSzAdmY+DxVsTTAHAtPaTG1jjal/tXhZt
	 u+DwH4eWOHW41WprY9qNWilUXv8GdtQOqI+rEJ5c9LQSp7x/I6hVjaepe/6YcySXjd
	 0njKHXaveQLE8HMuJn94BjS+257DChKJUz7DeRt3OX6oljrFBglvaR5NWkLwlmHukk
	 E5WL5bdT98JJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C0C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334451369.27712.10592637280348776148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14e27aeb2a73a333c87fa5b45606c23c77826b065a2f01eca740b91dfc817e0
Date: Mon, 06 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783344513
