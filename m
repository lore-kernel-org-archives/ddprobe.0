Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D87E13B58B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727424954; cv=none; b=jSG5K7oddSNr3Y2k3C2xM8usD50qfO8Pa+IhheON0oKevr4AN5Tahx+UTBYvkVNCUX+wcUQV4GiJfpdMe3EunZfx+1Znw/pUkg1N/8lHhBUCnl3vAYY5kkRmwENHJNo0DkidjmPhSv4tzvnDaeCT43Qqp4dPzSQKn99KW4oLUrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727424954; c=relaxed/simple;
	bh=aTCiL7u0sn346P4bozYugJrNEcyiNiiCi5MHUfqKYKQ=;
	h=To:Subject:From:Message-Id:Date; b=CxONdryfOUhz/AkfyXRuJFg8uWndDgyvrnZ2HOFtuI/sEpp1w2yEMIgeZoCrTqUQG253+XBxz0mWx0arU0RwI9dBjI17spIXEz9tyCiVZYxOLt7MQ1j9Emf2NXRE35OZ4/7U1VoZ8BhRMQiMFD8VhaZFe651eG+hGacLAci08c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D23TRc0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D23TRc0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D17C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727424953;
	bh=aTCiL7u0sn346P4bozYugJrNEcyiNiiCi5MHUfqKYKQ=;
	h=To:Subject:From:Date:From;
	b=D23TRc0H6VGl5KC2y0ZdZ1NOi+fRFud6jZU6ndklHPIz78KNpqOFTv2W35NA78j3W
	 RikmEcCazAznmzCjpkc+hMi3ReKp+GpOOlqTf6x344xy+dipg5EnuPlpxDcHmmrlDV
	 J/Pbc9l8JzvLNhDlCbCsmAF3MvnKJpBRXtqj3VrZHEItTj48YRHtPOd+/xgi+PtiAy
	 fPd8MitJ+C4/zx4Ud6nGcr1NxBIlf6IgqI5Wh1Zzphu+ok2EOzJ3jkqZZZjq7Fgssn
	 780VZsE+BpKjj4Z5djEjFEiP1hjgcAYHv3kWigpaUcklnfEFz2NiUr1Fotzeo/jL9G
	 CkaUtKY3Ggsrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A4ECEBF83
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742495364.14074.16088156341722855585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c9db73185db17b517d7c93deefba099b39cca0e9be22fb74592ea3ea5cc15d
Date: Fri, 27 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727424953
