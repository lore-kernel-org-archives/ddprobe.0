Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C04C1448F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735401954; cv=none; b=Kj24UiO9VYW0BJdTaYfhsUfdnLINOx213/d72aM0KJTZnhm5Idkmk/7WgCd7C1j4xLJ34Wi3WfPR/2P+h86Z8mwHddqexVE5zV31G1wTQ1QPmuE9HbA2PRHFkWaZAj1HYq65PcQnwoq8dL5txAbtRIkO+V83PbnFIVi8IyL7CZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735401954; c=relaxed/simple;
	bh=CYNXOW2uQLAmWMs5Ri27LWnl3D99aZThVBcaqy5+e1Q=;
	h=To:Subject:From:Message-Id:Date; b=e737TMFVS+wNPcGD4eR/iMDVw5pn2KTEM8RvkXkcDUqWytVCBzP+Uky6hypIbDEEMJqgiEPqX644HH1/s5IgSE4xR2q3tyoGjWQX5/3kVS4b8n1Rw9Bvp0dT7K3HfJ2+RBQuqdKPfkN4Wce0LEbJI9os6xcpGsoHNrrVb8/TAPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBI075ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBI075ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2874C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735401953;
	bh=CYNXOW2uQLAmWMs5Ri27LWnl3D99aZThVBcaqy5+e1Q=;
	h=To:Subject:From:Date:From;
	b=eBI075ovM2ZmHhIKRCriBzALjx4EOI60PvBkjkprGjlYTxEZXvV4OxfnP/zg5OzCr
	 LLDnT8e6lCfDhdPIUKGtw0fY2tUnnwQVygl6Ntj0Hrv+EFtUSIya0UiKxTgY15xhnk
	 oWQP997hdyi2cJuyvp2WjbnGmuwNBqPeDvpdBwh2yrSDxLNR70T+yP65PUDpO3gOnI
	 5eXXw/++fSkQDniVSzOqZC2CbJqZ0DOo1HJsxVJF79+x9CqUa4Dlu7CiAO+4Iztrnp
	 eXkeh9X+XP4hrWG5DHCl4NCkAJGX/m5yjqTHkI2Tx5lceqZyH64ZAVCUYul75W2git
	 ZJ0wnqc5OTcFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208EE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540195359.24558.9898670184219442262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3108ac0e15eda1f90c0f59ed744b7cb8d016b1593c85b314aad165e6d755ea48
Date: Sat, 28 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735401953
