Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0481633A708
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773599094; cv=none; b=l2DSGtcxo8xGDWxV3JVSAGhQgdWImOjOS4OCZXZJVqaBOGqb/hfj7FZuuxcAhuqNbx0L7+4m9vXvcuDKSJ9lQ/NN0aVDcf6d9dbj75KGop7ez6QI8MZD1UBCNf5tbTbVGwYlaezuGgCjKVPt5S4HPyZGe3f9erQ0YbkrWeVdDwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773599094; c=relaxed/simple;
	bh=deelPw4pr03NYUzkQ3lOxv1xFHHUOiWEBsNasdragzQ=;
	h=To:Subject:From:Message-Id:Date; b=OwW9IYvF1WyL9MAtnrxH/uCMKAZCyocIgFhJbvG6/GjF5rNHkhZo/xLkaB7vILeM84CsmYBijyjSmNZI3ZfBV4Mci2a++2s0AzI9wITrExwpdiRBWt6W+LWPByC+lDwjG0ED4evUKMvO9/Avho1A5W7a0VToKcnVbqWoUM4tkkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAGZwxRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAGZwxRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABADAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773599093;
	bh=deelPw4pr03NYUzkQ3lOxv1xFHHUOiWEBsNasdragzQ=;
	h=To:Subject:From:Date:From;
	b=MAGZwxRWLL3WLtB+WgdamWzW+ZvU38F3jQ1PN6xmYXxrL/Ka+5/jlby1afzWzRb1n
	 N7Eg4ZXvphhUZPPIumxdhChWJ8XMXy7lnxzLcYOwgS4DQcPcTGQJW2QalIKJJKlVuj
	 q3om9btn8xeMh7nznXJuaeaI1f32KjtUmOB2tU3zcnheqkMX4+OL4LmmP0ach+y57y
	 pcq1nK6TJwpN0YE1+odvav+U+sQQDC9UIKXLqUcdIDLWSJCznJ0p18W0oxSl7cdf8+
	 IPTQq4dQ1WSXhqUl+pjr3eoDpWRlpaZuyVeUyC8QgBWZyp98E56Ha+TeAWtZy1dV50
	 mKnvImnkGEPBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A1FF3027F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359909359.22320.13205909744570875299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 457364352f7e7f18359073bf90c490a4e1d245766187b1554459ec471162f6bc
Date: Sun, 15 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773599093
