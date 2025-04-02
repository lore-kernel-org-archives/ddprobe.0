Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355D32AEE9
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743613794; cv=none; b=ntdUuW/Nvf634iFmt+jtDi6La8KiRP0ugNjJxq0+bi6ioN8F2Wm15InpmdnEaDaffq9CJQsMqH0eMunu0/tDsZq3e7ClcxJTjn1Hmd8D/TXChqw3hIvdI1tLap9KvyQdC795Ym/c+mW9hzW5mAWoudWfKVB9zWZessx23wmkg7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743613794; c=relaxed/simple;
	bh=vSgA9tnZwfykxG5itqPKu1XSUQEbphkNbiAS7qJMCSk=;
	h=To:Subject:From:Message-Id:Date; b=K78qYi1Ttz3d51yw0viNwXLv5oLst0m6y1aXii2b9zbEcgJFG0IUO6HED3f192E3IPJSgaxTidxYErlstzbI3OJdX1R5wcWdt6NdgzACq+6ZY2YpXYIwV6yUoiuS7MXuVgYG14tkKQUV6OFasbEf67XKpY/XbCKNLsel6mtxTek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZRuUmPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZRuUmPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57FEC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743613793;
	bh=vSgA9tnZwfykxG5itqPKu1XSUQEbphkNbiAS7qJMCSk=;
	h=To:Subject:From:Date:From;
	b=NZRuUmPJbsgc8s0P6q8VLw8ys2fiS/uFtJ1j2B6vUIvRWy4hAmGM2XAUe1tW9hjyC
	 b0GmwKrjfvxUFLmxGwzTQbQ0G9+V1n+knbiJxFisSGtAIys4XpQGuApTkZYi89R2/x
	 z3T1kf1TeKrxwSwyoeTGYgR+jVwYwRBc1b5YOB+iqNSHI9gqGEAHeELxTmQFMUpT5a
	 ohMmiN82ckAgmfvxbOogzthKAZnKqg5E/TQheeboOclcdwR1lj2smHP9gXtQ9/FXEl
	 QaBcJ7ZywfzhKNNvRs4Y6vkQdaYmjDIL2szMET6q/04bnbypJjaQRuhOcDnlRWYSvp
	 +Ri02laznni2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B4BC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361379359.21762.18377715630763342728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59639b061670786cd70da8a8e263df6949f5a0720b7e6aa236ef0f2388133be3
Date: Wed, 02 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743613793
