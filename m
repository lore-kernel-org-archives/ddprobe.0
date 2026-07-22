Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DD136680E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784733574; cv=none; b=ooEWSrME1rZ5fOnC2nTo4R81ZXYy2L0W4/bISZjRmi+YCw0j5mpVOW+w4/AiGxWgRZ03BeccrySRz9VtJowaN0nwyGA4sf8dbPnw/ESKHU9lzSS2unSudX51RmiGAQGEot54yc6ypxUUNA00odifgxmZeapga7UYWSkpFwyEpz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784733574; c=relaxed/simple;
	bh=4tnHr/YJfVdqfdQINylZWHSdRG8tXsvCylO5G2cTTWI=;
	h=To:Subject:From:Message-Id:Date; b=A3hn8k8MSn7DazHdOd5GAG0BrWOEEk+aCC930SWbIRco/MCefh3bpM5mmrLDAC/NAeEaMP4U32knqSqSMNg6tTbviJo9+eU1ON/JZj3UKcB1Y6FdOCxyTFfX6soq75vVHKVimSxvO6EiObVhcVbFpg39hTAdex+n8qBIBbkl+rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rauCYBVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rauCYBVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AF57C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784733574;
	bh=4tnHr/YJfVdqfdQINylZWHSdRG8tXsvCylO5G2cTTWI=;
	h=To:Subject:From:Date:From;
	b=rauCYBVBJtEQAhFzra1c4jjso0B1glG944ZJtWDTRPyMM7ob1sLaJlQAzz4c3PshG
	 tcqNxZAVsSKZqp4vY9hZuaA1fp+H5D0he8YIpOhm6IU1THOZ5nqDcHQqqktYc+OZtS
	 72+LpsYgdx0lqPxpWCQi+wjbSy7cjCTHNxIwi5nl3i3I5DCA9AA1jxPKfa+1+/jDJQ
	 mZp2l8vHb5Z+o/t15SDNU9Q6ULEcHAAmQPojIZBoenOmcV8oTzdTWF8/4+92k+jHRH
	 SQLjiQEHDKL2GfIEL/8RbI6uvXWUqLuWU/PcpMLfeUWMABIK2RBZaX7CM5Y//FewN0
	 z9/c3lXShaGPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C562FC4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473357377.30657.4149944506035310265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075ba022e1c66c0280bd0b9bc420e89b47754da4da11d3b7c2fcd43265a5d733
Date: Wed, 22 Jul 2026 15:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784733573
