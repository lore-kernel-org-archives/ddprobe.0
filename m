Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3932D0C8C
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766936634; cv=none; b=FyOZYtDiFUF7PcQiNd3dw/P5sYw8Y2DNm6XBW7THIGyIGeYIZnct3CuOcG2GfJ8CMjEdZX/WDQ5YoAEYKeBMmLwJ2A171Eb5mfP5+ArW22Ine/nYaEsURGd9mejtbmJ0k1feOb/5wbowrww5mRlZ3K1mKTARKK2b9i8BcC3y2Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766936634; c=relaxed/simple;
	bh=T9q1khzQHt6X1hzesroAOCdjkcTYdIujC2Hht7lTCwg=;
	h=To:Subject:From:Message-Id:Date; b=eXLpR+lSujaKyN2SW1saj1/0T/AslRlKbRSlsPvP/+97Tlu+YsHgTEjb0XYFAUSoK9HpxN6hVwunaSP0SnPvGD4+kQN5ECGIPkK5rS6Fq/zBlufooYuvYOe9zpuQeqBKoKtLZRK8z/BY2BpQn7rHk1PjOZdYwvBvzXxGDnLGBKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ky5i2SYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky5i2SYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D2FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766936633;
	bh=T9q1khzQHt6X1hzesroAOCdjkcTYdIujC2Hht7lTCwg=;
	h=To:Subject:From:Date:From;
	b=Ky5i2SYVequzP5iR0fbsKdnhXqFghAHbVkq1maE+/Vf+/GWhVwSfb2BHXMMAxBrQJ
	 SGF2aFsEXL+TPln1PNPTnyzPNAsO3uq447LysULRDD/JUc02dViDa92Et4X7h7Ft/r
	 MB+WyPj5X/JDevQFJsbE5oI5u8j4EUMEVySDgUhQUkw7rLL5DhIrVYWSPRp7tNRs3A
	 HSw5A3/URQLGYA14Y71Sk0xPIgN+U4yruNrSv4hZI2wY+5DGRVyqGtjh4iIGimBfvv
	 Un1q4NWa0NK1nCjZKj/QH5A2XMFai5bZyAoTh0zh+jlCvP5eNmqMR8UeOxhxStt6/g
	 B+9t8fz8ij6Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B45D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693663366.8400.13673262570963632255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2073f3f8beed4c2ff0eda1d21971ae9201ab950885317c97a4d0ea09f14b9a4
Date: Sun, 28 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766936633
