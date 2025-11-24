Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E671F78E6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763967714; cv=none; b=OMZUxsxWR1GgtgAXU30O3TIFG12gFsGYoJbK39DsW2/koEMjUY0Cmyxe9Kg0Wah2xkeNB/UBvNvTz+Lqo2XGbqhTPvmXoyyaJpSrn7LnPq38Z46KOPWNQIe//uOBnGLPIHWDo4h1ZdGf5FGakCDTqQJkI9R7OnYO9X8i8Udiv80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763967714; c=relaxed/simple;
	bh=JhM08V/a5FCOzfG/lJW5Kdw7lkQUqCCXRWOaVK7nUcs=;
	h=To:Subject:From:Message-Id:Date; b=MmHK8zhuxNJi3HzcCaSVsP92jfBTEbsqjrUfrAHo5Eewi4BAPJ4DNwgnC/KmxABT/v4XitPMLs+Xu1Ap4ZfId4FQTR54fw1QXlhxVMO82dhxroi2wjWHgPiAISaCJhO1QL1EIdt2AeX8WdgWQIh5kgA75yddotDzQE+KAFm2lUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVRMRWnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVRMRWnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C63C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763967713;
	bh=JhM08V/a5FCOzfG/lJW5Kdw7lkQUqCCXRWOaVK7nUcs=;
	h=To:Subject:From:Date:From;
	b=fVRMRWntyvrISN0NZG9iifU9hIVA/bnShHhVyPT1h7NxFs/+qirtSuakenxIsx/v1
	 2ZjctqxuYZxeTSxu3o8RV659qlCbGfNJC7nHLBJqPFxkrcxOzT6Z1I4IEYnWJTRFUV
	 ySWKdB7Ern+FtEcNL5pXshZHTc0UXeym/R9FJcvx8Rg/fM45/3JKT6uRc3lMawHBF4
	 IrKBrGMtwqqsMagse1w/IEr6RMr0CF5aeBVQTgveqG7kz2EXDz4mWrEDLe00gvRkEI
	 cK0IweW59P/WmbsRqvBkVWq4rT34QdDYwfP6T/tJpClTE9EO894onBQCoEa4v2Yf11
	 ipRBXsFHX7Orw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E05CFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396771358.22805.3163224426858165519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9390fa4e16cc68b5994f2e29bab61f7702a507ca77fb62c070d7772d9d87b8
Date: Mon, 24 Nov 2025 07:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763967713
