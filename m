Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DA541C302
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783328915; cv=none; b=L8u1bBqnrRHJxFhDSOf+AUJwaU7wCgMQGW0fYbs3pROeCxzc0cknFOtr31GoZtvd527jiI4dHHRlib9x2RoYFrlOpxJOhiLHGAPLrg8b6Plpj+WboyaKMpYKpbJp/R9M93NfeDHaETJ1F283ErKhxVl9l+ARjfVzNIFqzBjW8DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783328915; c=relaxed/simple;
	bh=wPvqrBsBIpA8y+I4UGjsVIY0sU5pnmwJWVcE/WAXQGI=;
	h=To:Subject:From:Message-Id:Date; b=mAZXVEKtX034cLUIxFG6Gxp5ilPNRR1c9aJxqCmucPzODlyp3xYJBfHLC4kYEd9gxvzkKQI0pSqpWix6bmLCX5ME4I64cUGqthbT2jYE75YGrDy9tr6IyPND4eGHFUr3FjuQFHD8XEUCDRr079qX3HhBXzBr1yKCHlW4J+TNoD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddRex+PA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddRex+PA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3B7C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783328913;
	bh=wPvqrBsBIpA8y+I4UGjsVIY0sU5pnmwJWVcE/WAXQGI=;
	h=To:Subject:From:Date:From;
	b=ddRex+PADDmCRqs6HzYc0dWeduA/V8Dh3SnsmfLBdTBqn7zo3yMSVjuQ1jA6uvWMM
	 yLXpRNeEy0SEhLXSkSqVkuutTcthWmSDplflLIlEPUItFeQLhxOmPQf1+VgPw6fl5J
	 VnfeU7oByxWwn5ASHonkNMJutfIEtP9HW6tKYplbX3n3c2j97OhTeC79Vqj9CfC7Py
	 SiBI9q2hVKH2DbXr0Vm31MfXShEuYXiwkQ9S8jZWIbQ8trV4w2GnUWcrrGkRMmNimw
	 W7CNgvXodhzFk0PgJp20JGalMmLSJYq9M+rW1e1cvZtjvANXuhsRBoV+zhUpw/IBEU
	 pOmIXuR7DUVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9266C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332891368.20326.18439051684966045749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8907aec066a837d4316425e431fdfebb2852aaafd0dacad3d0a54731886d6673
Date: Mon, 06 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783328913
