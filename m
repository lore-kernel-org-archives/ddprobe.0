Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC5257431
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771085694; cv=none; b=BNwyW2JV2gptcQChM2Wylh3+CsEf3MjgWCN8WCiUAaMWR3ouXE9qwo8O6sCoWqvjcI9E1VLFcHguF6AwIYQmBfaXxlnvsKH2YuJbE1Pl6zVR+1eZBlfIOTcrvnnMj7K1Jk82TnmFa2RBrwxilzONf6fBId/pjOD7ENWADs/C770=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771085694; c=relaxed/simple;
	bh=acVLqthddOmxcmdAun7FJ9tE83Nx1sHVecCmpWHtaZM=;
	h=To:Subject:From:Message-Id:Date; b=s1lIO/puzyP43MeJoQPEkWlALtxSwX64QfhggkR2A0HM1U3iLeFveAKuDuBkgqVB0F4wojIHWvkfk1oRggZjMdPTCURFumof0Fr/sidHMtkXy7ka/DqE4WiX3SIEa1d4Nf57KB9ge1gh9SNc0uQwcGpiST9pZG+Fr4zl8pm6CBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGEQ5AsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGEQ5AsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34EDC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771085693;
	bh=acVLqthddOmxcmdAun7FJ9tE83Nx1sHVecCmpWHtaZM=;
	h=To:Subject:From:Date:From;
	b=jGEQ5AsK6si/ETTDdLAubeRgqF4hzpiE1T1N8R5o4IsyGmi6HX+EBKHW71sfri6oj
	 pS666SImwQpnOe6UiqaMM9uTlNPzJo5sJhrPPhcbsGyJLi3TysELTQeaIvwIEc5IiI
	 czOQHtHM9ldd6tS8sr09VVXpE9BjNJDdMuif1/YG9W2xWBGqrOa3CC3XOV647xzSJN
	 2dtMVZ7e0e7wRn+dbXfiaOfXms90MxeSOFy5AtPhncfvI+LE6QgCULfABmBuOjeKgS
	 376foXjTumPiTaDwiAaz5Cm+yxReR4N2pkvse1jt1Uh6fdU7ZPwklY3luS4GrPGrY0
	 R96pJ64ax6ooA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3D8EF584B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108569366.2744.12073488624788511895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602effb7e752b152c9b554f94515e1fc605feb759e86386c2b01d031d3e276b5
Date: Sat, 14 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771085693
