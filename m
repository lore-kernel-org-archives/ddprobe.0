Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2958E22F772
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760806194; cv=none; b=fCaUo8ai6K60Nf6cc7YCwoBzkFFNnH2uEdJ/Au1h/XLAncaBShFNwnGPgqWibF0ls1bgpbYkt0DiqvR6gOJB7PEr/IBQmAL/X6TOWYrhVJkb0XLC4r0BnS6XGN6/xU7pGREa/gO2KZUwyWsqW3E+cvzOhOCgJl0caGTGmO9RIx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760806194; c=relaxed/simple;
	bh=2qiYkfFMO1oRKrGIsEBxTCGzEya9DXpeQwRYbdnMuxg=;
	h=To:Subject:From:Message-Id:Date; b=KJ40xQGjVBi0tHL8ujqhLGXCzdlEp6Q95xOE5t8z4LlQmo6GVJiWgG50kPaeoBqcoIDKHeCaKMO+i6qFdJOfj1vtkL1VFNxZlI+2FWuOS6eQUPVL1D2bqb3KVNI7t4uu27nxE98ik2Wgym0muceLjj7l5D8I55243GvwWr/xFkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfMOwcZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfMOwcZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A900AC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760806193;
	bh=2qiYkfFMO1oRKrGIsEBxTCGzEya9DXpeQwRYbdnMuxg=;
	h=To:Subject:From:Date:From;
	b=YfMOwcZNx7am1MUqdcIJSjmwvd9MYnDyfB024PPswNZ1NEZfbbffYoxemVvqhfNg+
	 UmI7pxxQa0iEA9DGHomhvw3/NQOuogAmdUl0YUAwWUoCAdz0hT3R7aFs8Z7RjJnNmY
	 jXlxT4gSqqQQYdnqhr2ahb+N3lWZw9rL9zCKdCMKBs1vm6ksG9eNt3IMvTm1m7WHZq
	 6u384hDst0oU/eCAH64deXg7giKLeCac+Thvm2ysG6a6wEXIMXd52UhldE/5ZYrjVW
	 bA363aoO1nKsqB0GjBGmmCUzsCKIfPU2Gyr6CPG7KRqhrA4bzQPCEtk4gt87rPOZs2
	 hRa7pP/5kfC8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95900CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080619357.20864.14713924320601913849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99604d800ca840fe9a043205f1609621628dd6d49430ff5dfc0379d636a2586a
Date: Sat, 18 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760806193
