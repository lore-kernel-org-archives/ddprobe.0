Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A6C33E7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777766854; cv=none; b=B+oAEE2W79G/IIBOOkcfd/vbdJAXc3Kp0N/a48j2EWoAI4axZM9XPme1rIH7yIm7ad4ABhSK3G986m0/GFWAGpGZxhXn5tjlo2YI6u8FEQk/isCGKqjPOqEVoxmczrZwExtK5RuAuawFRMgnfLam+tdVz0qZlgEuSe4woqm0qmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777766854; c=relaxed/simple;
	bh=Lfn1+4XHQ9QjxaJ1OE77iX5nu/UZiGG2Ta6S7PO4w0U=;
	h=To:Subject:From:Message-Id:Date; b=p9cronF9AdtFqlapicvdZS1CM5fQhichSEennFbZktQaCQakCzd0wtATblkzashpEGzvb9hy36yXbZcJnXd3uEofk+pN0fdz+A40w/JwNSwSjirOW2S2YG6hkeHJaMCc7GpFkgLSUc3RsXfH3K/BTYTzuanKnhoraBeXLMjpT8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhaUuFDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhaUuFDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3058C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777766853;
	bh=Lfn1+4XHQ9QjxaJ1OE77iX5nu/UZiGG2Ta6S7PO4w0U=;
	h=To:Subject:From:Date:From;
	b=KhaUuFDUZhE4m00IDHXw2QQ1dQDjVXml3w0nwoX5MLmq3HFWCW9bfVID2qz1KESUp
	 O9bWOqvX9C66Y0P8oTZKdWXDqL5BgNLnNH/BlW0m/NdjYtImIqwm4yeHiuZ2EIGhkR
	 A0cGtBxu8f4+yubGEZb9yBVxoAD3HP/cG0KkdbCai/64ccaCdZVWGCI7QkVS968rH+
	 KXgg91gINM2HiBvvYb793k2zloQP1lSELLW7YGCcCdLxfYS/8XABB1V48JxvY8yf0x
	 /MSids+MmcJ3Qbi8hvf4Up5qYhOREhvEGL9DWnGM8259Q9NgfzKWzAHmuVjUsPy3xi
	 rgEcH+9vDquNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16B7CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776685369.18548.18024437934759653743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65831a0279a352af37296732b813a2e01096c5c7cc3bcc3995b7773834f250dd
Date: Sun, 03 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777766853
