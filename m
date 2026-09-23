Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450792874F8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790125234; cv=none; b=Dx14AKANwZWNg5qSPfwpMU9X9A3JBjV78OtaDag1rKa/fin6c7WZ03Dd4KZApcQbvHcCKHSflo4UK7C77974uXS+U4lzEVqEQa6VFvPFEkEXe0AP66Mz3Di3ohltOYrZiIPMrB7+RV/0p/fu07BycxyzGBHXhd+67wLo2uJJQaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790125234; c=relaxed/simple;
	bh=A8yhMYDHV1AGZX35GNAbdYiNqhDwyAHt7VzxGGdb8D4=;
	h=To:Subject:From:Message-Id:Date; b=sS+WwOGY/1lo1i/ylNB69bXP8y0n/B5CnLDLFkZ8qryLDss7OYdqrVuNeyaBbFEcwCdssvBbNLBeVfrJmokND7tN3VBFUTwMsSo49GVLNcK6aaef6YjKGSWveJBCwZQ4h6Y/2ITbexgIxP3G1Il57YEmxdhFPAVm+bRoCA4P+Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF1U+7Ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF1U+7Ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E83C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790125233;
	bh=A8yhMYDHV1AGZX35GNAbdYiNqhDwyAHt7VzxGGdb8D4=;
	h=To:Subject:From:Date:From;
	b=bF1U+7HaS2zU1NNUyWmOxDg0tZNqoftd5HsZpYVgodUd1ns/73CN4BE7hbf+wgva1
	 fnnLmKYig9K6hREm7YYcTWsv7GjUZRvsvfeQvDi1lPQeSbmoGgpRxeCgSlhoTwmiKh
	 HI/wgp9hA6znsLUOGwVCxgsL3/z3WCdEv5d+521LTgLDaNRfParHC8KrrULYcQPdSe
	 mnpb9CtcLEu68/2Wt9SZ5/RhXpOMXow7d0j2Y+3lMAHiDSwzUfftwYe+l7hHuzkRDq
	 BjudJEni3JRQ1EHS4iBob+Zz7B2cRa607cltpR6kvYD55TCdLB+YOP96me+NuWnfvM
	 9JcGVdNZKWQBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F32C982FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012523370.29624.14941129100346945280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdd268b2fd0b7203f9ddf1ee49abfc52976e47222026b6629c7a11fec400245
Date: Wed, 23 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790125233
