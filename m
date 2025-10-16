Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE3332D0D4
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760630993; cv=none; b=lhAKXPzilszZmCwJQHt/0Yc6ZATISe9VhYUxmJpZbUyhgRT74uaQuAEVn8Jvzl4ngRTCM6KuOrA4Uq261oNo8XaxoVxlSYFcXDhqaG5152NxMV0Rx+VCEH/XaZESR0IMsCHif/jbp1DbjFTRv6j32jIEZL+T7yaEZ3N12agsIRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760630993; c=relaxed/simple;
	bh=W8atEDeaiBrH+lsIYIgRsr49XQ+7ZTxCygR3mjBjexc=;
	h=To:Subject:From:Message-Id:Date; b=rDK3axmD2GskQ86y8ynsqabXH+3xLW3ERG3WHYasEimiMvpuGngMm0m+jxtJPRK0xZERznjGHItDiNeN+zp6Pp11Gx+G1n6OpBbb4r4pMMRz649ATU+ODdADSS9ubel6Zjf2i8YDBIHxCP5ByXXSaNb39KBz0a6p+v5oum3CgFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9EhSjhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9EhSjhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993CBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760630993;
	bh=W8atEDeaiBrH+lsIYIgRsr49XQ+7ZTxCygR3mjBjexc=;
	h=To:Subject:From:Date:From;
	b=E9EhSjhmj8eNpPwk5zjqHA68OF8XJkhte4AYGq22NIRo32tRi+2GVpZLdCk2O2lE3
	 BG09z13t+ScrRHNASDZvcrGepqURtxfjEJvkZpKpmWCGcL3tFSWr1nJ6GFZjGtoANI
	 4lX/Vb/WkQVwAhAVO04hQkx+V36HAr2ySOHNCdtVGTYledONEYrbuB8iaVXRbEyVSg
	 +a6EsVp3Ueja07A9xkJCwkiM4Q5WSk31IsvHx0Vq3IRmNsECrKPYWADjo/GSIenMQs
	 SO5wWojz0J1eil8FRcKeA0GtbeOYSnsDwT+se2tfx1JnW+h8KS/wjEKt4XtKAi0xmG
	 SsfEnToi5aRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4ECCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063099358.27837.15819582996963652744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6275aef41363939dfac594fef09fc9f251ea37a11f9136c1011409ea5afb00e1
Date: Thu, 16 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760630993
