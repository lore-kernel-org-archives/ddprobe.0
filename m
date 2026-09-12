Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6336B1E7C23
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789189234; cv=none; b=j2Gd8uLiBaxN3u1zWHoDsDRPOmXsaM3aEa5d2h6qnVBFN3bgPLXE006Uf58dPqc5uLpf/ET1vpnvmXFKUuqexT4k5N4eek8SgK0tB7G155VEe9dVoMg3KxD+I6IHGzaBgDUVxJ14aM9ce3QRpNlL1uu4C3uEG/gEsIvof4i08r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789189234; c=relaxed/simple;
	bh=dCm8jWN++1WRzbURftt9/8ydu2ZCe5f88KFL0TggWrg=;
	h=To:Subject:From:Message-Id:Date; b=jX4lp72ri/Gr1bGLpluMkQhx/NExGGZkLD9eUCv15T+6+9HAwK9PqwDdPOJH8gOdcoP0yg7G5ucpauLsVcJYs0veDIWUn25nmgnaKxM/qcGVxvLswUNIogL3C1rT2IMnU9wEKgpGzarMa++fNO+hQPUKW5QuDrPZ6zPQylF4poI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/4b453f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/4b453f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7604C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789189233;
	bh=dCm8jWN++1WRzbURftt9/8ydu2ZCe5f88KFL0TggWrg=;
	h=To:Subject:From:Date:From;
	b=S/4b453fS9nWNF0jxEcf8+Hwi0CTAZFKNdojDeLzF/L3TAx+RLP+9Y3+2hlEYQHJg
	 F1B3rXaJF1QI5TQP/X7XMAQNqdHDd58K/uDEdVXPqBsRxVwTV3/TpDEJjeazEXhWJW
	 0ceNs4NEaoshpRe1d9Poq6dQG2KqklB992Kr8/j4IM5fkpBHzWNDAOd4OjNPK4kb/b
	 rloMeT9W2UkyDl2MNLwXXYWRZ1oU7l46ETNYJofy7QWWrQsoh6ORsvg4zmpLqwh2mh
	 s+Nfq/GxdNgyfyvRG9c7frnzd7B92LOXCKuGLacK8cjcV94TYHxkv1EH+vYRU0C4w2
	 CBsDF3SKZJRKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7DAC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918923368.1251.4598264574560019982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c8815fde6ebf2a09fe1f43690b1dcf8b76f4cafb0d4f7734bea38ce85748f7
Date: Sat, 12 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789189233
