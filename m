Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E1E2750F3
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758877794; cv=none; b=uxc+YHZGB9yGfgZZfnKbCEiGA+JW2kwO14gjCOk56y/og6crHEmIgDfoLFN0HUnLRGJYnLvVMJmZGpLIsMqCHdOVgsSJ94vzEMlX9sEpz9fvmXM8YgKfIBC1h7SgGoQ4AkJcOMtXRm/4WOHRLQyfQ/NACq2uZk0Zj7DQGdAjvhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758877794; c=relaxed/simple;
	bh=VDdqZ8vIgbsKe0fmjdycpQDOqqrBSbZu28gcVaffkS8=;
	h=To:Subject:From:Message-Id:Date; b=iCUwsVo1ijjd4rSgWey7BOSboA9YrpZ3TPsNgjd5tYD7C8T6t5QfVc6sqNrmxp8qVL9Zkr1W+V1KdEXox0lvJzz4v4Hw0c/ai/qJjCUTu3osogIU1HjC0xzlktGOYxgqYzGSxnu6DZOmPx8pDmmNjW/KzHF+6v+iApJdodRLSDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dV26xbDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dV26xbDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF0C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758877793;
	bh=VDdqZ8vIgbsKe0fmjdycpQDOqqrBSbZu28gcVaffkS8=;
	h=To:Subject:From:Date:From;
	b=dV26xbDrfJhtszwaoGfWRbi77aitkhLbNsB+Ukk6bXWPsHn+nsADCMkV4D+MNwGts
	 SFocOimCBdQNF6IFnWc0O8swGLawwuKJbyQglPgxuVspCLpdT4muR2cnuqp2kt9b7C
	 kUUqE0gsyjJZ5ujzp4iDwWOnET9qYn6XgFEwFStYGyIOT/scHNz9LvFBL1VxdYxPgm
	 exFX1yDctL/2Wr3/aLpfK0VYR0u9w3rSq8iTkDkA3DWI9D4XqjKjilHkTURqN2IfGR
	 JGC9vLR+xOl1qMovtnHD5JmBp/A1oD9Po0INWvSpKt1sqCGM5/EunIE6lpKQ7l2Q0Y
	 aAX7xyCzyf+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A2CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887779358.28325.743398433085926633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822d6fac4efeda82610bee2f5843154a90cc19b6152518267c5d039112c29f2c
Date: Fri, 26 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758877793
