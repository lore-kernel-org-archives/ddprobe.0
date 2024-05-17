Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628C218651
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715948543; cv=none; b=Sqhvm4qxUoBV9fjDJhuYe88pYcQP+ZgJNrDQK2enNkT3g90KvoQjLImnjDKn/3gCpOvuCH9VoWUvInz8cTW8K7TBBunXEyBQdA/1rgCY/fY7p07AGBYtaCVSi3CQC4LtbsYfrq7bR4k/jByFDp/S0soq1tdIAQ7mhqqD7H48Z/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715948543; c=relaxed/simple;
	bh=7mcSc4xZAi46AZG2XRoCXrUTokfnSKvSU3qp+sw5qys=;
	h=To:Subject:From:Message-Id:Date; b=HQZtKpxwbsMasLwuqHhi3ebDo3ATaYPkM3mAP0lUnnZUUAZJchi76tbRggUQk6FofNSIF66MEcZT0mRoVRfnWTEhYIQG8lE/tkTWkP920p+AKTez4tUaEY6y1nPlpbDkl1AcC7JtctUbw7CVPRrMKz9CZWZF3EviKuJB9LZpM1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQK5ZHPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQK5ZHPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D535FC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715948542;
	bh=7mcSc4xZAi46AZG2XRoCXrUTokfnSKvSU3qp+sw5qys=;
	h=To:Subject:From:Date:From;
	b=vQK5ZHPyZmDW2XOsmW/PtdBn4lxwSiUPizmgsvYqE+VCGjg2WOYY6guyWShKpyqwS
	 tSeYsUEnjOTY3ZI0ZgsEhnube29t+AebR8kDR8VsKT0DIgW2dbgovWau2cOBeP6jqB
	 KJBvHjePMQlA4NbOiZdzalb7vf59/wlaMkLZPLKV+0m8MoYOPH8q+lUMKnFwEBodl+
	 MTs6iL10uDJfTAA8j99J1IczC0uvtID/ZEkciLmA3lhvBrNEvTk3XO7rwbcspNSHEK
	 rLZmHBS9Y9EIcq+zNQpWGCoc20WBoWxlC1UtupHhbPIwhhskaykZHF1D+3A8jaGo1H
	 hYHOhtSIGZslA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E6CC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594854276.15202.10998724544501882953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e69504084a7ee08a9c8da91f8bf32d4cfa7cf1e069cab30552cf626b4be6f2
Date: Fri, 17 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715948542
