Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFA0175A6E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772488494; cv=none; b=fg5s81FxciUrrKr6zjaIazSrycO2RQrCnVA69Xd7OmsIBRGvVPHd0/mxXv/ZXDDniyGXZ+HNeXjjCwcsAhb6ug+/zMpGIibOZw6ly/Du+o2RpxXQmGsk+0Z/UIHh3U3mnHrQNq3GLtKuPxcW1IVlw6AzjqS3Usx3yohrNe6PhE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772488494; c=relaxed/simple;
	bh=y+cqP0Zep/pQW7ib61XjDKlV46NMmgOD2u17rFHTnfY=;
	h=To:Subject:From:Message-Id:Date; b=oPAYsVHbiVP3VexDpMz9twbf4cmVFno68gShUbFgUUZfpsjcUsP/xYxgBxKGtHuAazCeU5mGQJPsfGLYyvdEDYjWCsJuQbLotM8hCOrhHmCxaL3Emvw7vNCDREm5wKAiey5cPeb43S0EL3qg5rNrARylGZH0KagsjzEnFL+ZLz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFXf86Hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFXf86Hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD87FC19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772488493;
	bh=y+cqP0Zep/pQW7ib61XjDKlV46NMmgOD2u17rFHTnfY=;
	h=To:Subject:From:Date:From;
	b=BFXf86HpDpNm8cz9KVCmn1/39N2hlVlS55JU2IcUFu/+UwwJ4U91LrJ2cdAUQ48ZB
	 upoFNX3CNnbMByqiGJMtqZNl8eKGQRsT1ZDd308WllTiduMKHH2mkUIPnSPBCj033y
	 tAT2fZWQE8XplpcjC8GWmEqKq0ZevEQSojzrkLDF/einfE43n+NpquUxoWDTwUn6BB
	 LSQti66rjA3ExhuN93LetpicDrS+QH2BVY6ZEfR7FpJZ1V//rGd01SJOXcds1MrHGu
	 euWRFvaOv5tuY8/zz/y3r5FgnIbqDU7oiuNVwwJiMsfaUApV5itC0X5Hij8ygNHsfT
	 vxPu2Fmz/wIhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA30EEB3637
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248849372.18463.16308487366615837037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc012f36cecfeee26a3037097e6c716d01fc1366c7140236274b098e214678d
Date: Mon, 02 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772488493
