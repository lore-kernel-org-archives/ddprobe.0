Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2774728E610
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753226394; cv=none; b=oPTwlJH2trmiERDgvFbjDpc56rB1iTSkKmcm7o0xjtZDhPt9o392qIp32JD5wdIvCuOXgEiVeOdYLc5wRkUQKT1wBjf2Thi75oaA/iJyw04Inq/WrbwEKf1LtEg3z7t+j3LEKaeFqY8kedQ5kAMaiaBVuIQfdAyMD8f2mY3mDxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753226394; c=relaxed/simple;
	bh=J4Y4Wv+doaQtH+czjWOzhxtKsK4pkCIMhZWA+PlayMI=;
	h=To:Subject:From:Message-Id:Date; b=YJcukuqBxyIOx1jQin8Sbq2rjjcS1TQGqUKALoZVO2h/DYJgUUn0OPb2oCbZJGs3xhJGZLdvya5VeCxCgbHXDyvy/Fbu959Fe40e9ldvTDcCoxT9Y0PSeCQ+RVcJR63fgAzK2VDAWPBYzweMfl8nuPQMfE6rO3YO7PwzmUvBUe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7R1YnFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7R1YnFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6438C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753226393;
	bh=J4Y4Wv+doaQtH+czjWOzhxtKsK4pkCIMhZWA+PlayMI=;
	h=To:Subject:From:Date:From;
	b=r7R1YnFjDOkVEKYDeohCSbZH8Lls/Ly6scyr7/1yt/Ayehpq1How3SJeOJQxo4SA/
	 8qfO3H1G3hq/KlrpOgjkO9zJJqr+5Wd5H9WlO2UIGl0QcstKLAW9NMyaTXl6bMnnYB
	 JDqZJ6gfjQpQqh5DclXjAYnUE3r07KsHEHmTNPsxXPfVvmZerZYLGJ+IZQulnnHWXZ
	 2hVTRVQK3h4Qqjx57c6Hd5yTGzrje7LV8Ai8I1Wij6y6U1ndZCXMdTkd3GrQokru5F
	 oHhzh6Gsgi2fOtkDz+xov3Ngj4S55zaeZdg7Y4CAncuy76oouR0xag8uQYIdU2bXf0
	 q4gbnsfi4SsWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6EC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322639359.8321.9835315298813723173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302da7f094b2c4fc4c34d9e226060f7b807a5a0b56269b0dfff0356a435a54e2
Date: Tue, 22 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753226393
