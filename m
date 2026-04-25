Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17673242D72
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777096054; cv=none; b=vESLKsIssAeUXjS1Nfb0vXJbPvkRrPuT+fRQgDckV3ppMeFTVjQPEOiF1EEefP7HivhbVQm0yUuSqj5Cn0PwEQbIzJkd9w6qK2FQLfycqPvdvvx2SJzN4CvjSmTk7FCQSuCLC+6jAAgQADgq3nzMufTQKjO31CX9GByl++Z1odI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777096054; c=relaxed/simple;
	bh=1x1O46ho3uxLY1pos4AMojPFyDlCvg2ojP0wyV+B5yM=;
	h=To:Subject:From:Message-Id:Date; b=khiKcNL7GWQRlrc4c64KJyYPJQAN2SVGoO4SWjiVImZnVSQE/f0XOrRkm6itrVIs9ZojV/fjXjp4KCBRciCwYFtAx68BThKRlRyWRip3oNBiqj9Dlpk8YRdyAY8Sdl5l7ZKCetKdDfUjKXkyWbnHtV4BSspBg9Xsg4tlPqKDQps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryLFOyqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryLFOyqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA237C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777096053;
	bh=1x1O46ho3uxLY1pos4AMojPFyDlCvg2ojP0wyV+B5yM=;
	h=To:Subject:From:Date:From;
	b=ryLFOyqEBafBgn5OtDu507jzoB62QtNbd17N0JcWVdkJ5YBvDW00LKxRPEt5MbNDQ
	 s51rHCTrk2wJpKkWh+vV7E7rS2EdiMlpqppldACM6eQCU/v2kRvY9427eSCus8PYqt
	 ReJbfnLPX0WHBaTi3PRCDVU6gpWqYwdkGtiY16HLlWZhaN5bVnlKnDFIC0OD1jCE4V
	 0Mpw1H1EGuPCMOjSsT5gdA/MIUkAozQwWiubixcBd8KdnkDqQ0uxmu1NkKXHTqabMe
	 nMUxpV5nttJaJUrmynA3UVL79bbNwKW4BVHkZmffqjMSK7NPw6pVm6aSv4dldai6zb
	 d0thXcr8/nz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA06EFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709605368.26960.7729763402011271745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f344642a90188a681e2cea45d09e18e9550720ebbd90578f463b26b29e9fea4
Date: Sat, 25 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777096053
