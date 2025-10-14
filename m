Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243FB26E6F2
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760420394; cv=none; b=rAFXghi8o1YqL7eG13/Xf10Owxhf/KhjsYgkNAB+BPzZCg1viwlaPNyTcWPkr6ehfzdbsM2SlmYjo2XN/wlo2ZNEv1VJmuSJ9y40jDx640Zmubsmafy64aBwEReBQcQ17e6WVRoFI6mBhnWTNa45OjL9hGS6e+vzddPjRlAGuJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760420394; c=relaxed/simple;
	bh=M4N68gb38ea/15MH3/kGEF3ac7fIPJ5xzMimfCv9f1E=;
	h=To:Subject:From:Message-Id:Date; b=aD9iMIDSgUUZP4xmWd5+KY51D7Nez5ToWevIsiPF5I8C+igsmSYO4SutG/Cam59Ol40yeofQbDYxiS4skuBRSDY3F9ATYqRZRaTHXDobawTOwOmIPnHqbMgc7KqCzTzDvWwxIz0eSJgYp40OCFEDMdHmFgM20WPvf0be5Nbxsws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZ57Ei1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZ57Ei1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A478DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760420393;
	bh=M4N68gb38ea/15MH3/kGEF3ac7fIPJ5xzMimfCv9f1E=;
	h=To:Subject:From:Date:From;
	b=NZ57Ei1lOeCPF4doRwJeig3koxCVV5aS83OSNU7DDR8sN/KVZmQ5W9Cg21f3REOW7
	 VqdW7At0nxZEN8LcMgMN+vhtLx/m2I56QLAQKCoJdk+j5djWYGpcrz+xAWPjNYywlN
	 UwCurig5JMGc+OE77i/ohVN4JJsAAFni8Dv7SXDOkpLBOZY4ribwGE/V/9e+xmpKup
	 ZNFfbcCMcoLNHzFMFPCQTPHE9GOPmsOZLGE8+6vdrk0s9cq518PzL0k6SQaLyNgGEY
	 V6B0EGuXgDjKqM8KAzZIrFvDSsTjcl2W7RVQL4cymoGT1wFhvZrgvceHEG5LG0Wg3J
	 7gBF/l/3rvgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C3FCCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042039358.16954.16091580327719399365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d293b3c30f4b4336433262d97bb032ced0ebe91c66a08841ad7169b8b0b7fe
Date: Tue, 14 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760420393
