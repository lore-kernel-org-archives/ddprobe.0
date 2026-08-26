Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48C82DF142
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787722834; cv=none; b=KOAFYBrIk7SyQyeXL/HpNux/rlichb7fNj8Q0mPI28Wpd0Lw7rg2BWASV05sVvHkXyofjRORDU6woMqOFqK1E4gIjtXtAmv2hodcceVk/yqEdfvsvznuy7/BSJpUKV2KMVLCWYtZf2BEJef53Pd/RmiQ3skPID7XEIlaT4PJTZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787722834; c=relaxed/simple;
	bh=aWLcBiQx9DdEsBOV8ag4+/pk34sGg636GS9LUipczuA=;
	h=To:Subject:From:Message-Id:Date; b=iC6dYNnYjKFKYwnmcH7QamcSVPv85JNiFFBpLsir9a1gNqFBAS8jWU9/nfxpyaIaw/ZKefchDvSgIExsZNW6m4q22BEGj3mIvalGrImhM1f2E0aqSPf0EAKk+Cqn4UDPA6YQDFLJauaMnUv2KTkP+QiTwEjB01X0AYEgiB6dnaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUzTlznC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUzTlznC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D015FC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787722833;
	bh=aWLcBiQx9DdEsBOV8ag4+/pk34sGg636GS9LUipczuA=;
	h=To:Subject:From:Date:From;
	b=QUzTlznCMF2CK/XYNaSL3cRr7prclZc2+uXhvxFTpyToqnUgrVtnXsUmp0S+YB8Eg
	 dkS+2xSO8i6fJuneOWHaq295OitmYZ9dmyH82s5gdTzMHb/mJfkK6bQPoDwRrv65eQ
	 HX6w2LHjJ9ZfBW9BSMai5bZwdkPtC/64RnoyObB6eLTz+NoP4L34kvKI27a/HLSKhy
	 GHEWIsdv5i2CcrI8JFppj30tnSM6jTJNp6XQLFH4vStpJ5N5MOPk7+jD042TcgZOig
	 mrLGH3WIiwG5Puc9bCk5e81j8hSBDLi9TJ2KJW/+8My3ETPLGfFZBtaxCUhFVegTH8
	 l6r01gPGCWx3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA707C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772283368.6295.6315400075113195322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb717c9c5b9336bdde605210881df32b2bf884bab7ce32b62ee6500050070950
Date: Wed, 26 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787722833
