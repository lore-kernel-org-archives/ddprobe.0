Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3942145027
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742504395; cv=none; b=J7FmfIGGQ3fNFPalEp1FPgWJHXSRG63KEyElhZCaGu4S9sybknkt5bQqlOOq2ul2REXRn2m3UnLnhB5jZM0B1Tp0nkRYzDi6BNLMP28gFbN/pcyv3VT/mmukq0UcZZiHXf5kqHSWvuSNq5PH5W/CAnXmdX02WdqSrWcL6hcG6GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742504395; c=relaxed/simple;
	bh=a4C/agZEFpG5UbmcW+JKvO9rD/Q/M2QPH14Ab8e8uOU=;
	h=To:Subject:From:Message-Id:Date; b=l55o24SXBTIWaKxvYw9Trogl6fonmUFIJe1nIFL4klnNfct4/hKJxHO/jaJTg5v5Ahrjq2/MFxdP+0Utj7fGCQhHs/N+sHFIfiFOe5vNZGtUVWste+sSpHsf/gQxREwClhgC+Laxq4iARXORY/9Q/WqsN3k6Mx3rEBn3gp2TVko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU5q8Icg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU5q8Icg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABADCC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742504393;
	bh=a4C/agZEFpG5UbmcW+JKvO9rD/Q/M2QPH14Ab8e8uOU=;
	h=To:Subject:From:Date:From;
	b=NU5q8IcgfVyUOJ5dHfYLpzhrNbLfFZ7rbht9gz/rzlgavaWYFER7ZjIIivDZT01/V
	 tJuGjzFU89iJ8tC7LRuH66ODDua8E+wcK9mjq1U8lFwHepZ7NHC7O7WX8MpoqqJt0R
	 N9u5k8oB8BI4Xe6hVedrtoNZVdWQbnq1E5DtjE7q1ylb/k1TxF4IOG4DksW6BOj+B9
	 evx6Asf6bKvD6lcpNgIpujEsQgulpv4ttXtCtRDAnV11hSzqjDYkdjw8hFIPIFvxL6
	 b5rNsQAO7J9pIAt13cfRCC5HXv0joj/qRf3/vf/QMDKlEwYMVxA8w54iPs100gbgb5
	 knGNkaXHAJ9xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977E7C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250439358.32596.15324449361278263163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1e9d1acd0398e936ca78d3fc87256185a2c6d238a2c413ab40bd3dddfe5923
Date: Thu, 20 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742504393
