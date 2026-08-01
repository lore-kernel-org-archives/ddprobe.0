Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465CD17B505
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785585034; cv=none; b=KBTOT0/G14Y7Qjpp5tewjC/hW49Dq0RyM6/mmCvp4S8K9DnSOJyERbwY+nMylkJOwr0rwThuzQ29v0DBoSFJgwjtYx64tqbrrgV4DRoSLx9sh+R+6AqDK93yu4NVdPEi8fTNXIMWUHQbwyjbs6Ip94wLkIWr2icosJKcP77SLhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785585034; c=relaxed/simple;
	bh=sdQik2xj59aO7J31fHe6D3RNoYbHOSvmKW8aPmk5kDg=;
	h=To:Subject:From:Message-Id:Date; b=kYNGoh9TwvgttuY444QrJSdaUAqQj2IV06aUkfc0ndgb54NoCRKf/06f19slNHU83uqmg7FpBied0tqbOdZxLYXX4jYprMbhDpcsgJhidhiftSGG6g1bMW/gTWYbUZHCyTI0djNoch5uuVeDVT1+ggyPg/uh7RCyuEZBE6kPGBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSxcwEtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSxcwEtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE07C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785585033;
	bh=sdQik2xj59aO7J31fHe6D3RNoYbHOSvmKW8aPmk5kDg=;
	h=To:Subject:From:Date:From;
	b=uSxcwEtY2o3cFazN8d95eJ9KiFkxt2nWTZo1HZXFREps6OSKcsioODztudrZjon66
	 5xm3OMAyR0p5tI7Eb5DCeJM5Fa3fCKwF4iA/Uzd8b/+6G9BkI5HC5YobC5FMhhgVD7
	 KErAAs2jZi2L1ab78zbh0PUw8czIAHufEFR2/xIoPQRnMlgY1bmZdgDJfgfgjfuXEt
	 oxgu3FA1HKKQoZP2/IGs0d2Lf8jCJFQ4Ht7I0tfJAc/nce61onxgs24wnhdsArX4Dm
	 oD/1j92Q4j6Pii+G73soChVdJyPlG14CtzlY7hffsvKvNbfXzSTNleea9PfDgZV+ou
	 JMKH6Nn9qmIWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A8C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558503368.18099.15132747703092998876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473aa816e9a03ee94deeef2f7bcc660e69991e65f98ce78ccc1689b8cc5677fb
Date: Sat, 01 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785585033
