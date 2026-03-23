Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D8B3C942C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774287293; cv=none; b=Gz87UwL5orupZ3ziBtgjwAJYN47fYu4ZbqIRinf6q8HW+LKXYIwB7FCrPlY1TrdhkrfF+wSu1GaDSTiGz4R1O5zZO4X7NGvEYGsAkUe1wBjIjfYpKxYUcajDAk+JMlUA8S4t6Vm1fDXjgcUTRQkeu1CfE2uiO8Ax8YO819g4EHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774287293; c=relaxed/simple;
	bh=9Qi0n8G36V10fDHczwBthwZuU5jgZ25SzD7n5/335yk=;
	h=To:Subject:From:Message-Id:Date; b=LQEKbeUSrTFvnjRQFC6z54GtDuB6vKG7kMVaTxZdmncBPcWJUG2kCeHQtXOrZ2HvonsAQfPzsQw9dAWlQyXiF7BJ67h1k/KL3nFlmKGP1JabPpDwH7V3UN9NyfJLqbNl+3Hn5n1ycfj8D0xlMznEAVa44dulAXq/O8Ue4/XqYnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzKeV72a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzKeV72a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FB4C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774287293;
	bh=9Qi0n8G36V10fDHczwBthwZuU5jgZ25SzD7n5/335yk=;
	h=To:Subject:From:Date:From;
	b=tzKeV72avTQx92TkORpDeRZfRyFWOqGpfTxPd1LYnJHw7kY37l51rYiPOUezXsneV
	 ONN15YwReEE1+9D5M44yqNbSYWehNEjxa+72RHl+ECaZHmFSvygIim/ISha8CpK+d8
	 5txbxdG3JpF61yeDP4zebUVcC45s4Fkrqw5cYLm7XA0B515py2mjfq5RtLVDlNDxtV
	 dDWntUrO9HSZfljeqgFCUCUtbZ465DJlz4oXGZBb5689UzigMc6vDcNAaqdG/xZRgY
	 eUV1vs/mLnST5nSjidqP/fRtgDyTPXkzSFGur04muWkdo7oLnlaZ3f31d+GhNy7aGb
	 ugE7H2vwL4FZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D6F483DD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428729359.25319.10680053821218124073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bf0b9a58498e84d14f694b5576c6f9d4333bf51a21d40d3060eb5f013d1c6b
Date: Mon, 23 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774287293
