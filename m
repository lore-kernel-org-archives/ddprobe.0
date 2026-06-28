Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C51542AA9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782613714; cv=none; b=VYlIimUOV0vTqTuHEPlesfShWafalFeWl+HDeU5bdsRky15Ikr48xIUTPy02ohbSq+xRni0ULGQvhnHTKo/j8gu8O/oN9veHBmTQCoFIruv7zxpwW4HrNYzrm8uAxoZBXfD5EQiFOMC8R+8VFmgoayLGdVg+l2sJaIyS5yKNgos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782613714; c=relaxed/simple;
	bh=Vh3Uat1I+XkMyjL19vG9Eg1KaOZrTMUagIgMCgdhxiw=;
	h=To:Subject:From:Message-Id:Date; b=MTi/4C5Mji4ekKcKuWVkLp5BieUUhhpY02NOvVz5CLqYK2GXPAKxFrcULFYobvwliX00rLWut+3GIzBmUjvK0RMwrym5//ffnkxX+ZJJwKl4f3AEE6Yg19sLR3OkgTh16xJ50XRQkll46xiHnrQpsdsxlYBOdrB3bL8REAYWhks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q46HtHJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q46HtHJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A87C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782613713;
	bh=Vh3Uat1I+XkMyjL19vG9Eg1KaOZrTMUagIgMCgdhxiw=;
	h=To:Subject:From:Date:From;
	b=q46HtHJV19gdTaDLNzMId60gZmjXGFvPg5VhT2ByTw3vSudj7cqyOD9vUHl7gSXCO
	 EzVHwcdLBlJVgz9NheJXb/i3bPkB/P68txnakXCzu8VPAvR8yfwz/SmsxHbrw+7C0N
	 AWzH7a2yBUcTyUMkDaaL/SeOerzqBxqR7iCmlG9QYUIB5stuoQdr2IpcjmOYwl3swE
	 smYDpc1/JGlhvty8S27Jy0+5HhfNcHHOdAdaeRUVdxS8jkC4Hf8DnNN2Z+OW/UQpEJ
	 IC8fBHyFAUQvvpOppbJB8NECGQsKZpzoSMVVBzYxoDoVU+XEpxRRo94dacDq9mlS3I
	 00lIwI+Bbhbdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D47C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261371376.9165.15956919478934391306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab297899dc5d16e9d72e9c364f96ba3c8a0789a30578e84af8aa2f1de299f061
Date: Sun, 28 Jun 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782613713
