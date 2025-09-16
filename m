Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C76280A51
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758012594; cv=none; b=oK9NuAMMA/dxCprZncPFF4+u95lmnMZQdee6K5xqTCHGuY7mqpPNbLOOvUEH5ApQ91st8wUszH0w+hqAH5h+yOoMSiQEdk19NYJvy6wROkp/uO9zmqjDJy2k9MGy+OqKymp8argt7IL+2akHWvtMCNBiTKhN3rOuPG7kcjpMYVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758012594; c=relaxed/simple;
	bh=Tin1nuO/miME3VYsv4Y5xaCDF+DnRbtPG9le174/Noo=;
	h=To:Subject:From:Message-Id:Date; b=QUBCtpm4TGrwgJ3EnG9D8vb/PXCTtp6mZ3WaIR3AbIgU1030J8GM80zpIcL/s24+XlDiboOlJcLRG0ZnXLCyPw3Lt8if5I7qjeF/CNX061j3yObn36nB3OewuxujuPgFZfbpTsva9GkSV1MCLrKSAlLPtlzEveuAmHWotRPzS10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+GfQkzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+GfQkzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A201EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758012593;
	bh=Tin1nuO/miME3VYsv4Y5xaCDF+DnRbtPG9le174/Noo=;
	h=To:Subject:From:Date:From;
	b=V+GfQkzz/UZpu9OtIafcZI6AanLBqQfsIjIAsuqWMp2hxQ1jh3SLsD1r942lEAiMq
	 d4YDE2nwlk5unzH72LxYW0iWT8GbfHj+ApR/9N/DeMiprg6+Om9ULra72QBj1jEzf2
	 wWSHeGq6pa4v+8yM27UCa69EbeHtMUl4ynrD05TncUMP0o/1UqwywjCkyla89oQvQ1
	 6XgvPubZWwNvOauO0j5Q7sDsGS7zDSyB+6ZbtZh7dI5O+GaUrXn1Njyq9bBHup+TTJ
	 50OJyMp5uvPQZ1jW+x3PqJdP6G8lW6+U+m2a5pBMPQt5iugXxgUf7pnpUJeE+tJiMN
	 ISwNRGrw7gIYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DFCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801259358.1342.2328702698250798877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9116f502102fc543fedae66de0cb8dbbf51edb647ebcd009787df4bdd1c32556
Date: Tue, 16 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758012593
