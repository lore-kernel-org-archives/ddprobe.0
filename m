Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA8D28725B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765541574; cv=none; b=W8uS58yjXxk2uproyf8CC58hCWIcERBK134JfRMttxFhXhqqL48t6J42pndJqiv8HwxmM5bOK8xrRCqJSg34HVhMeQKSxtQCZ37GwDPhl3Bc+t48aErqoJuPGxSKSTubrmcp8O6mLM3eCCUixNLHgiCROniIrYFoPJxoiBQdbQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765541574; c=relaxed/simple;
	bh=NROCq4fUBthdQFYNfM0sTpF/Gdpm1djvcSukEpPCros=;
	h=To:Subject:From:Message-Id:Date; b=h38xBOPJ+ztgVNfn6HPpbcx705hQardKGvd//00qjJBcIAOWn/ZnA5dVZJjIj5bUAsN4LmRWHUafOHTbL6V8HL27FmSgd1KAoPFoE6qIJ1V5JNNyTYjQ2SKLypd3wRR8sHtcXGhwF4fhYboli+rBEuPZfdP9Eh0QQ0zKX2s70kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNyNCAWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNyNCAWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DEAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765541573;
	bh=NROCq4fUBthdQFYNfM0sTpF/Gdpm1djvcSukEpPCros=;
	h=To:Subject:From:Date:From;
	b=mNyNCAWjHypWVY06UZKJ2f8Tk+9W+4xYLm1B9qGt9w5j8T96JhkSkYwj/aeqilbmJ
	 rcUCFSQBvt1qhQ9pbILhEsGBbM7zS/muBpJHzBj8LyjltomkfvADAVSoWIPCsoxiK4
	 d07qN7AHvV0iuraTHFeGLt99wQfYBAHmdVD+IrhpihcZ4NiYiJR56XcWZjznS8JHVi
	 KWYlm1HBwz3VNiYhOTHHTs+4zfaRgpEOAq/xgke6dJo1WX44jVcnV8eiKmwxG4CvV1
	 qjxorJc2/ZP8P1Juw1cahopjZ1kQwtUnJ4Z5XYpGHG6dd2UT4We2n/3UlF9bdb8GUM
	 La4+8qpc23EGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91790D49218
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554157358.5290.560390106141715295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2895066665e5bd6274627bfbf80e947d708d6d76b8d3620ba46026675e090223
Date: Fri, 12 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765541573
