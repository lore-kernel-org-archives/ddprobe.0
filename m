Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D123D66
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738443354; cv=none; b=NOvORf75oXrOM9aktBtnvI+KLXvUP3s0po05+OCt0UypVCmFt4NmkK9YYU8XTo1IW6UlxcXRGcvTI4kPYzzE1rS1LahNSBEpEuGfRuUi0MZupkoprQzzW0G82cNWg/GZCadpQZPnoPEoirjG9UtgSb7X7pDQUSkF0/9LkQ9kJ80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738443354; c=relaxed/simple;
	bh=i7j5iCSxWh9CcxXyhxGecG33LLgVsXDFn8ZfgoBeTCk=;
	h=To:Subject:From:Message-Id:Date; b=s3iRGlkwXo3sy6rBWeVMmhMx9wJMshfFJm2hjlwqVO/Wts9H8p+MYpxm818Xma6uHiUOH2+tbttiTLPX6fAjQ3cGHnhION0W/wcsrIr3tvS58EnNFqsgYv1lKelF//tQEFV17amToYo1HSUU3gCbAyiVdJ/5BUNOA78PhiBq8zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i78zPZxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i78zPZxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B155EC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738443353;
	bh=i7j5iCSxWh9CcxXyhxGecG33LLgVsXDFn8ZfgoBeTCk=;
	h=To:Subject:From:Date:From;
	b=i78zPZxPi5PTW03GjiFov1CgcJndgncm3uz4X5RK7r6Tkq1rUAiS1Qm45j7CyO+CP
	 NfVti3JQDtPUbagwJbvq8INFz7o2QGM3aF271n/kt5kNR67wKJ7rZ/7KAEcWY2efbZ
	 Ay04/HqvP4YLxCDE/Q4P+cdCikOJDV0Sb5UtGPfupYOtGa32fNqDpPDSLrV3cqvxd8
	 6DRKqk5UMWcfAQmd0zmEkC4FMHNFbjLeKkazlz5BsFX8kOeimW9rM56KpWJ2CBrBB1
	 FYYCczfqhMR/Sua7OwhbYL2Y5jBkt9qbgP+1l0Xel+2wzoyQoLiODU5ZKMGXqr5S0H
	 UwFp5/mvh7wGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A23CC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844335360.4994.4512007318329770799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b2156693b5310ec27c117d147ea220ed685479b1108f726e18e5c24ec107a7
Date: Sat, 01 Feb 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738443353
