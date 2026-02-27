Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEAA217648
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772152494; cv=none; b=f/vJz8MRYbZEH5NUSanLSSk8ANSFX0YzSHM4oeVP4m+xXWHGWE3qk/iYyd3Dd+q4HzuxiA8QdkCzJ744FtZ70hAo6vqL+bPf21DWtnWNzLFQUxWf2T/y7ECFXLHCi3CwcAKbxBLVdb2vKbxiE82LrQuu06hUsamaAnj+/vDuUZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772152494; c=relaxed/simple;
	bh=nqrs5GchpWYnSnpNiJGm0xwS+lNxBxBAq9FNA/sT5ow=;
	h=To:Subject:From:Message-Id:Date; b=VUf8uH0KyM6V+du70HMNCCmbjCsOi7SmPow6aEVk7qNDhVAFyVvbtBMQHQwU6ftgsb97P/Hl/G+1Z4r4zczObjdD+KGMQfeb7QdF5DEUwQCUnwLs8IkmE+J1bd0XQ6J1RTW6QgJxmyD2S8qCIBsuSczW2xsqkNchAiXKngVrba8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS58m4Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS58m4Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8118C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772152493;
	bh=nqrs5GchpWYnSnpNiJGm0xwS+lNxBxBAq9FNA/sT5ow=;
	h=To:Subject:From:Date:From;
	b=jS58m4XjlIZwWmbUb2CMsN0ZhQwXutFhFeAFWbPCAcJpuFaXrEa89Ph8nE2wpKPkh
	 AlwpIvF0RWZPe/u+IVSqxxiMjQUDe6gRnQXFcU0Kx7XmwA05/THx7W7EjrOmRuVv40
	 vraKmFlpqyBMm4z987GK7UIynG9SKP9eGjnou03Cqv3Q+z32RMdtZ1hXbFgVkO6YdW
	 A5O6lmq7WafBL2Ud1OAvQWI2z7idWPjrgWQFkK1JvOK5dk/FR1s5a56PLhmzFUg4Au
	 b5LexYH9VzVxuTFF67VtMh7poqguScBOeQ7aUTBOrnTE8Ah9tLORYUuWw+hsLxrJS1
	 nuDWG3RLXs/yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9837FFD9E2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215249358.19099.10134798841474503383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1cd9ec1c03871364fe50ae835a880ba1d39acdc4fc292715c058d8c847eecb
Date: Fri, 27 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772152493
