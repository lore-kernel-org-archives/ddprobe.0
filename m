Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7D05FBB3
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707848297; cv=none; b=tu8JuspyXN8nn+a82AvXRJ/T0LEvJKDqtf/h9eL5yU30cedPeGlcaTqv5cvXn2W80EDv4LqXrb58vpyb847UqgCkcb3XMrsUXCKlj43Twcr/pln8CCD7jMoObFS7I0cX6R48tLbCazsn5kfBhFoIULwYnG92NQ7LQIpUxmmy/jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707848297; c=relaxed/simple;
	bh=WBR2dJMjBh+dHnNw4V2FiE3DgQMNmcOLPhdOM/WDnWQ=;
	h=To:Subject:From:Message-Id:Date; b=XzOqOQYsDTR1gCNFd/utkeS7FnXF/a1E64MFD1NrFxRQXL69Wla6y6EIBppWNBFuuWOuAZ0ddGHKW1I67xAJciEtsA0HsY9o6XDApTf7VP6ertvKEWaGEvWVi7mYp7gacvSNIOY8ipAaCaA0JBWBI48SKCSHY/2Tfh8B+DcYWck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaxxYLRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaxxYLRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773CBC43394
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707848296;
	bh=WBR2dJMjBh+dHnNw4V2FiE3DgQMNmcOLPhdOM/WDnWQ=;
	h=To:Subject:From:Date:From;
	b=XaxxYLRdBDlbTKwaEeegjGDhW4umCf0z52E0zYMY+6IeWDkO0xf5NnC+BxoF0x9Z9
	 Rsnu0o/ze+jmXbRzpFPuurIk1Z6Fp5Ih5mzdHw9LxuknfYS/1dn20GFIFxj+nZULqL
	 kjA5oP+A0to/EAlRy/TlflPGYQBCWs7hdP+Dc6krxvj18t2Oc2xvSDn0G75w10yZz4
	 /nWX+4DEYQ2G+5dXvPF76UM/hjMKiJQwFFe4X6LhMvdn3n+gK2JFnXSIr/+oEzapEG
	 guZorUxmFDoEyKYZvNRpinstkTiohhWgNKKOK0J4NA7ZMraZW5533SQWoXFzKasuiw
	 LOv03khgz2iDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DEB1C48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170784829637.5941.18032626037805944683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff807f73966008274df461c7f221e498a1db5974945fa06827657c07075423b
Date: Tue, 13 Feb 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707848296
