Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2560C38DFC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732758954; cv=none; b=VD7HI9MT0XtELIpvaBJ9VDKQeuTKtJqFfh6owLNddPbekXeV4piqwd9NNePay+H2IMUBofuFrqlMFnshh4sCqkmKcx2bx8fVeuJiGcB9OcGv4zeEPv/Jo6sOkrk8CrQFO540SJG8TYwNdA7C+uqc/cEyVVLFRN8kICeBSWz7oCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732758954; c=relaxed/simple;
	bh=5tfhuSnLt497m2WFs5VxkGpEWG/xiHVFfS+vxnRrkqo=;
	h=To:Subject:From:Message-Id:Date; b=TSfjzxwK2aURIJLFNMIe3hs6cAag3IHwloxU27HbZm7rzTDDNaggJuDYai/eOdSy4YytaE3Qm5hNx4T8OITO35deG7TQHSm1APNB4Q8LUNn7Ubrd/YfklqoHnt05hdn2JvVilzk8+SDuxAHyO8/1wvXTQseSCbuNap8IccAWCag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnwNUi8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnwNUi8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A09C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732758953;
	bh=5tfhuSnLt497m2WFs5VxkGpEWG/xiHVFfS+vxnRrkqo=;
	h=To:Subject:From:Date:From;
	b=OnwNUi8nBZJ4qRPif0e7wq2t7E1SZxktvTcNgsZMDxnNdCjsq8baLGgNW7be28Jbd
	 3U1ZvxpdUzom3xVPoLXeN02uynSfaBga3j5axbmI6XGns00hrTfGbWCQ9CQtM4P3Jt
	 TtDFTcx79T9ghS6oBEIBayyUAYEW/dhZ9pKNt76rQUML7GuoPWrGfyJeSf517l5rBw
	 OQw42CosAhx7yZN0fFVUqzIAfoqTJwyWZFIjJyeJEqpDfqeSkd9ptlocQyGEaYWmoK
	 9VMnabc010F2u7u108PkAKEa9uhdRJedZSibdxgINQwjUoq5P03DDih8IWaRbGaU3n
	 JK+IxvobKKUnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F08CD6D254
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275895364.16606.235554990760660858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4696c195e1f8e39360ec882a8febe0864fd75c3f73d15d61170cc1d23d98f20b
Date: Thu, 28 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732758953
