Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F9E1FECC8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736889954; cv=none; b=WFpWYSqMsd5HFLH1qr2pHOG1SGWsDdAR6Auevkbc/GwdTbiGXqj5E1qvCJ15gFsuShH1jnIFtejdc3RrjAImXBVMn7TpQ/LduVmby7OKZaDInHn49JDw9VeCjiAv47w8XHM4AtdDELFYzeiobN4u/oEajmYtCwOWjx+20+eeMSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736889954; c=relaxed/simple;
	bh=axC43pDV1YbyPnwX97MT/qLQanAv+0qJOPACP/kUrJs=;
	h=To:Subject:From:Message-Id:Date; b=OEWA2LyDWqQdU0+2ISIO2DvnCJ/nQpLmoPJ7spOTbZesxesEvXBng6F7+tmFqfm69srvkWvi6rl1fY0klpIZaZfMsJCEZpkjS5G+EsaqvhoTJdadbveuYy8HHbeRE0cOkmo36RX/Q98I+LEWekwrM4glirWf9LaumJ+E/xIhgPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtYN3FRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtYN3FRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A9FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736889953;
	bh=axC43pDV1YbyPnwX97MT/qLQanAv+0qJOPACP/kUrJs=;
	h=To:Subject:From:Date:From;
	b=gtYN3FRptgvYz5RxsAhyxIgn/Fp2TUoDSZ7JokQnML3JEHOjVmik5hvub16+gnDFa
	 m352Kz0SJwT8ge41aMb4zjmBD5HnSq0GC+qhJkDRmnBD0LUS6NlXpMFGnSlsBPvPMk
	 4ZvusNeCUuCC5SLhz3oQrfsJPFrS1fR68LLlSn6ybNEfNMeNQusAYZgVyLsWxOTQ34
	 rQAczAGHfqr4qZZ+aUHREfEGqXisqWbwd93HIOx0a+OtEw/Z7QdgTR+QvrgSyzSupi
	 1XazUxXjBUa6U8Jv89ERX4TuEeM6jTm+SprP9QHOOfB85tZMgu6LY+WftjP2FMsf+a
	 jHw8pxeMvQq8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91899E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688995358.25812.6555859399480312661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50ff8388292d32bc505fa3ca3a116d8793aa9869dc6e8c2e3217d3026da5c2a
Date: Tue, 14 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736889953
