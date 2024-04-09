Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC9C839F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712659697; cv=none; b=lLpn/ReoA9y4saCMPlpy6xxHzd+eyOZtjhYQlJG4dgwKooQfnK+nfDEVgRkfb8xv4rcnVSDE/y7Rvcyzci/Ho+bJaooS8/4QAczm2uS0C7T93YU5HXMiGPsnIAyFGopNT1Zx7oE0tXSlPRhQnj+z5ed3VvVqWU01+sPf3qKn1bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712659697; c=relaxed/simple;
	bh=LnvKBI7480Qpcokwdo4OmUuOcJ0ewTqToWOV578Aj5w=;
	h=To:Subject:From:Message-Id:Date; b=gknnfM1iHPuprxTG8SHc4ihI/P2YUSaw4/B++AhtSr3d3DKL1tymnislopAlkp9J2+B49wicdU6H4P6HhmIoKOZEzCyGhQZk+IxOemFBiGFbrG0wJVjzahIBcXO0foz2LdSTg2yoKcuv4Rr4JPXHIH9zr0+Mc0DaSR+6L1NBT9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZAM6l9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZAM6l9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE99C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712659696;
	bh=LnvKBI7480Qpcokwdo4OmUuOcJ0ewTqToWOV578Aj5w=;
	h=To:Subject:From:Date:From;
	b=VZAM6l9m0SZHq7tVGh5iY8pVQ9/1GgjIgHwwxMN8d82I0KNX+Kn9un36WexIBBYTn
	 BslEXHLJTqnQ0WRdz3XkUHNqMGxFg1FYqZgBwVQkiQFsWSL+6X1AER+6EkdvkvOq1Y
	 m4YL7nTBIoAme3mlMQ+fLMqNknd+6Vq3Vnrff3WKi79guzGbqsqXh3sz6UBRDUm0YP
	 chjGtfsufwmA9YGVa/hphTvck2eGrDhbrnwR4wFgBZ720Dao8nOSzKnIi5q6YXZjVz
	 4Zu4pEgwARc6hWPqKZOebH3lBaQKqtT3UratHZT8zkX5s2mFI23pEaL0OfBZuAX7ku
	 k7nwpKb1S7ImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CEAC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171265969638.29837.18164429835655273772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7904a0fa29b3171f5ef90ba9e94338d5b31b1383a5da747b66127119136aae
Date: Tue, 09 Apr 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712659696
