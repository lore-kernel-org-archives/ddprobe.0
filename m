Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32300308F3D
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758537594; cv=none; b=MWuYYGOrQrOwfQ6uu2isR3zwASO/KtmYvo1SHIE97LswELwUP9Hsm0iVVWKXmtsBvsZey3GJ70FtbN6xooNFr4C+V+9CzM45iSCmJXjiuKsCUu6KLQHPuXgQn75241UK2JCdvh7T3s4UaEc9bchjIKv+ztP3f6rzzG4ZTZWGWgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758537594; c=relaxed/simple;
	bh=lr1bsqfOLQUSaPZy4OjeMmD0MC+1iMrXjO6kadhS9Xo=;
	h=To:Subject:From:Message-Id:Date; b=GNBy50CmRVKLWjAEuaGdCkx8CkQOuUVBmD/xeCEsaVlySkRCjTlHi1IXwkK16/RA8VDaASTzfLXCS/QoZTNLMrJHxpNl0Iw1Y4CvbHO6baohGYyD9dTk5HTHtaIuT35VnsaLMq5qEPmFXqm8B9dp0Np/NQFC8U5pLzltsumqZdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHm8OIz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHm8OIz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60D5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758537593;
	bh=lr1bsqfOLQUSaPZy4OjeMmD0MC+1iMrXjO6kadhS9Xo=;
	h=To:Subject:From:Date:From;
	b=eHm8OIz6zbsV/+sm3kaw+NNqfjKgGXPCT19l89O3hTUN/+k17uhT+StaCDtoOttCG
	 D/aJXJ8L5xsoggWw1H7zw5fmwsoBwwLMddb6Fm0KNFWMuyuBjgZMsgejKVDmdnSVOs
	 wiwSyVt6WPhUVakzioLG5vxcxYBrjQuI2y7KBd4kBzoCduNhtfJgJqyX0jN+ns0Cn0
	 fuuwJnk9VUcBRxBHACMVXlZo5wsyxUtKz956Tooyw+WjfGzIa7ZR6sCbwROsrQI54z
	 STwfz7UwanPcCHEDz020tSQj/JnF47+mh3sIKEgwTYJewVAacePeyz7KJXWmNbSPLD
	 PJOuPf1+6vkbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A0DCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853759365.21482.11254534766354206917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9b11839d0d44d0d60a29705671889cc6194bcb41a894f2273e962c92f822ab
Date: Mon, 22 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758537593
