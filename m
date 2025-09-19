Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E334A3E
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758241794; cv=none; b=ptMVfJMuRJ3uMd2XdA144LNZTu8ZtkHyvLbmPfRSB/u41JqD1KLFsVY3DlN/OCLIKzy+HIYtwFwXfr/fjestIFXERZykFMbmTDUKxxn+i7ZjJs3OoiClBkVoZs3NtIDFO2vo189rN5K0wd56zaLF3CAXTt89Sw8XXSzBTOlSnk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758241794; c=relaxed/simple;
	bh=PDqRHuhHSR4LVJ5BVjuazKswUq9EmqXGYL200Boo+u0=;
	h=To:Subject:From:Message-Id:Date; b=g4aamiqdn22aW8mQ6VWjQ6w7bpOh7EO1jKujE1VXvxfVPdbHmvU/aqP0Wy3Gd9rbbiAbrSyvkx1tB7JahBjMyTa1jeg4u2bVAMp6QyLCamYy7PQK3KafhfQDA2hrrPvQusFaYJuX41OOjYEZWXPxaRB+pZHvcmbhx95TeE1zcng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mg32WiUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mg32WiUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B4BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758241793;
	bh=PDqRHuhHSR4LVJ5BVjuazKswUq9EmqXGYL200Boo+u0=;
	h=To:Subject:From:Date:From;
	b=Mg32WiUi/rRO1cVoxyycFWfKdFPnz4efo8xBVzb+PBlJhfF09jSiLXioQoypZni8D
	 hWGPQIFVDAoeTsMfNheBQVrlOG6AvN+BgTLSu9dDOHIOlo2QEMoJ+95ly4PZc06hBr
	 23eqLCW3h77T6ZGCHyKpFYTTSoncQxzlsX45B0IyxhqtI7lyNSr/HFJ+toRigrx6iM
	 A9XqwgTV9acaQd9R3gMaWyakzZ8hHE84sdCAZKopYjeVS17azgRfWmqPxeXUtLrFcM
	 1xzA+F11HRJMGpY7r5bhQy6Pb4SyXwjrpNFsEIJUBsplQoEVEAhCCwquWqJz80mWOu
	 SRcUOFPcV6zbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBECAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824179358.22780.10378127028964128489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff37219fa2fda43f4d5c567b5de0295a7dc46d1479ced88ba028a6b3b496c819
Date: Fri, 19 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758241793
