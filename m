Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CEE23D7C4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756832994; cv=none; b=ffiAxfLqsOnbtFqKRivdxMYb7F3kNqDP01KE2ZAoblGgAUmJVwUIpUnhyHgxipkxHcXMnOPVfCgn+1wcOv8JOIFEw9a9NtI3e0iZ5886ZVnMNMUzCmUGe8y/oX2p7+yC1YJPrzk0zMVR+RJNAyNVWuZoXbBb+KRbSJc0g2BSDEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756832994; c=relaxed/simple;
	bh=uUxMNNh9oNxn00F2j79Le2U6SKwaYVRRfyk+qf3Irq8=;
	h=To:Subject:From:Message-Id:Date; b=nQpfDApSxsr0gP1mRnBP1Azgj4c6j68dWzzUrMy5mLWVJ2EL9XrlLzauMZ8hLwpU4/MS149+UpNiTyCC3gC8MFrnGeTaFlcqN+QYP2cKw4LZj0LjIe4MT+9jTHqZTGtUcoqSZX1D4q1Vcur4arqyq+sXS9/IsynHptkqW7Il4Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9rZQPcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9rZQPcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D93C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756832993;
	bh=uUxMNNh9oNxn00F2j79Le2U6SKwaYVRRfyk+qf3Irq8=;
	h=To:Subject:From:Date:From;
	b=F9rZQPcFzTPfdoj7Uvts4bswKyfkXvIKW8b7VncuJnzVKaMiLj9aAKEZRdKmrBkPu
	 c9ymK1gTUvdrhPlEDagA1l+NpidtnK0F1ZbgUovK1Ib1MBYC9c7GFud/cTiEpN3aG5
	 6lBQchzL/nOe1YxQ9UtXdNGgZQB3NjCWkGLxE5xJKFiW3Ed4WQpec5v505G+eXR+LD
	 3DEs/TXDtGbmmqswtsQf8IBBDh3Rv3FW4EJlAKA4wIurTSCDvuBgL5IbbniX2bjMWr
	 FGQETT/yR8UiaIHYpbnDQOg8QcujxOUIrllh5LYjgFAX8a8a2DrdsmGD0Fh7mkU8mF
	 cWcQ3Bh0BtYbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92184CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683299358.16100.9461524053825517502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab29e29961bff59289d25f84c47970af64f0ac4d8a1547e654cbed4512d2c8b
Date: Tue, 02 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756832993
