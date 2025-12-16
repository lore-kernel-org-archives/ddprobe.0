Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172E533DEC2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765911234; cv=none; b=lsDDtW5iCJM/JsffyW/CO1guO/0Vy3cXMNwxKtepNzsGGe7KNwP6kC2pn7vD5nJFLAFjSgLOP3+9tByh78+eav6kmd6LWNdCwmBVwgxHUhH/QED4QlRpo++fOqWF+tZu2Xo0Z5IArNAzymGw3wSFrIeVh6OWoA6YTRagjIe85sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765911234; c=relaxed/simple;
	bh=itIXxhMFbd6CpE3NTiSfda740o/PhuCxyR6YrmJlwjA=;
	h=To:Subject:From:Message-Id:Date; b=U0WFsVl6XYiYhzvgnCaezVAJCSz9w+vzqHr2KKaTxkeKcJMnasFxBRcFyDiwHwJq7tbsVuDILX8dR37PfGFdZhOXWd5exEpcBoJEqPrdRLUtiudYody8Lmn9G9tHWc12v2FCeJZgXm1hTUkNemEZ/WGezfY5kC2W4hcNhBnyB0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxlINFnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxlINFnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3728C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765911233;
	bh=itIXxhMFbd6CpE3NTiSfda740o/PhuCxyR6YrmJlwjA=;
	h=To:Subject:From:Date:From;
	b=HxlINFnZqna5/m5C1akhRq5ahc862KVX2hxyZx8nzdcfSbnjlnOBe6Pu/6GwH4TS2
	 IaavLW7lcm2D76aOt3QW7ovm8czEWDK9XAZGC3XFYy69CHRAUPe6CXlma+zs9Lbw7i
	 lBHi3Bou1rK7Ms5Ea2PD16LWEUTYvY1IPgYsqiLu3BaLYSSqWOsYzmaoMyK6Y4JxCX
	 +OdiVwCX9+gJbvId0ND67X6rCWoY8aCMD7bfbkhH2YXjnyzpIySFIIvtORsGucKcsY
	 cm8TANfMopvXfpq2NMY6MUMmGrjSxR8CxmGvuktI1wbAKdnScVBGeqcwZh22eMGqP2
	 /QIPDducFMmQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93095D5E13D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591123359.4238.5641205812604133948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2b97bc50c796e5db0f1bb7bee831184c2df4e5aaa4a78129be7024fdf5aba4
Date: Tue, 16 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765911233
