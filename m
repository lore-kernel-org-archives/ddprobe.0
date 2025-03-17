Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5311728E3F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742192394; cv=none; b=MADZYFeK8Kco3TzKIXB3ummPyfNCvycwy40xfRA6oP0hQ0Cael8AHs1Q9XdZ2lDvAlbNMQxN2zoM1ia6d1Hb1ty8S4Q85YY+EsecpnQCCaBYIyqeX98Z3snnvVWUOyG/1wEDUTmlr5HLyaANKnrdOVkq+A9VbljVlcvjAgvelDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742192394; c=relaxed/simple;
	bh=mnSXuwdDjWD83p3naDcHJmmMoxaafroAfKaxSldAkfk=;
	h=To:Subject:From:Message-Id:Date; b=p26uzkXGkSLr5yzZYhZow1Q65BR4yghOE7zaD4z27rwwMv0Kq7YbfNoqzZJRKun1gsxAboD3cFGFFgfqGOraJ4tg7AI3altI4fqZo+oayevlKSRqEinX+atiQdKf4J4O/luHQG2eJXmIUl0chKwQDD7rV062VYb1i5andZk2XNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wcl58pmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wcl58pmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC686C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742192393;
	bh=mnSXuwdDjWD83p3naDcHJmmMoxaafroAfKaxSldAkfk=;
	h=To:Subject:From:Date:From;
	b=Wcl58pmWJkonQc/hZHDlQF3bxHH+o399LJCRQgL7H9caMN0E28ZXhpEODokL2gzAR
	 g+7nKYKbBoabRFQinHEgdg/4tG9pyQLx+H3MmttYh2VAZ1d164fvzrPQ0LPWrqJGR7
	 vQS93Vy6Jiug9+Q6m505I2rRyXTIkNMnz6v00CdTcQfMjfYZSSOyamPafTaYw/67Ep
	 KUvOXtHF6sMTuc8R2P2AzgQmvBaM4A+8sV0vxeH5auywrUtHYg/PsEPzrykvXzhYfP
	 j/RQ7A6UuVBecjbZPKdPlEZjDqpgCQ2Pn42lqfnnW+O8MlPlkEWM1dNyzJ4N8A46v0
	 ZzIN3qZkVN+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF1C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174219239361.14517.1016684630740352099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228b37df219b000d11c32917c010a169693d6eeab0faba92e21b393477889804
Date: Mon, 17 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742192393
