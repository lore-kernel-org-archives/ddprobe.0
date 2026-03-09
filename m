Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B953ED13C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773082494; cv=none; b=RvbW7M8EXwn13YVGasv4iHYklG1DFtf92m/OPc/oxyx09QROVZVDkKRS8LhjCdf2lfI5o1J+PYHwYgzpbDbRrFryJn0SLvG7g8yqWyFTjU9IGt0vLUHMqRWyHVS7KVImOZmmluKLHmMFi8FXyIebb+IhrOdFAUmosAkl2GjXv6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773082494; c=relaxed/simple;
	bh=R0c7MorQ7j9QLSnB8yteT7EQCnNGI1JQ/WisrJDjvUc=;
	h=To:Subject:From:Message-Id:Date; b=DiBnaaAcOu8KfhogjpQhjvIUSfkTaEiwBf6buCF/EdsPm/rOd5go3ZL0XhueJ+Ddei21j3UmWG5GYWxRBVaqNFP/zdENUsjDREYuCgVKlJ6SlvnJ3lb0fr2pGH0xPINopzxtkzGo7QoWYSO47WXwSDTBiYiDVMRXcHqCzkq2Ik4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4aKayYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4aKayYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F011C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773082493;
	bh=R0c7MorQ7j9QLSnB8yteT7EQCnNGI1JQ/WisrJDjvUc=;
	h=To:Subject:From:Date:From;
	b=Q4aKayYbspRXl1w6dsyu3HbGq6UoZNxiKPPwFoxPdCHsiEhazis0DseKQ955arvlc
	 pUD8IJTmKaiZev6JYNN/ZUx4fpLWwkWmytr9bTIqb3i3oEZrEtj3WfwFozXoyKPErJ
	 2MAmpWDh54brtFq+2RlfuV2vFmn7VMOsZwoQqE+rHrZ+TxJmOjPB5trSSRmhRPwK/f
	 al+MnNOG0YnmGO378Pmuqyy5GA9YyDzu6BmzecFvX4ZEh2djdXZd52hNciPmrbtGHO
	 Mv5nOvyFW5kaKKBdslKnFQU32YqTEGVMNLBJXsjA3ttXhdYtewCltbex31XJk6jK4A
	 tbY/W9quZAloA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE0FCA178
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308249358.19738.17296424715664219466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16bd23fa5e719257ddcee99b08fd34a23ecb64e7107c943384bcbdd0f9611844
Date: Mon, 09 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773082493
