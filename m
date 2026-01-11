Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0709450095B
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768092234; cv=none; b=saShqK87LAJL8fJ3gBfwgDyjidWCLXvz1wKKA2K9q/xuKuEtX3fZjdjt1oblVJAHpfJGzrK63NNNyYuu9PJSiGCgzvNtAhbZSfraU38cT+/4dfigUsrUeZNXfwDHJ5dXFJamibU/HI2yzWjx8Ftz+XLVzzFDbZ81bkNhnIT6iPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768092234; c=relaxed/simple;
	bh=3lvjklFz+2rOnDQomKtjz02jenJ5PIIe8elaSj+QTYM=;
	h=To:Subject:From:Message-Id:Date; b=bQpHfQ9E332d9a5QBbqmqT2hjRtlNpAh4BCnBoDnD3J2oemj1VPB/UWv9USSQ4A4CbeV4apPqpfTn0Dwn+1PDl/pdkbjUiJXzKW4/hf9cchK/nN3eymNnvilyTMzPkJ/q/UberlEDO2NpdgoTsVTIwjH17ly0R863PhwBsb3SjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BamK/FuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BamK/FuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D39C116C6
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768092233;
	bh=3lvjklFz+2rOnDQomKtjz02jenJ5PIIe8elaSj+QTYM=;
	h=To:Subject:From:Date:From;
	b=BamK/FuD7Qo92iBNxurLAne9WlH6+zb8N0oZ5La7nVLahJUWZAxskxZg+LhTzrh4H
	 zmVIrdtwEthaIgpra8D2nkcd2Jata9q2+Xjt6BMePjHM2LkUa0uFBc8ui3PAEycoF9
	 0UbVvNh0nrncCfPVZio1SOMFF/29r+pQ/m1JXEo/llIiXSfUfXabbb9k8hdPO7O/JM
	 WVF7PIXKBB8h5aA/eBwiFcI+AnC8KE7HHnoIaKXcYeVhgNG7r9sEPHjPf1bflLCqPL
	 0B7NwHcriwlzvOxfwIbBScBTmfCufTg3uVBol82AdyKSwd5OUXYLPDM82YHgAKC5lY
	 HMhfnhFzYBX/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CBD2502A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809223358.7107.2928041931690135827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004c72e495c70fbcdea53d6c7af1e58198ed3e7c0c07366683b0c985f0d062be
Date: Sun, 11 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768092233
