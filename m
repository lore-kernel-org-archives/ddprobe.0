Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357BB1F8AC0
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745746196; cv=none; b=RdYAK9V47XuSd1O0JKz9uW1oIdFDyWJP810cMmSlIeVN84X8I5gTGWg63+7Te+Fh1yKXqmrTHUn8hNrjYE5bqCo6iS0rrWBIYm1sFijZTyr1BVlm2H0vL6rxL3ELeQVqi0qi5SerVBUOPrXss63hRWX4ujj5QoRxv4eyxFX0Hxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745746196; c=relaxed/simple;
	bh=qUKRkcKbRuXjCwQXm7gxSCUlRNN/vfhuz4B8TNTp61g=;
	h=To:Subject:From:Message-Id:Date; b=hnfBRbP60BJKlvPi96OmIzTaxxYyOlqs6zSsz1HczaAcKbtjpQoWdAYrm0b37YOFNAxyMzS11DWJvX69BwQ4jsYu7C22JOYcgCMjgXqnfeOAkm2LgSOvO3jh5tdHEaAmx+LdzXatV10p//jCXjeLDYAkfKYHywLGpvv0i0XMWDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2qimJfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2qimJfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3557C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745746193;
	bh=qUKRkcKbRuXjCwQXm7gxSCUlRNN/vfhuz4B8TNTp61g=;
	h=To:Subject:From:Date:From;
	b=Q2qimJfS+QzUxIGHE2Gj/to08kU7q/JGOZJlG88hzEvtSkmpLa5yor4w/Matsyh2k
	 /ZsFktWLAleTTxGS97IEBCMo3gB37+LiM1tzIjlz3dts2pyLVMKWu0Kx+RHqmrfbsh
	 /Jb9Q6ERljZ/DsjfE1613WO3TbCxJBJ/xD72dtFPLoZsI+q2jwmSINtFrR+nTJSpd3
	 NaXaosfR2Vtpov3KuMpH+NfZmiUoKdUhUzOMq36ZhRBC8PfTVyJKr3SkKjyDXn3E/3
	 V2S0Ebg3RQNbSJZYD3J83o1RC0dzqj5dd2YwoLVOwlfky3wNvRv/pgSBo0WJaaTJtq
	 enO+JcH7fUxrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C13C369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574619357.8235.16946292676842306684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5381b2f0af6417711de70e23472c0b45ab1b217e85617dcd27ebe904499ef5
Date: Sun, 27 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745746193
