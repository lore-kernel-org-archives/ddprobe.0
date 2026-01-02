Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258A0257843
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767356634; cv=none; b=bjIh8nuLcjq/n/A6+h6+da54mlg+IwZjUzJxRCJSO5nA1HD38sNX21gR8ZD1K50EdWGLttlAdexpS4J1kNv3peEuT4xmC0ueEjwoZoWkPmqFrAxTCDNPdvno4fNf9dgrZFJgAuIPj0+nYtGzoUQQnZTZM5JWE7uVn6aAyNR7D4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767356634; c=relaxed/simple;
	bh=SO06Zzw/9ZeFeRX+MRaI77+m4Rz6+wb2W3BKT1la7b0=;
	h=To:Subject:From:Message-Id:Date; b=MbP5rPvTjlnyUvuHRRm6SF7m9xhpwYaoZvMSw08sLt1Mu9+ZGxmvSWetBncfBu65D4+IggzQ29/RcYdjnF8L8SpGR8JKvfHV10D+3gq5GUePJznYhU0tQmyG5h4qWlRY0MWD95ux8eNMBRG1X/ZbOjLirt4lXG8g/KYIy0m6s9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkMCem5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkMCem5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0F4C116C6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767356633;
	bh=SO06Zzw/9ZeFeRX+MRaI77+m4Rz6+wb2W3BKT1la7b0=;
	h=To:Subject:From:Date:From;
	b=LkMCem5d/hT41cWAbLsNj98TTpK3yjMwBL/N6/5poi65kWAxNFkaU7rPozB7hKnod
	 JNxaZ44aHKzPdBHx20qvnq3RSXSBsCuZMWfhiUD+f5JaK7ym2SYubcD7ARzHsGn2R7
	 arTGmxW8iyBIWLjxMKwsEIV78gjHW+e3gIVnAPgjB6xZC278w5idn13Pza0yhYGypZ
	 tylKnXCgh0Alk3GSZ5ZWy8sEX+z5qlbZwePtx5F5D5isMDmSsbsJBt9fDxe28WCKEr
	 6Xfn8TJ4h+b533mauzDMgfjWborIszei0JmOG6BtjAiRiFqMegJSnUBT5w8LQo2xIa
	 9ZC/UKH2btgHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADBFA3741
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735663357.21885.12583973130395543564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3530332ad3dddb6e69ac0380ebfd9469c782aba5bc7331d7996429755c8b94
Date: Fri, 02 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767356633
