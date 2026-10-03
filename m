Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A419827F72C
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791036034; cv=none; b=rSQPr+67dMdByqdawMoLgcaUJQGOg9vW4g7r1yqxyukeiT/PKDdnE0jpQ8Rrq1VA4WS01jPO7VusH4BzaWa5tF6sEPJT0Q/MfTCrDQIT+IcYXPdL0OtAg/12Vkf+YgpMdf65FBZ3XIg7w9JQrLMPnzTRgrnX5vLQwlM2q+uucfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791036034; c=relaxed/simple;
	bh=JUKiENr3UhY/LiNSN00+iBko+xvV+bEvz6YdMV4wJzE=;
	h=To:Subject:From:Message-Id:Date; b=ISzHlcZ4uKvtjepHc8hcoemjM6cCurzGcrlS3MhEp/Ze/aup1AsoBMcmxfttvTCmxIbCNO+FU39QOoHhhoXm/wRPuUmIUKAN5G025IH01AZPUQTZPsEOc89L6R3cV0fLhkZi/fD8IaTo9qQ7jNDgtkpdwU42B5hl4mgYrmJYvuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSB2nm8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSB2nm8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B99C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791036033;
	bh=JUKiENr3UhY/LiNSN00+iBko+xvV+bEvz6YdMV4wJzE=;
	h=To:Subject:From:Date:From;
	b=tSB2nm8ved4BH5T61mPxnqKjPNCkkk8dzZOPXh7Cx3KbqKTM/hXH5eD8LZlqH62RJ
	 Fm8lEdD/ugdTONc24YsNEOkGYyZizM7nMVKDT3LmZ6Tn+RM1jn8O2ttKWd7oT4gZoU
	 cZ4RxaFryOkUZ5jkqO7cvUjI8KLIkPmOaUGF4FgHF9o9hvktGCiGMwLdzfPyLKVMMs
	 A4SRar8TegnUToAvJiQXmnrrabddEpUconhDLf4MoFBQJCnakGvta2XcQmZpbjaxWd
	 aPFUfmjVlRCL9eqC61N+Y86FT1Q6g87kXFjZiH6Pv3pIl9nDLQWwlGBfOSLgJppITT
	 zJsTcnR9FDz2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2ABCA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103603368.24668.453398615183770576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5b8d53060eed88f1e8abc0beda5ce380c421c4924ab753cc8d20964183a0bb
Date: Sat, 03 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791036033
