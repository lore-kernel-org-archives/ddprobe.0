Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A89D1FBE8E
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740137934; cv=none; b=Amx9Ymg0Ss1DzPfaW82m9fieGtDdgGBKMtwrT0mgnNudwjGgXf9h1clkJz+713B6U2iL1+zjDeCWvMSrlTCYQpPuvyRIwXe/hiWYbLGmzB34rm4+wrZsa2nFyY0YajX/EZjSzDk+/WI1f/VQR6zb3Kb54AqZ7k8RHFka29U7zVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740137934; c=relaxed/simple;
	bh=Lxg3xWUdLtN87nY434WocnJ6/7HSJH21mZy3DwThn/k=;
	h=To:Subject:From:Message-Id:Date; b=QG1RH3WDQlfjaZrlF9fdq+BY+GjONg9ca+JWpm0xkKxcQH8rjWItwiGijREViRTg8HodHIHywOF+MWJtQVWSrxvpwkuxvgAN3TwNqbG5m01H/YzSGl2jzDfxe7y3JzQgT0MWgLm9rbwEyPy28+nw8AXrzynPimda97uVVGEIr8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpZ6BlOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpZ6BlOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E58C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740137933;
	bh=Lxg3xWUdLtN87nY434WocnJ6/7HSJH21mZy3DwThn/k=;
	h=To:Subject:From:Date:From;
	b=OpZ6BlOKu8Lp3CSIOSEVXyponwKKEow8dcTKvTp/sLwXkLfexlM0bn4nlRQnRm2Ws
	 WP9DN5SDA4JWBjr1hMhQhqhiWh23nATsvr7cs25tPpT1WeRDpNhkHnQMaVSdDY7HoE
	 KDFntA/GZX6f1wGYpVdSK0JA9pCyPzxTCBqQLgilleRjTObUp5enijg9n0/PDUr1fF
	 KYKWT6QRkrjBb6LutyIfCTk5Uq4y//Zz2p/OaIWZ6g61+9n6fLmx3m9lPEgMS5UogU
	 BwgRYgIZUQB7/6vHHhoF4mR0T6pRtiGLpndjhI96p+UzxGglyEeUFSb3Jh7LvOgDg7
	 a87wum9bw7SOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96688C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013793360.4609.3868267545328798121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0ceeca7b7e40ade4a0acbdf206ee9329e61165b9e924609fa0e5cb57d3132a
Date: Fri, 21 Feb 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740137933
