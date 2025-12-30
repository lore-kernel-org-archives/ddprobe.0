Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D228A55
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767071634; cv=none; b=oRhyu764G7Pb7aSB7AqPDNNlircXMAdaJY+qDbhfNsPAq9wqvZhjc4qWjetFey+XD/txgmFd8tudv6hX2koL5f9RzPaOdlzxiaZC65s0H4nqYV5Rp/7+lxeV7tFEQvZ16FdMKYJN4s54z/pxncQAIqzn63l7XPgNG0cAnprt+RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767071634; c=relaxed/simple;
	bh=SIar6G9+ZFzzNzla7bto4gx8BKhgViP853eifhLVkxE=;
	h=To:Subject:From:Message-Id:Date; b=hn1BctUBkcVTaag5NpnqVrIfFtS538hU+0Wuhh0VcMoMlrgjnOTHXbRb4XZkbdjvUqKlarw2lV6EKPA5bhvA60FiyU6ZxxlUsHEgiuQ74GWK4HXLg9BlORdk/Peqmrt3SHPYrqDpmAMZwSuaSWlPj78CdZxclUyW1qVDS8GO5cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JS9wX7FE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JS9wX7FE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A993EC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767071633;
	bh=SIar6G9+ZFzzNzla7bto4gx8BKhgViP853eifhLVkxE=;
	h=To:Subject:From:Date:From;
	b=JS9wX7FEen1VucbnrSS2cL16QobGxx9Bvu0/bsjMo8CUrdNYnLFNuotZICqawlXys
	 X4DZUGfv4dXPhc7o7jae6ZSjj+ainfe1vccPmjjS2xLT1GhxIGX1EVXUeD701oGiBO
	 a0fuzwGgrqzedEbcJjfhR92+V0uwXFYjOaCdqgNaVI6iBiaL+Z2tUH8XaXZK1/F6Mu
	 NYM+UVAkJAnlqW8DYMB85zA/hU0A9aRVyDJ5fpcOl8oi5ZBukLB6zTt81lE3irXc33
	 ceOrl0TihtGEXfqmeXWDTORi5ntVx0iZ9N3p37vSj1D6/q8IbQjVP+dNtavv5G0Y0g
	 ZrmJB7jRUrGUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318EE9410E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707163358.27298.15434314554252858193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821209324cd7e0edab654b9193cf1f8162c2c8e54fb2ba7f29376f9e0814c378
Date: Tue, 30 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767071633
