Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1CE13B597
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720682843; cv=none; b=MS8Aa2MLQRLO2ZSD0CDJQudnzi6YOUbGjNLQoewkmRBTwVSZGjBS3okpAUevNmLPIz6EODpgvp99p7nYY/PP9d9fK6AVHBw55v4r/5kzk7PpjH/YlHm325sfYIO0tytQOC8tMSwgH0dCxUJIwoBS/KGz8/ctUDVWOqtxs3EwfL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720682843; c=relaxed/simple;
	bh=liwE9cb36OBOUHuf9iDHm+UOj791Q/kFl/ZoZGrWWNM=;
	h=To:Subject:From:Message-Id:Date; b=mpDeA4X4HoGYp6ftj0tNi21ypf9mCbzOpipCOstLLYm6vxb5+clYldSpZ7ese9vqM0RO9Y4nXT78WPa+ZpPWcEOsiXNGSFcJ5ChMwNcjVov7B503eQOyaocpvzhKACKs7tupKHIgoFYTXN1ydwemjnxJBHF+iU8e7HP1tejVOfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdAsziB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdAsziB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FDDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720682842;
	bh=liwE9cb36OBOUHuf9iDHm+UOj791Q/kFl/ZoZGrWWNM=;
	h=To:Subject:From:Date:From;
	b=ZdAsziB5/Zaxfhv2cUKeZfcnS+5kbHU8uSGYcKuMqfvJSpVXAdIuBGgCiHd2GXzHg
	 IivtWQOlmbf0E6yQHiHsdbaLoxEsebabyiAC8ZoKt7eo8eCHkhRYIPK/DA8i6f/snc
	 isMztxjD/OpdXv/ldTfHxVlf+s56D9VjKxLockx3x/yBe2QCtEzjXa1ZbabWX3+Y4Q
	 vDpz9dXm7w3JJEjpsxnE63NGyY/ozZqt3zFkuqgMQoq4mlcU9qV8UAX3QCVuHmqVcl
	 Lcu/jZ2DB3rOzexfpr/1J2RSauBMhkXKLXeEuXlsRF174Q7uHf1EcU4FzUNj8uFL84
	 Qz7wr1cMCWiog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C708EC3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068284280.14222.243559616430234932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033da6b591f7731a223a4866dd814cec49c219688b0b3e6f9c13c6698ab4e57c
Date: Thu, 11 Jul 2024 07:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720682842
