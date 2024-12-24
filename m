Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF2B1DA4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735076754; cv=none; b=MpiF8WfP6X49bO04Oc75xrlG3fc1HVrb35E4sQk+mYwtt5URjK67i16a1RZMepVtCnMJCJu5TIkZZ4A3QqQxf7+CZCOZCDT7653p+QApRAQaEsCWoYnxJDANMwNBzI5cEi8dW+rAfA6CcOmg6JPTtEj+i2GhNHGtjwFYdi9MLBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735076754; c=relaxed/simple;
	bh=v6gmlWB9x8Qz7BmMm5iCrWw4C9T9I9ehvgYm8ORFga8=;
	h=To:Subject:From:Message-Id:Date; b=UwoEUtuX3mklKSw4nfBd8y1mrIZUBK4Ys4Y1I2de56sVvOT7/WkxuvWNdTg26kw9MEhgkC0m/cnm7MROTwMFDCHCn2oj+7UOhj/Cz7ASaEZ6oyqPVlo3yQMmqD+gf17/aQEpfsmGMiiXXQEYJLbqvLUDQAmSeQJqZ6qwn6whfA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA5vzJ3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA5vzJ3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC27C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735076753;
	bh=v6gmlWB9x8Qz7BmMm5iCrWw4C9T9I9ehvgYm8ORFga8=;
	h=To:Subject:From:Date:From;
	b=MA5vzJ3vqV5rufHuE/JuSsMm44t09+6FEDvan4H2mA4NyWoog1ZuwdM8lPkXERhRQ
	 Rf0z6T+qbOklqNJcvnoIr0wMLF7HuqYVFGId6uvL2Pgp/t2r2/UKenQ/2EqNXgx560
	 2dUvxGmhvfddX+5p61qnnlwWWeaFB8jsNZ/+6QFEnfU6splnTokAuTPxx29u3a4r1M
	 208Hp8tlTGDPK5Mnv6OZ4xJsRAr0/Mz4zk1rqJBqNj41jnKPZ4pRWFrMQ3fL7EqRTz
	 1BWVCs2OGvaJ8gLvR8cDXq1MqVwnGwg4RGZ72mQ2lC+cPmN8gOGdJ9WyIIxMtPW3zB
	 kEv378ANwrjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B050E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507675359.25132.10159181402579084120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44fac4559668b473f5ee32d6751d4ff19949572fe2450fd2908f00e511d4c414
Date: Tue, 24 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735076753
