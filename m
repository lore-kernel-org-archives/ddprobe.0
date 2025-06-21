Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1390E7FD
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750478994; cv=none; b=hjjs0sQDxUDwYcmiUI5W5VosZxb5VcStXgZkFDqZalcYuUx2hCK2ob+gqrqt3apfdCcrP1JCAQ0AIxAU9cOm5cQhTIjp9IIccUeCXeS8BjJNBMbwLzNERS+z9/nA4f2lXa5wZQ9qA58cw9aQKYoTbjLYFeMXRO2ia91TFADFKNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750478994; c=relaxed/simple;
	bh=YTmRaF8lt+UBAKhFkKk8le6o2wW1kZdbgUO9JFs6X4I=;
	h=To:Subject:From:Message-Id:Date; b=OUhSKYNh0RGiW4Pm1ZwdJ72RTJUfupqw2dMMBaaQhgk5o5XrecRc5++aaZ7ZNq7eYauFVlN/Z6/907eZOYZaQzzYpwXvSL5r2RHdD4CyBjFvpLzjCMGRTTl0sobiUAGzDB6NlaexRhHeo0bvIEfTaTtRKEWbuqtZl081UAMPrrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ih1qfGqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ih1qfGqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85D0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750478993;
	bh=YTmRaF8lt+UBAKhFkKk8le6o2wW1kZdbgUO9JFs6X4I=;
	h=To:Subject:From:Date:From;
	b=ih1qfGqDYhW9G67yVvW2IB6ZnGuE/njVewz5pi+stZ4XMvG2wKYzvA62jVZ/u4QEc
	 WsCMguXQau8SHw8W6bUItCbsPP5ojGpeEUIOT9UMrRokuHcM90qdOhWpa6sBE96q+Z
	 bRhQTBZXYCxbsdDSvbZFHE9Zm54XfC61trCTdVNjuRc2VFmnalH6eKXVhjCkujuznL
	 IYRilHu8gSyu7eFUaZMwfapNjyiEejd/vpsyWNHtPxz0sVpmWys0jBO5WTfCEnVvWH
	 /CxTdhuD2VxLiZrDqq89+QpYkFSEuTB8XD5b04Dr+l1JFQDvevTChk82LYgpNwp1Xv
	 ICyQj0k9QJMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A5DC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047899357.18561.6938271560344313996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68dc629ab9a917cb2e028c45d6ea41a554ad6990c0d10999443a3dd73a776987
Date: Sat, 21 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750478993
