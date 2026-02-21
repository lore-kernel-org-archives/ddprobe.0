Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAE13090FD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771637694; cv=none; b=OMO2nrmdwIW42TmOUcsxW+9FphpAZkvu3mkvbNATVHkOSCB5El+1PJCzrFE76kr5+H8ArMIYqrgsuOOxelJOeF1v8dx0oURHc7bz/PrQi171SG4QBmYlTCkIXMNu9gaLH+1ZftOmC9MokRkc3TUlRsiXcaVdJuodwJp/p+t6G2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771637694; c=relaxed/simple;
	bh=g0DSQtk8cSD2DX/d57klFDa7rPSGlCdBObRS5Q7jNUU=;
	h=To:Subject:From:Message-Id:Date; b=ur/CTlhktvNQObzQFHkfSSSkqVWsaYAYL2HLWEWONJHRZ++q1jKp41sYPz+NDiWXS4RG4vtPOgwqqlFPKJxqKmRGcYbBnQkegqe7R2yIpd2gQ+FpG7N02mZbnTl/6ZmdBCmSs+qUsM2TYB9T1kJ3XSfJoCB8DO+m/pb6vKDmRk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXKo7UXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXKo7UXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD4AC116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771637693;
	bh=g0DSQtk8cSD2DX/d57klFDa7rPSGlCdBObRS5Q7jNUU=;
	h=To:Subject:From:Date:From;
	b=uXKo7UXFSeqQ+ZRISFylWiRxwO+0o0PWCx5kekngW6hAH0xiwlAGGLiVbDoTIc+5H
	 SUm9zXgTirHVfOpnl16nnCpgxl4vpsA5rbpNroO5ie7OJrvzK/LGMdJ7oSmpMUaS4a
	 uUZ0XVc1bnbOOuatQFKq02YoKCg0voQyj6ZkTaiTsrH792DRzb6v4k4iisFydjCu/L
	 vZB1Maec9I9hqBi58v/9WLp7BxPzajO2PtB2zoHWNlSRr3Y68V0GgMPJtc8LJ65hWf
	 5h5hrrMnLdGDHjf4g4XBRf53L+j2IEYPrmcrwfJxvwlOM1aqtgAH+C6fHWWP1OyHL+
	 iing1ymVjueUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ACEC5DF66
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163769359.21891.14694254874604682366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4345ae219722af2a239406a6cc5734bab5b05cdc4d7da0465648b95b0b84e75
Date: Sat, 21 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771637693
