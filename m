Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D712171C2
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720419383; cv=none; b=myZ93IGG5Vk/ovqVSLSrsBvY99JhWdge4hhYVbUUZCpaF23gCq5yx4qYVZwF5mK6jl/SvypI2lq0MOmoO+oMZVqpoaIBzYIBu/0E6czLn6VkkIysHznyajmzbMjh8ESrZQbp8I/GAo8uXHZS1xA/JluxnnL31BVmvPZg9uQVBIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720419383; c=relaxed/simple;
	bh=9W1q3LU3ZcIx94hKWLx48gPUIByiR1zi6LQ+JCHLBw0=;
	h=To:Subject:From:Message-Id:Date; b=Dtvkhit8gK4NFZ7DgJ/PACKJLGG4ZvzEnK9FJoOfXm45I+Xhj/rp9v3AdIq47Co7UlmX7fJrEj3rPSGjSLJORs1HzmxsSi88Ihhgb+eFuJ5vR9RdUWspI2TuIFaSZOURip4sjgziADAU/YJkHDDqVEJZZq42PccBVD1S3HOdNJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am7MLYUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am7MLYUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6E2C32786
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720419382;
	bh=9W1q3LU3ZcIx94hKWLx48gPUIByiR1zi6LQ+JCHLBw0=;
	h=To:Subject:From:Date:From;
	b=am7MLYUPfUU9T+E7fhujCkuwLLxSKz80q7B4NGlQAoHxPbkBOZgq8tgHkiT6IeAx+
	 CqD/2weQw2J4arAK6QMKaXC3u16cEcZ7BOK2BfyFGc2dyLo/1nZTpkUst6Z0haqMPD
	 1ntZHlh+C0UALIx2UJfkqd5aXTnFRG5/yc04Jc2nFSTnM2ySTG3OkAUJy0v0aQ7LXt
	 tak2DTD/Rae2mpCA18GbVmS6wwjY786GVIZxTYVkn1z71xeJjtfUEa3kWzMtLccDF2
	 UZJw8ooxp2Wn5Xt1FNDw+L5SHsRBd+PcsR0L+ARSnR88Nf0tKBCULTYF8TJCFss6r+
	 tH5Kz8rO1ozMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB099C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041938281.23839.6288161491523019227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbc0fad36e50b5a5dd8fb2c84f05db4f9f54cda5b25b07599e674361be293a4
Date: Mon, 08 Jul 2024 06:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720419382
