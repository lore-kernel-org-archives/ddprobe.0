Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321581EE7B3
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733869554; cv=none; b=R9gJvDyfxkIykn/h+I+rAZIpYIXk465TFZ6TD680VjYmZz4KGm5vcwqrip3huDTA2adDecb9TXf5vSSy/oSPJ9Hlssq5BTUmDeb5PeRvvAPp4J11fBTUNtYIfzBA3rkG54wxTwtL7lkTAcI9nmtprUkNK18+zNzF4edla6S9Nls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733869554; c=relaxed/simple;
	bh=3gQgbuQeV0Y/iY+uM23A+XlK0SMbNLhlSE8UvhLQ1Xw=;
	h=To:Subject:From:Message-Id:Date; b=l3I0CKJ59RN2VR3rV4si+QdB06UjbG+l3HjG/WueFWm25zqfAiD5+QbnkotJDH41wSJvxHg0S/RI0pQCdaCcbKgh+04wO9fBjyp0gAY7tEzUMYRoakGnd9NEGEX5zXry0t0/qDnnOLMMFs26fptd/ZA+IZUeoO7xYhiewqNW2fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7HrETo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7HrETo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A52C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733869553;
	bh=3gQgbuQeV0Y/iY+uM23A+XlK0SMbNLhlSE8UvhLQ1Xw=;
	h=To:Subject:From:Date:From;
	b=l7HrETo/lZkNBeQer94HLxyvGz49mHL67OHfw9Lc6JHDZFjoEEa3cXIqSJNUDyedr
	 QB5Ytysg5bITggcJb2PMcmrWxiJH7vlRfy3LZH/jzw94yDDB3o8bMqcUK60K1cqEwL
	 e2uS8Cdl20K7AOdu87E0vGkNqh7/Zp/IoXETniPjDTKwVh3Np0ykXmwnCQuF/ul4YO
	 6jm+RV4EkTFTUa8BumqLLIs8VAkWr0P7Hof5HHhMf63k0ZRA/pU6fUhArEjgDIMwvG
	 usUtgQZO7U6f1ruAT/vVKa/PHpl3APMbpuxioeYitQbRy2oF2QRJTHMuJWBZtTMtN0
	 yhtk6yzTsD5TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DADE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386955361.9960.10441570478399237253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b27df419389f16e1a88c7c3418fb3b2ec4a3a209f725bc6345a66b338ff46af
Date: Tue, 10 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733869553
