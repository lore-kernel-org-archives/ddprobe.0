Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13ACB3B2A0
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772411694; cv=none; b=f+v47HTF01BZDsq1b32LSDhVYLhweasjlZweDrTRPyslbUUA1ubShHocFRrMnMMDUx3OnJXxCx18SMwsWDC8Ds+x12Ua884QUtUCetGAjAzR/pU3Xe71AaYL7XkUJiIM3iAyMAX/K1QNxSp+rdlYN3VVaGSCfP4bikYIUx8p7pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772411694; c=relaxed/simple;
	bh=XCinYIrZgvhJcnGOjO6ydDXz6+BoJ6H3GKCQRpLVIUI=;
	h=To:Subject:From:Message-Id:Date; b=RELj0G5oX4QAmJdFSYGMIAbfyyOPwT5RbsIBW7gCYdznF2HIEHxUSsaPQaSRiQNQTw8vNlk6BcY2IEbiJv+aTG+ZqV7jJHmYiMeU+3HQwyvalQw/jI8yY/Wi2FBfcuaqP+/pnlTA0mBe0BUYAQRo+yCXU9d579afdOXiWcnJseY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8Wy1GQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8Wy1GQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B66C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772411693;
	bh=XCinYIrZgvhJcnGOjO6ydDXz6+BoJ6H3GKCQRpLVIUI=;
	h=To:Subject:From:Date:From;
	b=h8Wy1GQ7erimrQKNqQM5so4CcJbzLGm1ojVzP5j2JjCmcZxX3Xlla4JJmskK6FWis
	 eRXQSk4pNe7l1RX1ImDmaAn9JxyIp34tKyBhHIWai4pyXh19tV59hbOTYm4Dv/EhQl
	 /Z+jUFPn4GJDWvwadi6fLSjMlHY4Z+N2BZA5F8eY9rrg7FANunw+9ScQpr2Z7y0lj1
	 0KVPpw8H8/50O+LiAvFEKNqie7JL5UAH0Ekcgknoq+qzoB4LU8RMt/gbMrbW3hE+0/
	 T0eGjV9IGVsg7UNpOweISkt0CFVKYLI3TU1WwmhAUwRaDXNRMVL3bUfNBHPjBXiO9p
	 8rkrBtAUl8kbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6A5FD007D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241169359.14330.16808357560723330112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfed296cef83a5b2edc75bcfc20a19bc736fa3c41c05d11f029da0c63534e406
Date: Mon, 02 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772411693
