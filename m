Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BD423243A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736862354; cv=none; b=vBKe0l+lNCRFiyOlEwz/N+K8jKieoo/ih6hmfXEQRV0ebsa8D2Vicd48bXAswB14d/4p8xlxVNfKipzORXMkPXjIivrWENqTuHDxiE2QbFW3DflCAa4GvkYu8XsT7IZqfLU/95+VtRj/4uzaeKI//MIUIj/ZXhmcI18T8XRuho4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736862354; c=relaxed/simple;
	bh=2v5tUMZDJRVmP6QNhk8fgCeqHxs0cIdLdH3kF2iuEqI=;
	h=To:Subject:From:Message-Id:Date; b=IS2+WVrUM4MFkFmHvhhMksd/iMDNcqqiN0TXKJUm21iZ7d6JzNXzHmAa8rdKorwAvaKKjT92uOnzGHTEawZDM3xPZBKhtTDODd8+jWQzDo/PH2csE4/QnwR4af2LJxaI2rHRJbciFx6rqkiQnrb4BOo18wg1/TgNHeJKqBs9jVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1xdmC/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1xdmC/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBA7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736862353;
	bh=2v5tUMZDJRVmP6QNhk8fgCeqHxs0cIdLdH3kF2iuEqI=;
	h=To:Subject:From:Date:From;
	b=E1xdmC/tca82rxVMzCWjn4cj6HmvVDfFIuip6p72lk10TNP11n/7UU4ojOJzPP47P
	 drlc9ASUvSq14ZO1puy4AV/BcG1fzdYR96Vb7O+WwuBmEOuSGEhAyl42rOfTLFag5i
	 mvDYt7I663vbATDJ1LTGOCGGA5jarf1blSF8sc3mUxTQ09RyGWSPdbcK8/eYlZmkEv
	 7T5MWDarr/6vUdkg5dEMtEFP0wjXQLOQjzXfhWDnbPthqQLm+0qsXopWqtRlfJEKxU
	 cyk4Li35heJmp60JP5SYngZhfipzvolhzTxPfUF8vLvMLpIOWYzAq2BYrmmcmejyzE
	 c5IzeIVMFSbCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB0BC02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686235362.1844.1852168355797337615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d779e8dc6a3b508e51a5f6c2c06df2a2df2bfbce32c32f7f5952dc6f067498
Date: Tue, 14 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736862353
