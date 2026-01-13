Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0769236A039
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768335834; cv=none; b=GbJu69POHvv/Hmhhr8qZEBcUanxEaB+yYPkd3DChoJsXrkK2O9jU0SmyUW6JKLt9vg9+DM9fveIie5iQb3FlxAzdxIKkFc6dugse9hxw44OKjIIQ8VUUwrqdfRa2u7StMhFOlpPTrcf7vhHZvGIN2DlJN7OScosJmf28Yu+w+y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768335834; c=relaxed/simple;
	bh=tjoIN18xHA0G0C3vyjvPi3Cs61IUIQ5G98HH2uTXaKA=;
	h=To:Subject:From:Message-Id:Date; b=KBmAoPTXXXDIBvokxuziBMxOFKEiWJuatPj4ynADlNPvaIZxQ0kATcIUVpeRp11PU3aa9qIfv2eoLudjzWaJKRBr5PX4znD+1RY53FjaJBMiiJyA5hiLBBWFgjnxuVnPqZCuhTGYRTxnaiwoVmSp0a/l64PQ76AS2KU/oCBOn7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ix0Ixmvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ix0Ixmvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768335833;
	bh=tjoIN18xHA0G0C3vyjvPi3Cs61IUIQ5G98HH2uTXaKA=;
	h=To:Subject:From:Date:From;
	b=ix0IxmvwRIrp92n8uH2RNaHcScqaYD+/E1TJA4Fu8va3JH/TD8/B92L6fi/XB7rVm
	 NYyAsjQdvs2I3dQnDQQj3kxR76U4fopkpHd+HcIKJsoNBsNNnUnHM8yUEDIYajKhWV
	 p4cZfhjA3Lwj49nA67zOy2wROc78nmDLF5AKtRmkcB/5kFfWbtz7IYr8LbEefNCHX+
	 /WNaOEn2G80RhOj8atw6RdlXAsrNicEs8bTx3LxG9lx3wGvPtdS5u78xWX07gOdCWX
	 Y5LM1G4Wz7aH1XbNjvMzHMUvRKzWuhHHnplYXsim3RgRppy+LzW8dFcTuRV+qipDdO
	 dzlzfs9ugVhhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90337D30CC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833583358.19166.8979304692049775679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991f1718be12119615bd48c9828a2462ef31f478e9b614eb3031d79157fe5bbd
Date: Tue, 13 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768335833
