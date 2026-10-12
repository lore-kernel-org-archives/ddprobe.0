Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5333B4192EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791803434; cv=none; b=g7jBrEEjEZ+dPi2y33fAF9dU2wc0uGKdhawIiI0khwHjkEJ3FLDL+NjAL+Z5q6+zvPcLmOtDnsKPDeKRrzPYXxOTkII0leSJzqfpIQV1UGq/PPKgnBpQcqCfhcUVbKSxLt8CFMfETumHZ/fxjbgDbdj+wa2VXSnE+xPLT45vct4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791803434; c=relaxed/simple;
	bh=q/bW0Ht2+o/R6asfQqArMjmyX8ddJ0huvFlEJ6WlXPk=;
	h=To:Subject:From:Message-Id:Date; b=LekBVMLjsSQirkbj5cQebzkBj7kxd080+6Eq9wXbiqV+GhyuJRuhpzhVDHMsgbpFGV2MDe23VjxBTlqut7T3Uk2JTKBAZF3kjdQkhCx6Jjijyd1hR+Hlt9DSCl9v3vcxicgTc9ueci8IPksmKPipy8rcINs53azFeTDPo+aRhY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHn1bcK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHn1bcK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE32DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791803433;
	bh=q/bW0Ht2+o/R6asfQqArMjmyX8ddJ0huvFlEJ6WlXPk=;
	h=To:Subject:From:Date:From;
	b=ZHn1bcK4YAllecFKIf4O0jd06NB6FHay54iuwjryBamdj6U/8zRjmn/ljE1WEQCjL
	 naUCWf+5axwYi3TCgdSAsqs0zS9oMEOvY2/vfTeZc5gwXTS6RGzD0uRTHCnCW5Ybt+
	 uK2xXzEfiRbI0jnTXxy98Y+xTOj3hOGWhCtcveUk80r1PTAnNx9HbkwiFm8OVEWCPP
	 kGjaNsXm5T8+89GbgPEZd8QyOeV8zwdPm//nroTCT2R20+kzJnYrgoeO/dO0cGgtoD
	 4NFligBjxiUmN8+7DSalyHImbTOM8XbdB2pJNZVN6UUixGsDPdcSh56N5eJt75Beh7
	 ijMNfk5TM8uIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BE6CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180343368.26908.17982154350071095175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65dd3ec60fd84097e6741b3a96e9afee2b03bb7a3db14ed76be7434a3455ff3b
Date: Mon, 12 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791803433
