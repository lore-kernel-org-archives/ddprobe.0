Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2E557CB8
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715692343; cv=none; b=t57FDHTjy6SkR4DvCYrhxb9xwQPATmn7ul2icpGnvDd57sXKrKg/PthMsUNkVELihgV/6gY3IIurdF3h7NpqLPgUGCKAxxh0AxYeg1ptKyhpfy6rH9+ggxnuZqORvW4wVrgk1JmiROxQFn6YCxQmJrSaswCpUz85ARaNFjTN6Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715692343; c=relaxed/simple;
	bh=Uh5Komq9KMrc9XKWuiKjMXNaaSVFHpB5zmCCnNtRPOA=;
	h=To:Subject:From:Message-Id:Date; b=DlRxsjUbX0Io/6b/azrJaYk7zOwmmS3DCm7ZoACJE9NodO+DWZv8UtN2CSrCUzxGkQCr3FcpCwO6BHHZSoPdGkhFEa4u1PdTiwmgoxGddtFGyEdlERqg6h0AKDrYC2VceBsgkRubo1fmyxw/WvHYeLJr+kAd1vBLBzscb4AvX/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT9iPmgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT9iPmgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A2BC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715692342;
	bh=Uh5Komq9KMrc9XKWuiKjMXNaaSVFHpB5zmCCnNtRPOA=;
	h=To:Subject:From:Date:From;
	b=mT9iPmgbQtofaoczLGk9F5dOveI9fji6MAXosMgRpStzkCcznNPS3pIHFy2zwYYFf
	 glpP1e6aTIn7sVuHOSAj6eIcg1RRuAfc4WmxR7moyiUKqYlntq3qJ03WLKcmjyofMi
	 9EddojU/KEvuFfifcXSiWhBjQlArhmyMfMcsvkpZ6DiOAnNUeih6m/z1MwkN2vKkf/
	 JqV+J06rgi2Uy1mRAbI2LLeeL8QVME8YBGArAoi5nDPdx4gJJd6zOkK8C4TjzNAn1K
	 ipO9oxadyjn4tUYexZgNob2FLHnTPltxBvUMSsPAOI9xbCDJaRh5qGCIWji7d1bTwn
	 FmkSPv2tAUX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6320C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171569234279.22414.18199376250312760093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e6acbdb6a1b3b4c6924af6e6494c0df84992d49ba4742f3bd13e1df3a3ef16
Date: Tue, 14 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715692342
