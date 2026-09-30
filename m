Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584633F327A
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790752234; cv=none; b=DFR4uNtCNIN9CkCJ7bBj8jjxsrGep4gtP6pEsBjdT7AiQAXyxWgqgb7NX3w5bEEMP8mw0i3z+OHe7tUWRD+8Jx4MOkFqNm7f4FiiqfUBR+9d0SRiLfFJY6viYu+xeh2Hn1xhcuelEcFj2SP1VxJ8Gs/4j2OWkxuhwjLZ0LcF5HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790752234; c=relaxed/simple;
	bh=ZqryxHk+bfuhjTwklccOBfNMnqz3TAkxbAdVmotnr0I=;
	h=To:Subject:From:Message-Id:Date; b=pypbWnDPPNVG5ZNZu/VM5UVNNC7qEvlzBVlRyii7vHHZDBM0svZuE370xE+qiE/ky7EwTlTAfDMHBLwslWQraeB4MtCFeY+cusb14QIH7FfPEdAoS2tAq1m3IeutlLDMYEsn4UxXIvxTNlkJpyKvhMAGlF+kSJJ32O0+h/DDE8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiSPMYMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiSPMYMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBDAC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790752233;
	bh=ZqryxHk+bfuhjTwklccOBfNMnqz3TAkxbAdVmotnr0I=;
	h=To:Subject:From:Date:From;
	b=HiSPMYMYFNPjhPs0qYXAQ6N2GKT/wbgRQizeXneV5y5ai2kUNYh8AUVPCejvBuHuZ
	 4yvI62TyUJeCoHHYby5t588pZGOwA7aomcFK2RV+p9/9oSR7I6tkl4VUBXmjF+tI/5
	 cjm6xDdK79wSVYON7K4Bb/EvLko3ves8pBSJKityR8OcE9/zdsgtWHwltlJ/XYyBtU
	 70BtB55UAWdRNsRGDOZ4J9pbYve//CHF/grKC8s2zg8iXdbmLg6mrKwTCueFx+qvnG
	 WTD1RPD5s52TUbhVnKplIRDjN6J/DodWWlhusc+kqF6YAN9BHwnoXuxqOEiJA3EAFq
	 N6TBa5+7nhi5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF4CCA5FBB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075223370.4148.16504767166346415202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7222e44e7b3e7b607968ea880f9b3bb95b9ffb39f57c851d228bce434eb0ad36
Date: Wed, 30 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790752233
