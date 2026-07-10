Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD98257824
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783696714; cv=none; b=Hrp6RXMbk/0nG8woUF+Uyx3JA8EElyOeD9xEQ9WzZlVN4BHrInsnlS12cP2ZZdTyGuYjwNoGqgxKoilNtl0DXaMnbsKFSfzylrLREAbpDqOtwrwDcVmGh0i7g0X+uQdGKd5nRanhEObXure6Tc2nr8G01bLoYrXYGX/vv4kJANU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783696714; c=relaxed/simple;
	bh=CVfil4kTaHmIhvOLAD1Z56R6B7ldGiWSPrWEhIFm0Mg=;
	h=To:Subject:From:Message-Id:Date; b=c2u9AHyVOrlHGNXNRNTs/SepkDNQ/Qf99aTNsxM8HWbEYXfrm3Nwyi2IRgVaozQRozwps+IAfde93AKMXiEDFSUi97ScKQzVbEjPQu4XOqcSwoPeZw+LFFfhcKq/dxS6mqWrJw+jLbOZ8QSATphzUD5ZIsbnomMh1uhJiXNrDKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umWkk7CL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umWkk7CL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA48FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783696713;
	bh=CVfil4kTaHmIhvOLAD1Z56R6B7ldGiWSPrWEhIFm0Mg=;
	h=To:Subject:From:Date:From;
	b=umWkk7CLOAGFVpw/EXhp1szh++lNq/XIJ2z/Qhk/12MdxwYPRB45t68bsbB3E2KlW
	 xT4GQou9Qzq9w9Ok06Mm+cRvJ/xat76+pokyu5XmXSx6Pa3yOh5EBosNmZQ8v1Vu9R
	 FzXg4XYWhUeA27/Q58C+ROFzvCW+UMszpR52NaJdnTVsEoeS3PUxMOtYYEQdYand+N
	 umg6binRdS8DZzzDCdZqYaHynPqyyZPrA01jGP9esY0dnn/I0bpOXSlGpJ4YAdF8rN
	 eamWwq+Iwd85aGYGMdyBx8RlcaseYiEuiXYEOp+8qmNEHnmVOsVMsY7aPsgPxjs61V
	 ShNd0q3IrkLnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B77C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369671368.6946.12018708883997530990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b530deda1707b3c4cabc9d4492e8ce9aa89d395b439e2544f480972ab19224c5
Date: Fri, 10 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783696713
