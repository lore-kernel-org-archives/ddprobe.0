Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E9426AFB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748161794; cv=none; b=kbEIMifhnGGm+X5XbojHOfO6s1ge4OmHk/mr3qOs0zS9VCf3zp7Mv5Aedjg3YyTK2g7sydsZuyxIqcA86xc8DG3VVf+39V4Lxo5NbefU4HHoj1khQd8Q3T7NJW8Im01Tcn5UUKs+dTJj03PEX8i+uB2GtQkftr1SeXCiTDZSwKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748161794; c=relaxed/simple;
	bh=adpAHI8LAsjtasoB3V3G9QfA322/1CboupHwHH/rJvU=;
	h=To:Subject:From:Message-Id:Date; b=sctPxwfxfdn4xDLZt4/ADxGMwrNjResvX98Hevo5IHL0p7Yd1hUypYEdVDkIbCTWghpcd03jtQ71mPQVqyD+PMQbpJVqGUR5Jyruorh/+UPMboA+JIBCSMH5BdNuZR7a9OV/75BMaJdjVs8AqpwEia47OGsOGH8hOE6HMlnCsNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaRV7rje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaRV7rje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B9C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748161793;
	bh=adpAHI8LAsjtasoB3V3G9QfA322/1CboupHwHH/rJvU=;
	h=To:Subject:From:Date:From;
	b=aaRV7rjeAeOj6BhyT0hAjxlmyPgu+x8L7G1wI3Z0zVWIZ9HbtTzc9hPsq3aFhOqmh
	 czU+wFuJ+gkvSxF7pmjs7YljBBdjJhBGNLB2Wm6fCOzT8Sb81uyQF1BVhMk5bfNBLf
	 rMflN63ok2/S/iaWlm2FwkRcqcNBOKsWl5YDz3fl+ALvv9xMg8cs13LbGgQSGq4Ntg
	 Ke0ClKD3PLFzkZOe7HceuiB554UqYb6J/Chfh10jkROg8jtTS9uoKxUqEY+7lPwaPw
	 TuW/T47pKOSyiZ7olYLrCbbfZpqTEp/DYcY5tPo4dEVW2Vay81t//f+OgA5KEYabHC
	 dts0GPfXd7CVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92497C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816179357.23799.16486382028983058871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2d5e91ff479d81bd44dbce33f409bfe91a61b6dcd46243690d6fad28a8a807
Date: Sun, 25 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748161793
