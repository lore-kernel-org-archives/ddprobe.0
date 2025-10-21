Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D9723BD01
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761020994; cv=none; b=Rkce6RrpSMi3t3bF+r42i7A1vUQeDZVz+a8Zw1P/C9vYWkS8srml5ZkYvxN8GxJ/EECGHucNjUchcsCtupB8+u7P9WS4Y8nMAnZknLTV7AJPQNT08HhDQ10NQJqy3Bnjgdl2NkC1xml/j0dewz2gZyUbnU+08cRqjSQ/jbT2/5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761020994; c=relaxed/simple;
	bh=Z75gFr000Ed1BVOneivgo1/hypD+xLmrpkdQirAC1Vg=;
	h=To:Subject:From:Message-Id:Date; b=q1Dl+qKLvzcj7dwVw6GrFYb90ZioxuLmW+klZ4knBvFq0DonIvHLKGTFpt3AzOqgf7cIP3zNhDyKMTYztXtHmmpLuVd+7ZzUgDmK3o1m89c228qQ4Fevx+O0wTjdqa9/lauLRK7XRvgszXhtf9CO74xaQCWai13seVUaXGvtch0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHPSVDI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHPSVDI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E19C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761020993;
	bh=Z75gFr000Ed1BVOneivgo1/hypD+xLmrpkdQirAC1Vg=;
	h=To:Subject:From:Date:From;
	b=PHPSVDI1z3SfW9ZB4GBvuCqeOlsQxgLqcJZpbrbu0xGdSucX4gSBlOttnjXk9ZCvG
	 eXevPdw3wCZBdMmm1RiCEDcpW2x/6njvNkDsoM0JibsKmfwUi7wZrg7+NmQ3Bqr6tE
	 MGlCdxxXt2/NiFql/cmGpQObUyKrldKVWcLKgvTcpqqJUMSK2YlpN1FDy6NX78nIUx
	 CcRil3jcOtzq0NEFzn4bzI1gmF94SEf90cqKAfMrHWleFaFl0UJT50PUzxZ7Tk4B9T
	 dPoZmn1HmMVHcwIxPxkRSx28HlWJyr65DqK9KsaF4r8+AV9y++CIpAqP/QZ1N9ATwL
	 SZX3cYOCkJLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E6FCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102099360.19147.9232566799894299292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb828ca2554061b07808f734dfbcf3f8f3a04450462aa05c16c9ff0acc9ee76
Date: Tue, 21 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761020993
