Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0342D5436
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791511234; cv=none; b=bZTKksxMVptJ5u3dfce9SZGUokfiAMUBtczKcPsF78+0vA/0L4j1f7FP60veXR85sXypZLYJ6SB91mFWvd2grOaQeCcfMDu/lZlUwe+nL28XKdMYsktePbjh+O4xjeGMz9HGDsHwC0wKo3EcL09NlOJW9rPgmaV4IM0GXtkQx4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791511234; c=relaxed/simple;
	bh=Fta8whZ7MVjpdUyxhNNKu9moNEfJiRWjisV87n6QwIg=;
	h=To:Subject:From:Message-Id:Date; b=axo7Z6lt1K9HbJlJlCthlwGw/9bIw/Afi/rf3NuzGkFNSQC3Nc4XPPrDqsrS5g8mlIXBUP51AMbHiSz78wBOqLuFgv/Dxn2H5rUEplu9MZuK+A96Wz5NhD085a2mli4k9FxW88ZjwUhDMtED5+PBgc41doee8qWMWub3DZihm9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8UU7nYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8UU7nYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD231C2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791511233;
	bh=Fta8whZ7MVjpdUyxhNNKu9moNEfJiRWjisV87n6QwIg=;
	h=To:Subject:From:Date:From;
	b=F8UU7nYF/OCVh1XhxzxAUyC9TG+NDuUqRaRPcr0bea6es8BbjRowDOe1zcNoVqEnw
	 ehBlJ7xIw4Hwn0iZz6+XTtezJjpnM2qYr17BFmQyul/HznlAxT8T8/jBtAk7IldEhq
	 vRYHlIkAV5XJ88BiI1dGyW8849/F7k73etCIlFqk0NfOa3Z8R87dqvV0VhCqAGJpcl
	 UyRxWzl/7mttWvEklegvoShKiTONv0W/BzcjUVTyOdouvvogcMutMzyKjo4u/WxkFU
	 dh/afltzUV6o+GMvk8pfCP9spTobsojTrsIv2Zany6O2vHjygVjK3oSCGTQHctFRqD
	 PE2uagvD33g0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA38BCA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151123368.25412.17066660308620343597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34fc45e900c3f548df692c9c0c5c233fe7bb15529ec5894435efe8f999c6fee2
Date: Fri, 09 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791511233
