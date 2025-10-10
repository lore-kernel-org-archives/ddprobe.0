Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6C81C5F27
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760097594; cv=none; b=cV4B8SuyUwiYbye/T+5aiuaAq79yuQ5RXjgagNmsAeAA9veTfx7hIECmHUdVza9l5B5rxyeGDA15U5IW6neMKJ2KnYTP+RZCIBSuBPhgYMNvPXmX+PbczF74RxfuKJAwBDwFnNEKZjH0Qw/on8kcf0QSxbT0J2FOIQRGf+hGNtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760097594; c=relaxed/simple;
	bh=i6mrifRbWPkvr9j816Rlh9DA0nhh0D8I3/TKC9Xqpvg=;
	h=To:Subject:From:Message-Id:Date; b=EMlg0igGOoDU8YpZK27YTf55sbYd+t3eyHEe+94I+CwzxxStl72Fx1uZoYuHBsvDs1uWihT43VlDaRHO7Cj7kIEvy6xs1wUmiqLwGWIxzdzbgiIb6Y7NdsVlp4Id5F4mvD1zcs2sd/68R8edtvKn3R94odFjhRTbQ8lXaWMJ3nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNVql3h1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNVql3h1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEEBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760097593;
	bh=i6mrifRbWPkvr9j816Rlh9DA0nhh0D8I3/TKC9Xqpvg=;
	h=To:Subject:From:Date:From;
	b=bNVql3h1vnRSYoKl7whMaMAHwHR7Ow5RdSZEdF8NYGypSY9YY0X5a371QDWB2Zlhv
	 fU0Agrmf/Ub0OWAvKZGfbGjMf5Bf+4yIbxoTti3qMJyX8u6kTSCHPuIMa7KWW9HKSX
	 beDcEBf4TQLgcG3sFT1xvZNT3H6OsbYHwSawd7E/VTJxQmjeBHIjBb6r7ueDUigxj8
	 xR4179HuEQJtWhNHHgQr82zYmq6OSgnoQShTMNHYx2e9kJFgfF78cDvauBbFk8kFzP
	 Y8hd9KP+5nmbhDBPq2qsd5DN3RSQ4/4i62NGHb/ymgTR/DX0lZ6Lopr6C2Qb2lu8hX
	 E1x/MYnO4DU8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142FCCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009759358.21191.10360048932178669775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37167b5156d1ffa9e53959f06df6a86b83f8840adf871e32728bd67af9585cd1
Date: Fri, 10 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760097593
