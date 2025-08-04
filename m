Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB321F4634
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754292594; cv=none; b=p1OSpR5ZxzQfLihcviNm2WwVKlInt8o1Jms8n8tpXAcBb1hxllB4pu5/vdGArHqh/S4A6FokVaHf5YIK+NpIZIkAMkgqfzzHuJoSILhZ7mV/xng8NUJI8jbRlVsuMkPRoFwHMOKbvlzt+hUi9DjUqCtQwY8V6aNzSiSHJgZ5A8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754292594; c=relaxed/simple;
	bh=/mmkUHK7+AnH9IhTrdRgquzUY7YwYufCaxKVGuuncZI=;
	h=To:Subject:From:Message-Id:Date; b=GUSr0LP0c8YgabOzjTmPmuLl4P6EN3TryPsfGWLZH9lfAlXdbUj3Pu4b1jLK/a5PTiHxeheR7D4rbfTSYO+0y8833m++v4JmTEau/57sTSeQYGkgGenKglg+7uiztA3U8qwSYsLnnRrvRHoAnp0sxkWrGXVoZ75cEGNj7c0caqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFf8ApL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFf8ApL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20C6C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754292593;
	bh=/mmkUHK7+AnH9IhTrdRgquzUY7YwYufCaxKVGuuncZI=;
	h=To:Subject:From:Date:From;
	b=EFf8ApL/a9P4vSf7pbylX2AnMUerOmiKHNf4zzb3vPAJKKoQSNa208SQlW8kaDWOH
	 dn57jXmybKMBR0bi97sAFgAa2L7h24eekANKVLRLAl586F43zZzToqS21qSZXaQC99
	 JyOO7PfB3ablO5KgCF7NTFZxERkNT8UI9HlQrEiN+Q5i+oTKVk60ASsfTHLhCKpEjP
	 cyGmusf7EsPXuTK2nnL4slpSXl/qKHNeLJ4I8139u2aTasO+tMhByFUQISB0rye6h+
	 j9NnLLF/upRF2aBn1dsSTw6eQT5kwDg4L+9hmfqGLmHWBr4sNLB77X3Htmm8b2Yj1l
	 QG3CgMggy3aNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBAC87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429259358.21947.4538733664934873116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a232de1198cd80d35f249407a62205d8ee8c08e64251e3ea3c46bbbe1b589de1
Date: Mon, 04 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754292593
