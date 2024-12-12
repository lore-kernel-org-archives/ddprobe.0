Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3554E204F9B
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733987154; cv=none; b=dCY7gQd8J7GTiwZovKfDiyvm/gJZJLDU6njhgvf/fHTkiYPDs0djiCsSAkzqRTHaMhGx1pPXWpVC3uy3fOMaT7/uQvdabPQj6mdfzmTesE4uyyOTQCV/KHMB3ELUsirpyGLsz8iPlxBCaZMsgcph6cBrNU0LMABjkvCr8ozzuZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733987154; c=relaxed/simple;
	bh=W+bIRpXmRGKofGLROAN8wGV85O/W01ZfyXML/Z4jgXk=;
	h=To:Subject:From:Message-Id:Date; b=gVrgVoqQqmmpkgpZs0OXEd1EaMlhmg/4glhhIwhYIocIGaiACZiwf3DCStAZor1Y+N6xseUp4pJ6bS85RqAqZ7V5a5lfI0B/DaSLuFOMsRvc428mtjqYrNNJgNT4RuJgSkWhnkyPdT19MgjzK9i6BKS1h60qQiTAHuCM1n/qIHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv7m4YHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv7m4YHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C8DC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733987153;
	bh=W+bIRpXmRGKofGLROAN8wGV85O/W01ZfyXML/Z4jgXk=;
	h=To:Subject:From:Date:From;
	b=nv7m4YHVCdCowevl9wDx/rofEdkygmddJdERSARcdQ87yzDW+oBL6Mcu+rQHmtQXi
	 3mXB4yZUlJCxLon+z3nVvzpJ3PAj04IdWUgK1gX/zVrZmKLh2hQYfw+ickPnNYoU8S
	 6AZnXYeFkNG6e1gp8pipUsamCAXoi5VM9KEqasHKCrMXf/0n+HCxAtenvepiuKCAt2
	 rhq4DMnnJddeznWX5bIB7MFzs9tuMFVa3Z/91ER0EqQWCtz1i/CHo/D9Hul6JTg9Z4
	 og5LN+DsAPbcHV5mQGVbihflqyZcfqGMhdUmFK7WDaXDcYBwYWgHffXF8gdOe0VPjW
	 BTXZgog63QtgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE2DE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173398715363.15092.17512360732549443935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150170e2864f79760433cef6bafad51bb478ab237b2894bb2c0f4e6fb94fe864
Date: Thu, 12 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733987153
