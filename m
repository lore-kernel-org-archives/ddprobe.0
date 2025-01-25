Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA12205E16
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737775554; cv=none; b=s7GUSJF6yD8PVAVW5n4qFZXeq28coJzvtnNVwBipM0c0UrKss06agBGXl//erIaA2BWEmdkKKDU8+e5/EDgnesib03xLrx2jtG7wA/ghWvQT2T+gCUTnrWQ7gFVYcV4EMOgriUDTgbleXinDUXgehMmq8Um6u+C6a2lpyHs/omw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737775554; c=relaxed/simple;
	bh=AfQ8ymBzNVgmv2xxqEYUQRdRNUIYIXgp0bkR3UweEPg=;
	h=To:Subject:From:Message-Id:Date; b=tIZxecLMfDtOAHZwt8Y7nHxKdcQh5cFKP17SaNEOV7KmrlVdKu9jlwTdqCzQr9wUP+iXg7qHERo8g8R0zGDHxmBQ5IrkwSbIUrgD1fVJxousUYYMlKrTfqNC2yBkFPt1fNmO2BINPosd7aAwcQZpS9/kyZ2V95ZmIqKFXuVIcUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYFIPbFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYFIPbFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6748C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737775553;
	bh=AfQ8ymBzNVgmv2xxqEYUQRdRNUIYIXgp0bkR3UweEPg=;
	h=To:Subject:From:Date:From;
	b=NYFIPbFs3OBFiPrVpve8caltX/C9Jj1ihQNhXy6PGN2FxoQciO+eisZVbO9G8G7l5
	 ha2GW39B3AHX8P8vLjEqRRC+8ih/Q6Lm+skR9FexLyvL2lU683BgyLKAO3CR75tdPl
	 fRs1ZiqsGLp2rnO3cCnSr0INzUli7ZDIlewCTAjFVVrMwKGGadRPmPVeZrzUHXha0z
	 xwsQBc7p7yOKzwZxgRNi1UNZ60hh9HEsa3ZMwWWlUn3Ae/3/w+MUaj8yE5mXVOxtXu
	 PB4uk6PjXNxYZG0uxkJxMCT5aXNTdvA9j8FBLX3toKShelPILoPAvKap3s24ysqp/w
	 PPQKchDgy/8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B8DC0218B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777555359.17761.16079090972537818564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd0a8c1cbd4d549c5f7272da885b7c20c5fc04a4c97d57a0b00058e937ef75d
Date: Sat, 25 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737775553
