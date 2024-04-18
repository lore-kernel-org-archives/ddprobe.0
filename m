Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EDB17556A
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 19:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713470363; cv=none; b=IRdEAMU+4Rt4Tqq3T2peaDrPGFHS8lgXFNwd2K0NOuyM5dA/KdVxxZlirM46CzR/AUfBvo9PFrCpUAjPObFdauzl6KozcW5xcwpSCefnU4lJftmdU065sjWIdsjRw2oCFuGQp7NQiz2QNbgMDApI0I/RTiC0XCdMIDogtJWppA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713470363; c=relaxed/simple;
	bh=cYDk0Mmm7L5vjFwF/XJU5fnOqZydKiF/9hFBRzDD6tw=;
	h=To:Subject:From:Message-Id:Date; b=CmfVUVea5peOKyS7eKfs4kp7xdMzjnkzI/fVZF2+kQ6wjU+kgNMBE+dtQde0TS/oA2kuNTfEWq+7BYouwwAqQ4s0MGcDPJqUWjYBuXu/vs01nsg4EfZSC4a/P1EQoCZ2EiNtlk2Y74oY0hnRdfLeK9dTK+B1f6X+Msl3d9DPkiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eY+6HYhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eY+6HYhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BACC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 19:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713470362;
	bh=cYDk0Mmm7L5vjFwF/XJU5fnOqZydKiF/9hFBRzDD6tw=;
	h=To:Subject:From:Date:From;
	b=eY+6HYhMMqQkMgtYOWY4YrtPrOu1XfAWnrwNmGsnVK2Mt//Y2zrtc9sSsX2tvTgnG
	 z4/CEoPeqapDQAogpOOofs/4/Q05tiuL2U0ueBK7VdrBjnRdsyd+1aKcCmRvfknJ7i
	 iWfPAnB9Jwvs2RmCgmVScsYSXRNsJ3AzSiY0azBuej2YUdValUeoKU1pMDmQps5nQi
	 gTwNkLrwDOKqe9bGPmbhf9nNLMc4VO++DVGfrK+Yi0Vp9Vy5Yjj0Mb9dGo8aUiL5iS
	 5XDvopTZSXUJaqn5oJ17ebbFQPmTrOX19uXqkumN4uGZIG2YbqmUQNcn0cB68jEJn1
	 46oHRi+562L4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD41C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 19:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171347036276.25376.17325849350336117606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bc165daaf2ad2ff234cb041d39da65872ba3fe9e7af62f84979fd860c3b42e
Date: Thu, 18 Apr 2024 19:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713470362
