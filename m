Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FE617BCA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785042634; cv=none; b=DZKsXg04jhxOlug8acYrAfOD4rFu30grGRX1h/kNKMFJGdW2A05Rk/aS8IQdzGS4jXmFD7d5GNaSmxMDvMt55oAqy0CnDkdOtt1i9d8SA9ciSGUFeX82+5riLzKRi2jTUS+2fsID1nM3gROWJo1fRxhxBekckEBs/ui+QVoIryQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785042634; c=relaxed/simple;
	bh=GiIf7F0FRObIeF8CVuFeuJhsyjhD9r26rcmAeMbnGgE=;
	h=To:Subject:From:Message-Id:Date; b=iZ8FzuD02AFGkWjsA8IwA5DJOyMjrZw1FgG+Ij3MpcB8oPwRygnrRII43ES5/wH801cxvp02HtaM6ftlWUW3q3x1SDsPmt67RrQcHBjYbfaidkNTVLNfvN2vaHxPFziGF/dqBPVyfDDxpfz8zH8tx/nfV+Mnpt9VNOBl6W2j8sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htPb4+oG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htPb4+oG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E0BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785042633;
	bh=GiIf7F0FRObIeF8CVuFeuJhsyjhD9r26rcmAeMbnGgE=;
	h=To:Subject:From:Date:From;
	b=htPb4+oGgZCQ8Feq7p8fZkFKd+9Iekob1xImKEbkawT98wF9MF0b5ebHq9C5TLpAD
	 oMxaHahRc+r3wKNh7KaXooU8uE6xcPfB9BoazoMgudD02o3I9IyG5Bi2K2oFY0zneg
	 WRiPPR4A1r11K3mfxd3UyQUHzYu6qRT1xb3az/3xWqrU6ZIAAzF/6s+VgWRS+XFQlZ
	 JisVXRScZ80bJZYDmYg2a1konQg3hsiqJpoNSz1+ujhjlDw3UJDydNWMkb0umEvF3r
	 xJABYHtlF4P/1JjRQ3/5TiYx4I6TopqQ8IuR3AWNHA3d5Xg0wVhLtv7Rg8yCjbL8ta
	 KckrLFCu8qEOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB926C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504263368.5492.6335601295472601330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd80bb834ba41625aee7d61b0c6960d8e18cd7c79af4d25fb33df6135f481db1
Date: Sun, 26 Jul 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785042633
