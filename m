Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8EA1DFF8
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749145794; cv=none; b=MojgBhqZP7gUqWiGvApQQR9i5WkW+dOz7Lwnbi7KLQHeXQASrraCseLCu1dszAFESHnEkXO//qWvIG/wViutoaNcTSRF4hIx+79nbjet2jWzNQWULyepo4pYcV3KM43yeDEvBPCSiZzS3RntTEG3ha0/f4DghmY7Pv34k1COdwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749145794; c=relaxed/simple;
	bh=+dgvvVR1830vkYdwswjV8+3ED7c36TqvNNIVoDeX8WU=;
	h=To:Subject:From:Message-Id:Date; b=ZCnpo4Nw/0X1ev/Fd8UQrxwX+OJ5cshh0S765bxe+g+zwKe0EQzjjSAdReKQ/UuBrbu85Nq0mHliXcBKlUeitl7QdmFoVKj8GYPwt581/s2BitKmlA5z21wuTZ+pd5lWgYHiVKblQy+KjUzvJJJ4778mLvO036qT4hEHQmENXNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BczdTO34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BczdTO34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0842C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749145793;
	bh=+dgvvVR1830vkYdwswjV8+3ED7c36TqvNNIVoDeX8WU=;
	h=To:Subject:From:Date:From;
	b=BczdTO347tDZ78Y5CIdsfi400X790ep6FTfy7QcLxfMIBUgqtMAIQky+jitRBxwjG
	 zn8Xmf6EORw/zzqh9eZ2H5TBwVNmoCz7P4jH791yBYiBNh/so9mkgsVCWKwt8TWZp6
	 zNsq/CaMVAmMe98Z3BdeHQKkx8L2XPk2UFmj4iK6zUJVdUfCjRmTeV1DHoO8vMkcCE
	 2LtVBp5LUkcGrhY7sFnuH7oYhAd3sZZfhJGojHUNHJUnyXdFWpGyHNVEJt1Xd0CxLb
	 lbmPy05IzL8hcZlus//LDvaG8AuspYeoB77b3gEhVWG1kEjExDHVW/3k+K5MXRZZPL
	 d6/+zrFRDGt+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F846C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914579358.13678.3214082444206860875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7b2ad7856fe06547ed72c5db812bc02e7b928e6073803a397b04e477c2af34
Date: Thu, 05 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749145793
