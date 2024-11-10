Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316CD233D62
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731227154; cv=none; b=IIzob/ahyYL9+INIJumA8IW0M3/rAweWDeshhUOREzhInA8W+7Eb+fbp2yhjMjhskKHJGPVrgOnRAQHcZ4RSqwUOR9eL3vLYCMiTa+Nt0EQ3PmOkBGLDkih5FLl1RPk0caKbwOiEfkSMFTindCQC/bfQnDFIe4PJmYzQsAqCJYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731227154; c=relaxed/simple;
	bh=3kyB43CWaeqFWuswgxKMZJPHvzV7srwWMsVJviejlVg=;
	h=To:Subject:From:Message-Id:Date; b=OJVPNiuOY4YH4vFohQAmJDVJHYgUsKITl5ULdSMayuVia81s00kdJlciXzvc9IfYp82/RawZ5R616GjMj7OnbCz/xo5DntYu0pJQfDN6GM2rzRES00edC0V6I2PpkZJn06tESkDiUh0JAYY1uEJOQBiqTqI1xExEHmhY9NMHW/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZW4pIhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZW4pIhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB8FC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731227153;
	bh=3kyB43CWaeqFWuswgxKMZJPHvzV7srwWMsVJviejlVg=;
	h=To:Subject:From:Date:From;
	b=tZW4pIhkAEo65ackNh8xnN1+Bf3/wKbHkxOiqQB0u07SlDXMkh3uTBeKFo1Qq+IMd
	 6rHP9nYNXoMyT+/kRh8vGbn8Yol8ECBuJxQnJBzsAqfxLiPvQdA80fEwcaqs/JeOCj
	 +mqapAzyYXVl+O6HlzbB49wV1/2xqTCb/G0e3X5rUsBgbX8T+J7DEEuvjLZAn3tfFQ
	 coOayvmxTSieF8rf60DIOhlf8oTLmJEvWCZMSAyvlZO0ts4l/eOd1r1fd4Y0/lNApW
	 h/8yQbidtzhaBv6Esr1vqEHTHVINWyVblLZgt5Im8qGP71EFSS0jYyMM38MlJPRHdw
	 QZVSWpDZa8S+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5A6D5E37B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173122715360.3245.11074264998149219015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e781a9b5d6e140ce2452fc12972d807e4f47a08878902bd59ebad15ab1f456
Date: Sun, 10 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731227153
