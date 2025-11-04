Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349CD2550CA
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762271994; cv=none; b=q2uw3I/u/tcWfctK08SAwfzo2gnhiitvB6jtQdpBtT8NAHQMd+M57EGXB8BLG0NfR8iS0hlXWhtc9ExovLnNuRJ0w5ke8MsHmaYQXCzYTzYqKJ1Np3syeW1l57kjUFfBN59wYb5g4vouEskJmEFEudlIkN09+oZHINlWs51omAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762271994; c=relaxed/simple;
	bh=MYAJbFyG7rpBa9hH8AaG4OCmzBfn80LS9+w3/Jr/y/s=;
	h=To:Subject:From:Message-Id:Date; b=YuYGMyS4vyPSj7AootpYIPPfPv5b2cWlfG128mFY+cj4bzzMUt17qmRHuR7a5y46LoTSt4yZhOsMB9vxyM2jdjarQFmR7sBUq2BLGJcAdpMKKRA3Cx2nDhJyDX83P+DnP4/AbooCtemaoGaE0GheSX2B5AEU8kfqhm6Zlhfnkqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHMLKGzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHMLKGzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A61C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762271993;
	bh=MYAJbFyG7rpBa9hH8AaG4OCmzBfn80LS9+w3/Jr/y/s=;
	h=To:Subject:From:Date:From;
	b=cHMLKGzA3/Ian3ka9ou4DMONiwU/CzelQEx0+FENRDcHHgOJVSUJGrAo/28/uN5J2
	 VEDP5RJAQJMmAeV9BriJXHTL8hfLE2PD275W1vT5JFcgcBe6EP7g/iKaW6XRvIbfgy
	 LZjMALLBKhnGhT64mZGu01TiEwtwcIXhNmFCeKf4J3D59ulS1l/vIKoDz+nWKPPGxI
	 xJ00e6YT3RoycFYI3UA72NwIuYnKfQsBndNhVVlhSMWrNv79647uddJ1/LgE+myUHO
	 70KByxi1OtO8VZghOWfj6apEdTsgNJgEtumvPL0EiFBQTgXEhHwtxfo8XWfWf59IBH
	 4nzz4y5OcmGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A16CCFA07
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227199358.28699.12042796481300350306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bf4af3d2f12a9d0cf492b60a7902bccf01ae36a642dfbd81fbecd8646c2958
Date: Tue, 04 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762271993
