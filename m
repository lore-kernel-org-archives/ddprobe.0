Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB9E17E
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737872754; cv=none; b=Vcy3Ky5dlsIac9O/c6sRHfYZrFD654QobdpBfbIvnhFJnWFitp+yGxCdpYCaTFGMUfQfJD/8p9AniZgRARIcyWfrNuwr5viTTs3MEwNlUdLqnG9/LHTdEP92+SRpI4vLUzFu3N7M+8oC+iDeZ8rko5rKd4E7C2zlfjkovmzqiMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737872754; c=relaxed/simple;
	bh=J4goZLiNJ0fPyyItJaax9t5GLocZymBTh4UQnkYFoDk=;
	h=To:Subject:From:Message-Id:Date; b=mWJn+KMKavXfeBuAPGdttNJa5tNT6Yf1w6jcfv4SOXu8K4L5c+gqj6fVKrPJpUzTvcOQ6mPBb+vd964S6KSsxBFoLk1PTB5g59hq1RZavwJTHhKfibfI+iRkgp81EhoRHgJokL+2lhtbxMjXPI6TrKb6hPidsS/Z+t2jERv+H/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9L+j5qV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9L+j5qV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB7CC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737872753;
	bh=J4goZLiNJ0fPyyItJaax9t5GLocZymBTh4UQnkYFoDk=;
	h=To:Subject:From:Date:From;
	b=b9L+j5qVtWHkwvLt7gipygKyW8hWuqsg+RpssC03hNybpWA3BU/UwTKUYTPV2oIi8
	 2CqYeZEAMyfU+Gtu8vvXnrIVSVjjNYY/ibka06cZalsKHLIVp7+jhhjWUdyTHP3rcU
	 dsqttcm2GTzSfp4xv1+pSaKlkKzGl+vag8S8do10rHXLS4D39odUxwENEERI2XET1Z
	 ErF7gl1FdMVvB2F/PFkKemJrqrW1i8+05UGp/XEGhmuEqgAh/9wIvNbiAGk91JYrPd
	 /M3RajuuVt6HbGF6Dq+f3OHF4orDhzRGqhY5mXd6U6pSkqwsIpNRrHRBMZXElBTV+f
	 hBoZxSGCGvK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5AAC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787275366.6918.5861017273260741213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e299706bdaf6fb1600d3500fad5f73285e1c7f3725f625c05c8a589d7cc0290
Date: Sun, 26 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737872753
