Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D707264619
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775344534; cv=none; b=KZxYT3tUpRZM5dodAT60TZDCWnWlEoYPNfvHj6kbdMtR8gEUABXCauDN3FhhfK7DGwqakRNuc4kI9+Cz9gP/T5e8FzGLh6Xlnd7S+ev3lyQVwoUxLfRDmINtxeBL1/kSDF8f+zGQoBSkZzgGGUu+6ekYDELIIi2k1EYnRZcy2PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775344534; c=relaxed/simple;
	bh=Wwt+OOAj+nyy1xcEl7ZF7hP5FKyKrYnLz7z8P0h8wko=;
	h=To:Subject:From:Message-Id:Date; b=qu21nfG7+FsS9zKQy0zvQ2hw7h0PO39xYzu5EtEy4tlmPp6Pq0ePm7GwHsGM2JAwn6XigxQbUFHUdQmVEOamS953546WHdLyFXvW5G4JrsJThtpeGx9syRwPK+pQYE56KPO6OpEcR9U7gryECmmrwBla/f1gpwEF+cWObcy2n9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqfqqPo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqfqqPo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2113C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775344533;
	bh=Wwt+OOAj+nyy1xcEl7ZF7hP5FKyKrYnLz7z8P0h8wko=;
	h=To:Subject:From:Date:From;
	b=pqfqqPo3wcuum3r8Jn86atFa9CCHolDMGXU1YNuv/do1vMxKCUSfJNDYyj26wwc6t
	 /M24e5ZKfWRPqrRLQMJPi1Bl3DoC33vVOBbV1tzyVN+9PesejUtPwjyNfnqOwkwmiw
	 lcBT3rwFnrdDPdzLHDhKMfY0vpR8a0qRetEjYqLM1hjipKAf88UVJ/wxQS0T/oqs4Q
	 LTw3YX6j4PUnuZnmNZ+pgQYLdsOS2p43s0sdQEON3i0xvQxEnL+lwawRpX3GoiweFE
	 MFMv0xI5/gIuykOSiybUxSF3faOZrVH2KelnukAwRKO9raOh7AdcDzMbPp/2yjkVpR
	 jO9T7v2AYaHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB286E63FE6
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534453371.30682.6749009610043566184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011137a742a4836eb73b17c7ea210d7c842bbd2f8530ad6aa841861f35471715
Date: Sat, 04 Apr 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775344533
