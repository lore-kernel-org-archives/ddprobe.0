Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7A62FF148
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757933394; cv=none; b=TFCKdkb28oG9pwk2q7am4Jsaa9gB1Ry0YXcdmrbLFmbFjsQOjXsFzxBZ9Lr6jzBD+tv4wYn+YAkjEELZd7cgqC/h5I/p00yO1ry0DrhvZHAqGxV0u2MvcJIb4ohtcnTluF/L1KsDes8jXD1LqdZ49PERnVrozEAlPr9iOjUH1jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757933394; c=relaxed/simple;
	bh=oPy0P8Wbn/XV+vUAXVDK5Z22GaJgRVTnWZFplPuPq9s=;
	h=To:Subject:From:Message-Id:Date; b=BDOPIRkbDein6+ejWdCpd5CCai32eQv+bnnlPJmzd7vBXZR25bYD1mms5j8XHWNpEGy11V8082Q12ALpKcadOBW+gxlnkhvUzuiaWbViPPp4J1mzxPTo2sNbIjP/Je1m7u+jck+DU5Rp/pz66G11Lm0fV3nKbqV6oCdNjJQs3J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khNQyKLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khNQyKLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C20C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757933393;
	bh=oPy0P8Wbn/XV+vUAXVDK5Z22GaJgRVTnWZFplPuPq9s=;
	h=To:Subject:From:Date:From;
	b=khNQyKLYT2AnZHAEYwWes03BpyNL0KpvCsW113IQkjf/+mdisYS4/t1gkhJsjBWCk
	 7kN0601SK48eHObf23EyFV1+zqZzHJ23xkO3yExpkT5r358RbTx9AARzSCHqjRLB6Z
	 wLTXZ99fGGEC6PHwqaCd3stq93oUgXAARUGq4mw12JZ2W2gXKXWM6ytipIYE9WTzSR
	 L0XXTne2y9XrdhWILYpNSMY8MAUDRq+fWScalU1sA9DmHEK57pkShWOoJActN6c2rw
	 ui7UsThw6tDECLf6+LBIFszNkioIrDuXLYIU/SMxN+qdJvT06r9VixzmpTCcByWLf/
	 lhp+PW/6Dr8nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF51CAC598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793339358.23173.15925068847105268471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb291523eefe09d512e9438f9dc3eac2e156671eec123cc5dde7c0d73a3189d6
Date: Mon, 15 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757933393
