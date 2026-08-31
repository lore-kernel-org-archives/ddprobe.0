Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD96448CF7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788186034; cv=none; b=NarungiSEMkZqhLzhegyX5U7i0hkaSWNKPrlZJeR1ZKOb4pdlhIPoF3FrLG+AwhOsgNybVwGgZFX4tpnA/gkGt2INIdTga5mp7LGruqLjUVemtYHlXeM/M2u2QxIUE0owileM8nQUpzgzA9kgpcfCcMdzb4XPQrhtxrytafQKYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788186034; c=relaxed/simple;
	bh=+VNg5gQCPfz/5rc63yOtgMIsUncwsEVjxUtR+sQbEo8=;
	h=To:Subject:From:Message-Id:Date; b=IfSlG57K1wjS0d+kz4mB6b+X7PS3gY7CJUmmjlkKk5L9N4F3LCaPHpOFMyWsVM2s4SsJYzbB4Hzq9g+1rn9bJtoDK4l70hJx4H7N/ucoCmlLxeD6+DmVA5gLUzG8/+qS1s8QWhP8iXIlLKQEtAzBReScd+tS/W2nu2N3+yhJ+gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODVbLIL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODVbLIL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFEBC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788186033;
	bh=+VNg5gQCPfz/5rc63yOtgMIsUncwsEVjxUtR+sQbEo8=;
	h=To:Subject:From:Date:From;
	b=ODVbLIL//MdcMpKPWa+t6wXQlkd2mn9f7cGjenpJal/KG3ciNdsplpV8mq3MGfqvk
	 WcaKbb2rPuxtPzPfDsPRhyVzRCRGPxtvqOu6lgkB2izjFrKGRYrz3YWYL14euoLqnx
	 xb7Aq92IWZ/fF7x9js6b91wbnPpxSagINy7CT+uyeXd1+WEtuqORF4P0IUN3EiPdv9
	 ZmTL8PfXes6XobSiZnynnPbiqGL0nwZpCuYlKE+wSqJPu4Xj+tFWsG1i79pZJvgrMT
	 QMM9RDB574Q8Wi/yaffVU4N/aR2WI0vylvGgNgvUH0rt2PJyBTeBM69eJdkhDYOi6L
	 sHwvXzrrxBezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA394C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818603368.13445.17303853790022430049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc49489b3cd3882773dc0a9b5e627e2c5a59a4eb1ebb5900ea641039bfa46de7
Date: Mon, 31 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788186033
