Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372DC238D52
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782073594; cv=none; b=KLcwtjuIw1np59uWFzkUHQx9x7cps7wzdd+xINNgk0hHJ5nifNZdGZA37b6Fmsoj9j5kIq/9TW9TEtNyOLaqPNbczOivCq7DAeZlSw2SulpE2uqwZxEI36Vbx7HVF2Og+XxkYsOIM4diI1MelvIK3vjYjS835GTUj1iLAsEswng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782073594; c=relaxed/simple;
	bh=tC2cNJXLOOuIz+E1lUvPUzz83FyjM54iaJrgH1tYd+M=;
	h=To:Subject:From:Message-Id:Date; b=q2Cyfoi79rq58Z1bNCUxOGgCBe53idIZZTuvsutSzDgvf1YzUrkZnktHogiPzK31n7Ntl6oaWc0KyKOIszYL99/XhRDfb4tbsk3Q8nlTPnbJDk/Jc+OMcgpN8XrE9Fls8Q1W1U7eSEB/OF6RY+Vz+b8vADMt+0ANiP5Nxl/PqR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qM9eKnsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qM9eKnsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C913FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782073593;
	bh=tC2cNJXLOOuIz+E1lUvPUzz83FyjM54iaJrgH1tYd+M=;
	h=To:Subject:From:Date:From;
	b=qM9eKnsgtJpeWl966AGJOXviCIf9W/W6XParjgWK20DGYhRabRCVhlmgY77V2gfRQ
	 TTB6d/g7FGGK85MAe3DuOs067dLaarLin0pD316VoDprNEScR8lukhgPrK7MURoxha
	 jQWzycCcoHyKGCnrlGBqf2QWNERusjTu33OtX2vvV1uWIthrKhKupN/IbO4KhpSYSV
	 BdQ0evu8ckD0UzvJrxQJ1T69fJ3sFriXHFxlI8tD5L43sbbQtdDN9woN0Q/x6RmY8m
	 YS+X8swumORpINQtMYe/CPhM1AYuPeGtnPLENcjf9KW7YrA8+MFfPOghUiGcrfHLKx
	 g9vdO+25TEpkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2FBCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207359370.30366.2926575294316496749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92435b98093848c930b0ca88fe0a367ad1e4a1061a85480e08b46972a542937b
Date: Sun, 21 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782073593
