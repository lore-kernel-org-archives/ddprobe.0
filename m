Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCF72745E
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758619194; cv=none; b=TE33mgNhcB+w42iGWaOFtg8GC66MjtkaFU5rYjb++DnEodrW2rbeDRwI0lwPmCoI7BjkwqooRyUdnvY4uXnDQaiLDVp11wLMPmleuDDQQU43dqnbJD2pgmDwD3QNpa/Tr41w/f3XVPva/MxfzYoOKgu/Qv8LSc1KVbLroDxooQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758619194; c=relaxed/simple;
	bh=riFMbJoRFpydNSHB/ageCdhbGjWFUSLwfQjmYUSgYLk=;
	h=To:Subject:From:Message-Id:Date; b=erkfN/FwYy30hEP62wDbsy4FuENSI3QrkixWWKvpB1SVuQ3ibhyGT1ev+kR7+4K1LHh7DrPFio6sRHzKdF/A643LG897AVbk4Qs/h51BgqbOEJhujzwBt6b0ef3OpRks4L1baP8XzzU96e5+iy5wAg8vEkKLMtNOWZFYirulZJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F37Lugts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F37Lugts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A660BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758619193;
	bh=riFMbJoRFpydNSHB/ageCdhbGjWFUSLwfQjmYUSgYLk=;
	h=To:Subject:From:Date:From;
	b=F37LugtsjVhOjP8ou5RkF8BO48KZEe2jEaWJe1RzsL8O106M14ptuqbWdMDLvGv+1
	 gfCkNPDOsH77F/lsM1P7S1IM3v1xBLTn/gs03T8hZc8FXPSK8/YcQzPlSDR7CUhloD
	 gcRHHQPfu1PtnPB5sEmhsxOdZt9x5NJWj7s18iLLXUNaHa+eSdNjur/8Zw0feyBglW
	 YEdMioVpGJQh1auDPVP+1zf7DLykAe4IK5WAxbgvy66to9wqsS+TDhiPShLOuuoGiz
	 wfciSonWrZlXFZh/2tyc859FRO2fKGJttHmtYAhv54C4lnbChUWaB9kJFLMfsBqJ1g
	 fATfr7FOVvzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918AACAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861919358.11224.2756986299910425498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232e7168a6e5bb4634c42cc954b553051b5c17c1c54e6d6bd36f3daebdfbe01e
Date: Tue, 23 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758619193
