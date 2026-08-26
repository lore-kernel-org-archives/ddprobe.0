Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9D1330644
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787729434; cv=none; b=BCAiaEypKwVAhMrllH5hXmHj92osOsFHRwfzEExwECNZlvkadZTUC1OCn2XgkBMOFsTfzH+12EIP/zgQvGc9RtuTxfzO75xr1ywb91Z82m30fYpbJ/E27kBb1ECXdnB5j6IJQk4TI1EDmCO9MuE6E9VY2dXte1o1bDIY84bk5es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787729434; c=relaxed/simple;
	bh=dd4Q524QUdiAMfIWsU64nstlJ6IzR3f04DTGjxQJd7Q=;
	h=To:Subject:From:Message-Id:Date; b=NxQ6G69FMP+wWelNewTpfXS0Mq7iTrseDOctrIHX9WZZ6k5FtTPE5aXjvnbJgdtxNLkYMTNgRuNT0vsvrgrkd6uxA9JjvgAqH7VF3iItRN8pEmUB7fl2EL/dcBaouEPJTKaoU2fALQZTT+xfnmFHQ6/IMOb+k0YQHS/efpJSNXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeHs/lMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeHs/lMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D378C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787729434;
	bh=dd4Q524QUdiAMfIWsU64nstlJ6IzR3f04DTGjxQJd7Q=;
	h=To:Subject:From:Date:From;
	b=UeHs/lMwF3MPBa7NCo+/GnvigehbNWcjEBNglWf7BeONnjglavCh7XI1gbosobceu
	 0o8VkZOQqUO0WzR+kEp5LThRqT9HQ/wrH5VDRV74HxkF96QJAuoab8ywSrwO2mQLfT
	 HE9C4rSzqtGq600LvvDd5yRvw3t3/drV2Oit6OyalUk0eUWkpk94G817ey4Zv5HgH9
	 s2m6xRV/byh21XsrPgZ9WPCWWfhr4DW+hvs1kiVhjLh1pu0kQipJ0Fd23EXkf7axGD
	 +2yFTUpJQ+oQYqeqOuFFFlRoP7wYgsHGuA/oDK6I5TvSJTeaKcZ4+URf34vNiWc0JL
	 Fmauj8sBBH0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD09C61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772943374.4169.13144141034632640892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df75c26de82d78caabd43027d42e8c22347fb0c19b74ea79558c284a8260fe03
Date: Wed, 26 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787729433
