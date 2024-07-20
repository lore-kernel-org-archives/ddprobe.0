Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F98B39850
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721505354; cv=none; b=J9alnYKDfJeQdp8t29YofKWSa1PsR6Mp5BXYQUSQ2i+SVkXCEk6FbgKF2ZlX7/5HrN7TMefZHTJJkFGgIW2E8nfm+krQcxn77sH/FElGAwoYmM/99KTL1VJaRcHN63KJiQsyE2cZV1+tMyIeI4NzLpQKiDf/NfQjLRkdhx+usiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721505354; c=relaxed/simple;
	bh=xsGfS772J6HKNRb0O5cdYwNXWNMgPztWzg5Dbg+vf+I=;
	h=To:Subject:From:Message-Id:Date; b=lE8R+bdGKJXOvf8GqU1CofBDHtJFzzptqUO1IIOzPIAH1aCU6HM07sNkVg9txv016qs6YtkPzMPNXtRojr+pqSp97PFCC6KYwo046DzQPMRm9BSYMJaElkQSUdEzDzOZTYGWJv2qh4ZLmEZFTM6tUwS9y2wyeiUQZVwYVmALd9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTya0mR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTya0mR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36E2C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721505353;
	bh=xsGfS772J6HKNRb0O5cdYwNXWNMgPztWzg5Dbg+vf+I=;
	h=To:Subject:From:Date:From;
	b=eTya0mR4FYZU0ZlmInLqKfzy0xHfnGj05yjAZHY7du3X+J+hnvn9DTTZppLTqA0Gi
	 B39MFRXcPb9zi+IdsVuhqkXnppeMlXsQCDarYr0cnDmOQHdgZH3MMWqtrLg0kAcqJJ
	 8/l96HJvCAxP0+ZvPgx1phLZek6OsNe9TajBVmycnWKoLprFUZMCnEGVy1BWWfm2Zi
	 7/MYUHsZDDHS8MoF2Ttx2NWrSVWoDnZXmIi0cY0hljisAYCpUtA+7I21Pke1W5SfAh
	 +lOa+fsWcEbXNLAy8Mo2b7rfHrVmVkURX4sON1Wc91l5ijCUlrmNUERFzo2B+Cas8s
	 z3vPrUnsmtlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B7C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150535360.14268.5173487904465213782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec4ece30ab4a914c56186b0290a842307b918dd92cdf157207d9210f00dea45
Date: Sat, 20 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721505353
