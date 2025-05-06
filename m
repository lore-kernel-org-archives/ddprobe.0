Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359182874F7
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746495594; cv=none; b=LUzKbuJ+UErjN10S3PF0XcJu56M08RtbfBJPFwujZk2Ybc+WEPyvffKF1UOyYDGnXRjmtC3b/WM1uLtLZ6ROirCi4+Hl6KtgsRUhTFY3YBL30Cn+Avi0Hpk7n6ucFr2e5Q8O8e1gcjLCVAD8z8tnXJtrIXLqCtDaKetLsqqNC+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746495594; c=relaxed/simple;
	bh=61XqkXGIofiPoBacYge9tATl4p+1GPygllMoXqBUeyU=;
	h=To:Subject:From:Message-Id:Date; b=Y0I/I/fkTfJXjaYcLmFJMW7GdAJQbgrtG46PrjSzTlgR7Gjeq7dUSJUGDZs6NzMOh914csggGVzKUvo+G614kTrSjtMYvam7M+tqTXI5UxYZc059zSK28irebo/vwCsy6fN7isayPy35MC5FrQJL5v2W/5U1t3NotZk6/E0JNPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH5w/rhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH5w/rhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6FAC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746495593;
	bh=61XqkXGIofiPoBacYge9tATl4p+1GPygllMoXqBUeyU=;
	h=To:Subject:From:Date:From;
	b=KH5w/rhcIkZg/otABO65H72NBlP9naAIaSNg5wK/lAmLZjMWZcRAjJkhn9dMm5Xhr
	 xcAiVd2wG9JWssXPKbA3VrwbVp+UntFwSCAjFOkKqaS1RLAJzEsDKj1C9sF57fZUcC
	 kULWHPS05F0HNFGti3i58dH5ao5rrxUJJNkwzAjtSrpdtWVX79xRVjJFbytwnm4xYl
	 VNm3lO/wk00+glgLdBYgftfRsJCyFrlo9Cd9zh7x+biyvMn5pn9eKBwqRs5mI4oKKT
	 wBMCtxfGdI2ppN29tIkTfoWTpw9mlZMuypihoYzKCW/RMSkwnVjtvxfLb2bZbTa43+
	 yq0zXm1r+MJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFDAC3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649559357.19547.8165600662893518341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364fb5b6877a8363550e27c4eb26fef658f7ef25b7f6fe5d8b6b9150688f21ad
Date: Tue, 06 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746495593
