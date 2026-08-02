Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DBB3932D3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785673834; cv=none; b=RrFcnfh3IfkrLlHBvXFsRciLZ78x4Q3i0C43F5WDm8eQcCDkCo+KgYnzD5VF0+X6aJn0dgACNMP4Pc2+/0V2zwScViKcqRzwz8v9UgMRaoSrWid/cSQmNc2xj8yQGqPl/GkKhu7TqnOYL+jtHVin2v2XwXlf6nLhpBbfoOajLoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785673834; c=relaxed/simple;
	bh=cCk6JS1NfsRNcALGcUK8njFBDshLGili2AD01JJcfqk=;
	h=To:Subject:From:Message-Id:Date; b=a+aNKXt7x7rgaD4ycnZdDOXt8JXhfzzau3LAlTLs7c+GBPuiZwkErc3yktI6stXS/atn7y4yzL0lInN3ITYeGA+xVGwmXKQI4uMU7k4qCzFahxI6L05d2GnKY7PUA5wHKOxI6rf90d2rXZ8Jb3Da8FW5qUx8eAK8uwP7uDbvFTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0r3BFjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0r3BFjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABBBC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785673833;
	bh=cCk6JS1NfsRNcALGcUK8njFBDshLGili2AD01JJcfqk=;
	h=To:Subject:From:Date:From;
	b=a0r3BFjbfH8bApD2jY1ysQTQyF+1DHxPwK+pTGtKGAACky3XSpP5OHOOsbxqYarCR
	 Uep3st9tW5ooHqTjA9tvuSPgu4iRRdRhKGL+3tflvgAH1rPiDcD5hKqyBMu7aGL0pL
	 7VDSi8ZOYWU0k9cSNFewWdLkx0V+MY54RkUw417jDyhBBBtsTWwCIJ/xT4wDZFEnYG
	 ogV4AAvW+MleDPswXwgVh1VJmWzUKM3WpYhkpZugGqmEZtqhTyzXadqj/ZjoTMAfrw
	 omTV7N4Ybg1zB6bzSSxIgxZuo7fFvLgAaARIUEn5b4w7d1ozW4Sl/cm/cOJmCtylyi
	 hzNeDqa8jiGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D0EC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567383367.9246.14236991347798813041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b1674547516604b039278b1c32245dd6dacd72a1bfefcd7ff5c6923eaaf7a0
Date: Sun, 02 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785673833
