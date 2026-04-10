Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210301862
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775827054; cv=none; b=A24gw0Tko1eIOdfemX0+wOsn20bmwbcknHIl8vkoS/cqQWfOc7j7rymIGx5Y1GRThmTzEB+blHstKnPuNtz95riesvF1ZqKonxUQvHfPCxxJwxJPancCwQ5liI8N7kJVNdQFd7tB9Pl2Joo04Yp33XNcYcQ3EPPlW3wYwbcBzQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775827054; c=relaxed/simple;
	bh=ZrJH6N4LM8wrpBtLQAl3Edkwx5C3u2RfI6APfnrlFnI=;
	h=To:Subject:From:Message-Id:Date; b=lj35YHigt1MCBfszAo11w6kRVEMEeEjF2RRW8E3M4fm4k9MufeECnGzvsnWmiBRb334S9jm15a0JPUm2fG150e0vYBGZMtJO3DmWLyH9IheClF+pFRfQCBNfzAZo4CXDwlTabao2LWupp9IcAMHFSzS/6mRrh07k7Nfoorb6mFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEnocgOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEnocgOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7979C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775827053;
	bh=ZrJH6N4LM8wrpBtLQAl3Edkwx5C3u2RfI6APfnrlFnI=;
	h=To:Subject:From:Date:From;
	b=sEnocgOPgFOd0B9+7nhb/HdsOVVzfxPn/oREa7EhfYgEZPzEvdqXSlLl3hs1qgJTc
	 Jvd2/3qvjL07w6XGt0nkqeQ6MU4L++i3Ua7zEDs6l5Gy6nIKppvxpyJ+zLFJupDcUC
	 4Z6pgLCx7dbjStTpCcZ1tfZ7MRySiC+7Vv9ruZVVrBgwPfh+vveEhxfmtpeV2Q9338
	 zTKG45qp7vdRcdNDzfSBa5kP4WRnLkoUYx6NKanYscbXLDsAMhga/LR+P6JTGSs5J1
	 I3eb4IWjEnj0Likm42d+5DPJalL6FW1SoMjwoU+enDf/zUbMP5ke22daQMB8DI09lI
	 ziXukzUBrnCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95A9F44868
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582705368.26463.4037802375971773611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b37519fb662970049815a3ef18d15f6ba9c6e6b342253302d54d3b5c10fb45e
Date: Fri, 10 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775827053
