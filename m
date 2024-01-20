Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CF612E5B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705784297; cv=none; b=NjX3R7Z+Pcxrjh/Uke4DW2TETLRa9ZdIUFZzn/hLPIEvyNTkwHi/+Vg+jRADC6gJbNydj0CZL+MuucPZaFcJxqetQZoDwUI5o/IpzggLxDgjj5TOhKYIxgivc0BERXa+klvWRd2rOEou/ZpZCTctiHNWh7WHaUasJw35Pk1XRog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705784297; c=relaxed/simple;
	bh=GuQUbjIwtNCcaYSskXdgLMhapnb0BuU9hNZugfGIhkw=;
	h=To:Subject:From:Message-Id:Date; b=KGsgNYkP4PRkL/GRr+3bNtMtPu9SBOpQa9M5ooy7VG5NditjaFIJPq4cf8afipWTdpzBcihhmLTl7FREXli2IuVNz7yZXxSznDdYHMCoRbD+DXbO8RtaTpxqRmBb0QQLo6V04ksvr5p8TOLSDMbf0enaBEHax4Ebxe4b7eu0fJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMrf7vG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMrf7vG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804C9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705784296;
	bh=GuQUbjIwtNCcaYSskXdgLMhapnb0BuU9hNZugfGIhkw=;
	h=To:Subject:From:Date:From;
	b=tMrf7vG8tAZPkrmnL4vq13uGU7/NeWm6oP+XIihMpWfIv6IdTyae07WJBj4h5Vkpa
	 UpQ1+5fMPRcJSSRC9jh+d2U+bAIA5osLn2pCt2XqU7ziWZNFmTy3QdrTt9yAwmDB90
	 VWyVeiBlBrZ5l9GUCV1cqovfqi4NTlYlTwAY0ecllrucV+UgLMU+FoVMkYo0SeIWhc
	 FJQSEnuYFdW/mnUmBdxo3+2s3Gd74xDEVEQNJnmJV3m+ulOoF0VW3ll1xtwUjhNlyW
	 2YwGvbm4gigAJtzZG75TlZ3UkIKTCHDh4ZV63kbcSklA1Dr2vvKTiJXlbyRKjCsHX7
	 o53d8iHb0dI1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63785C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170578429637.26981.10233804422377365831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541848f5a515431fa3f4b42997981df660a4725c894c7cce3a1e1f83182e4b42
Date: Sat, 20 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705784296
