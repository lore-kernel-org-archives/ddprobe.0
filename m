Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A9F3081BC
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762466394; cv=none; b=rnzjQ5LgIY0xmtyCLAD+4v7VailhCEfTBK3pTFuFYtI8bOa85xO5LnPAKRtMtVIEnCcVGJw4+K1s66+RpYt0Q3LNzWElUi9dsYzqwKLA29z+/TqtfQNeelDRuOjClCJGV5r6osC5qdKLv4MQAg2GwC6j5/kw4zMdGg9MbZ1SkjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762466394; c=relaxed/simple;
	bh=DrbI1pbzmd8zGGjfytxpKgATWkW55hrgfN7utNERwd8=;
	h=To:Subject:From:Message-Id:Date; b=gNaQrw5mOjszsU8go+GNh0J/cU9Ascj52/Ka77QZPPREpRLrN0qtvOG+wWVTlE5OMke6tbeLiCxif5mg3rYo8qQy2hExDzp+lFaPxkUp6MZqHB7Jt3XXoQC0RR3DbxngV29gRkn8rmH3Wrbvxn8pPTeUd57pn5HxfAQj76Kq/es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqsP1azH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqsP1azH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B4CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762466393;
	bh=DrbI1pbzmd8zGGjfytxpKgATWkW55hrgfN7utNERwd8=;
	h=To:Subject:From:Date:From;
	b=aqsP1azHi9JtncK+Z4/uZLXduZW9cTpJveCqudS6ld1Coh5QPiSxNiXSIdRiWR4dm
	 dm+mOW5GEOoiZwQvkN8BCap+qSK/+cc976tjpzZ9tV7KX/xSH1tGkKsAYmpF+7iuz5
	 lG3i50DtWYu3nOQzH6xRsNuYXaLV9IysljrGie8n6xZmO05+KDXPS3qJw1jJ3faUEa
	 nQrLdbEnVpatL2dzzDycWc/OYaozJDhOafYqZq2jo5OCNw0yHd6kzv5fbGwLLGJAUp
	 0HZVAnls+rgsQvOT+YmQMRezwp/sU/Slx8/GXUHX0U4pxobx6KWBp7nMqWPZ2SJVsF
	 Govod2F9vUbmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98026CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246639361.22559.15130960287679311493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26a8dba10f8ddd32cdfa9d13bc98d1e0fa8f900f84c36a6f87f933632385373
Date: Thu, 06 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762466393
