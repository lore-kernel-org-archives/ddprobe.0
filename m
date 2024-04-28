Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54691EEC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714330343; cv=none; b=czjYF3qXPmID0387a6GeTWfaS2oPDiWbd69wsNicANLo/bEPQpuji3q1KGFGkxa/2q6eVCKwT6gM3njapaLa4egV8bURJ4rIEwfWCDSB9Bz/Ivz+TLc83y6q1k9bt4i5htIDczs77ALubZ+jWVvNOh5bJzrQTqWkYOwjHA6Sgsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714330343; c=relaxed/simple;
	bh=QaJqPoGw6MFK/3evT2z3WpBJd6QeoRaHTRw3t2zrayc=;
	h=To:Subject:From:Message-Id:Date; b=LLGp7cykYqp238eToG4l4nbK2XnNh48y3Tj9d+/31v6OAZlNRYk+k0AdBwE+zr0FZm5YFI1qk75frL8bR2X4/dp2ncHQeNixWZTOTudIywO6BSFSW4f6toV2QHXr7gUkAFKVeIOWsXcIL8jTnU3HuUqEV/9Y3fq0yvRnsuPtnGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jf1q2Zww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jf1q2Zww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EA2C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714330342;
	bh=QaJqPoGw6MFK/3evT2z3WpBJd6QeoRaHTRw3t2zrayc=;
	h=To:Subject:From:Date:From;
	b=Jf1q2Zww5t5GaDGPIylaVIN8uyEWfOJ19wgSCydwHt85MaWF6L2eXWjiv7oXkchk5
	 gc2oZzCcfXWW8fygqM3Oy7l2sG2OdcBbqqdn5ay4Xp+j5ZWeMH1ezF4VU70c+C8dDH
	 ma4uPkYh8mMDL19Ktd3knpDoQMwtFfnUcGXiCcjg4tbG/6slgQxRL1htkvpdbrjJPe
	 aWAh021bdts8zeilursRZGi5X0KfYWCJidoJc1VJapXzZDiTi0m94hKMVZht2Ivrfj
	 Qkk0DtAfOBsXxqAJ+z0PdIPWU+xUAiT872bSslT/I6NZlw/PESSNJcqokoUbrhirNz
	 fqN9+18WAhLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC60DC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433034276.12043.16656270890791582547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f79925087a22410999de0d186e47e7ae98985e80df1d289c9e9433c610052b1
Date: Sun, 28 Apr 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714330342
