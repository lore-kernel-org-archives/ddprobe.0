Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B19C19E839
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775724334; cv=none; b=s5yzS992/b49JIbq6KCvcbTcxTNsVD7WzwBewwXgEN2uNfk5LrSWXTa2HDHFNel4vTc0KrgmRc+1fJhklAEABRZRk4bLiHrjfbQhNWXJMdAB+dcFRr0e+s/nxM4ifs7G1aBhZ5nsmhpq48IaP07scpQwg/a4ZuTaHLG5NEw7geM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775724334; c=relaxed/simple;
	bh=WaOC3JuVXyLZbmxs9Mzynxwgh0K0I6CAImXujGQVRXc=;
	h=To:Subject:From:Message-Id:Date; b=IU2ZFcEBg1kceKw/QkNgqSr+i2gLOR8yMUTVNmdgPc3d6ZErrptlhoY1Uco6y0vtBhXKnfdAzcF1d8Bm3t3h5StTNDG/8XLyB8zMct1OTMPV7nBOvGvUTWW/LsytNmuSteEkhXSEFFcitq3qTNTa8FsIRptYBgg0VCDLxHAXBp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYX2dwVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYX2dwVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D1EC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775724333;
	bh=WaOC3JuVXyLZbmxs9Mzynxwgh0K0I6CAImXujGQVRXc=;
	h=To:Subject:From:Date:From;
	b=JYX2dwVSBtXn6xwnpp5tfblTw242yLjDDr37/2q9M+MMbRln+qsbFrhbSbkL3kToH
	 PM3vfr/zUQjUL39JvA+mv53eVyQ4raOqg4OePX/qQnyFfX4nnOG6onEvfLG36WjEQC
	 29jY0I7pHzDUViUojsX0IOwEsXryE+Wt4M0+OVqeY3HLw2Grue04hO70WuFUcHbceU
	 LFn/LATkUc8zxg24CgZRP+vGyYtPE5L0Iq70tacWdIPSlH330XzqUDjE4cXq3n4kS3
	 4J38LB+iyPPK9NXga2cKVLcS3EV7oUo29YzjriXTmDAqnPU9837WtDneqw4LZcwMcw
	 smu3rS8honrUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09FCE9DE6C
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572433370.10859.14464353374474545891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2c79ac3646501e6165f972612fcbce2cb9577b00b6a08e81adf05cc18213ce
Date: Thu, 09 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775724333
