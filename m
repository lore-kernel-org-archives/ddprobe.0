Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F2E2BE026
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776946054; cv=none; b=LQOqEpyZIp71RHMjuw+mdFBQL/zrVTpQLZ14bB3hn/9unJXOQP/NrBXe94fzWsHCWd5d08G/ocfBS7uDExHkN/BopHwmoSHkkB7ac6C3mfdAm+sAyhPz37AwDtoSVpvwxhOAgQKm5KHur1EHNfEf7PUFHU3C9P3PQC+ndmWaVao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776946054; c=relaxed/simple;
	bh=wKpP47y85d7QS9hHw1AeAAiWpt7Z+wUPCrLOPDHQYuY=;
	h=To:Subject:From:Message-Id:Date; b=Yu/iB3eNv7qZ/cWeCmPp356b6HEIjiGJgkcd5usroCrrKSWMvCBeQT7Odrf2QA+1AEuMTcMy8OV44J8Zf0jwHks0S6lrnK7YetcbisM4RIympg1mlahghgbaWYC0DWEGVzBAKbfkRUTTClukxPKXcwJt28nZnmv6w22WuTrylfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRI9KTC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRI9KTC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B562AC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776946053;
	bh=wKpP47y85d7QS9hHw1AeAAiWpt7Z+wUPCrLOPDHQYuY=;
	h=To:Subject:From:Date:From;
	b=oRI9KTC2G4iyCs+vnpQZvW4Zu2daVptsTe+vmgQVKujUd9J3RHR+6rifx95HRkEVj
	 GPKxfStWFx4uad2Ihce/ni4QgN7fYTn+ELTKldOjByg4Q6ei3an+Dz7LLI90XXGVME
	 hKm92rwYbwYC7lcCpdI1iEec4Uz1Y5SuFi5oZKKGI8xYuhmPz/ymhM9yL+rrNjyjTf
	 n02jC1OyAry2uEl70gCKyK4ooaopX/rj/mcZjae/S/pJemdwIdZHhqJWBG2fQBQAq/
	 IJ2hLgZb+lRSw+V9GZdLCIeMYD2aQg2V3JBw6xbiCF/aDI8WbZr7C04x90NF/yQ50I
	 cJedOqmB8cR9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A943AF589A0
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694605368.16453.8547621589044598870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375195686e5d6c1f105fc010d25b053126310386d765f450d0e5813c02d8b1e2
Date: Thu, 23 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776946053
