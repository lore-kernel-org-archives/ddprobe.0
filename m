Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4CD17C98
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741221535; cv=none; b=IljtO6x6NA6TwWzsoUiwFVsgkxXnN/owlMfQ7EiYIKuic2bNajvJZkM9Ff7Ydno+3zCS7M8MPpOSl69Rw2Z08KDAUcg7DwvqGRtI5UUDVlbF9co4gV6JQdbfiaoq4GlbbKq0NxPF7xas8CakuilrBTCdym4sk1/V8Nh4Cg3FKw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741221535; c=relaxed/simple;
	bh=cl4Xxj/m3DTh3GtGENtfaspMUo3Us/iq52rgyb/SOMU=;
	h=To:Subject:From:Message-Id:Date; b=tSG4OcxDOnF4K7wfkmydzj18rhHjL3HZ/ih0VK5JNWFHSe5N8FOULZYy2Bpu0XPsG8QO4tX3rWDdXioRheRx6WYNNo80C3r+tY4xvPhK5+tfiCTt6CR+o3hwfFAOKRe6i1FQwSMgxhrlrZ2Me28aK7pIR/LL8iF6NrfDAtgcHYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdz+VJVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdz+VJVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD73BC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741221533;
	bh=cl4Xxj/m3DTh3GtGENtfaspMUo3Us/iq52rgyb/SOMU=;
	h=To:Subject:From:Date:From;
	b=tdz+VJVD6OjPrwfhlOfKsM/3WBMkyiimQhNhP7yY6a22/LEt1hyLK+wtGDf/QVeAa
	 jKO0JxSiD98VpYuEpcctDO3QWZtYMyOKfyufVOC02PxwA9vhqMgQ+xFazKTtOokTRD
	 PHq7jU33p51tZ/8Xlp4Rm0VMrv/Coq8u7GnQ4ILCu32jE0PYkZ+Zbmrbe1APXaj1uB
	 /TS1DStN/4qtN20eV6P79uYmIwhxSOcpIo3WbXcZYIbpjKMqBhsvrcfZS/0UcLkcby
	 oofHzXHBXdE7PD1BmPyBNe3j/BjlIQIiU6UiELHwkEEU43zXgbTQ7Qz6eHFjES5tYf
	 5kNxSl2BUMGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9739BC19F32
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174122153358.24189.9345102960004878510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e2e4ecbf7128d5b6f86f6815611e3dfc56fa736bb2345e7c54f7ae5aed4773
Date: Thu, 06 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741221533
