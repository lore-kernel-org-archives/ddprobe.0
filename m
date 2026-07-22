Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0DE23C8A0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784725114; cv=none; b=Vk5H9HzJRDKy0RRe1/Wt05cnWho/W2+DRHqLdMJ+9gIpcsFsMBtzfU3oMRh1siZ5RIi/j+4chdnaugs5wud6tlki3kqemhMhVIPj9sPvHIolejSfPJ6gwF7MNxU/47v20I0urP7RhIIYzPEn5F7+mFjA9kkjnUYuAmT2cVlR+eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784725114; c=relaxed/simple;
	bh=afeR8CR68UP0JBVcY6QzOoeWa501nkUXk/PeiZSUxcg=;
	h=To:Subject:From:Message-Id:Date; b=uVSZXfHLa/yUPAFqDnXs38CjUhgLgTTb3E0nqFHMeBA4AtA84PMBWoBL2qfB5+eFUyptphzKaH/Rf1NmiyBzE4yYA1yJasYbcsTOksqTJYu6xgChhVBHqNF05Jt6APKcaGPJb9LpXZhoo5G8QHx+dwUQj+if2Xfv3kA8113MRZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niQwMUrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niQwMUrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED9C2C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784725114;
	bh=afeR8CR68UP0JBVcY6QzOoeWa501nkUXk/PeiZSUxcg=;
	h=To:Subject:From:Date:From;
	b=niQwMUrXq4AEGW/bYf9DvzHwmJ9SuTj4pyAqGFYIVCF2J/rAI2gAdh/bUJeruq2P4
	 fiUvnaZDOQX34xkE/mpZzISMFZ00M1aDcrhXGz44lehgf5+YKnNAFgEF8bgghsJhif
	 fDMT6aIPrHtdknSDTXUso/M9/WYiaQgXytqJCFV0+mdI2q0hgsYBD57kKlM3Cuog2F
	 X/T+hdjpiOcAXsohJWyqP/TlpcwcgntGMBEJo3BdBzL/+tQgg/bfVoEBBIrcor5adz
	 kN2baIqv5Ieg1TrDyg2jspfzl/sXiI9k/0z6pITeqvLaFnasohuYRT2cuxYQSY9nE+
	 wcr1i3MRfk0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7316C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472511373.26752.2070941335010372166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f46c7e3f137a412df565d411ebd056bbd82a201535f981cf10b1c94f7e5de9
Date: Wed, 22 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784725113
