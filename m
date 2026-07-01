Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8683A6407
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782948514; cv=none; b=Kp0Ax0/VmtW2Y1kVG1Rl2pkO5hBfftdNoLu3gwZ2Ia2NNzhg0yVgOT58b54WSOlihAy63AkXFEFekE7SQ55asplBwDm1l4WWsyZ0TQv3GdA5DoYMJiPsXBOoplXuFK78BaGYknnFgxfeHcK/FKDT45IJXZuQz/By1GzbsAFwLLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782948514; c=relaxed/simple;
	bh=vhjm/NQU2sie3LBLIk6Oesd8+oWTH8sXR1aLCgsPEzc=;
	h=To:Subject:From:Message-Id:Date; b=IV8/bUDVEtxJsau9m4aGhlhuHGHyirOeLtEMhc6ig3BmHa88y2TUXIXfPs8VZxk+5adM+VcWDoc15L2er5QJHlEUzKJhw8pxbBt/uYz8q+fWbsQHK90KEnnlSkuBxpKFokGrphDGeXZ/zs37fgQ7d5TI7IXLykeMKgIcFIjF/xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEAjNWZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEAjNWZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C73C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782948513;
	bh=vhjm/NQU2sie3LBLIk6Oesd8+oWTH8sXR1aLCgsPEzc=;
	h=To:Subject:From:Date:From;
	b=eEAjNWZ6WZgnq33f2yRsNn9CQil90M49ybbZexBvRxHO2T0unuUIAB5ftXDGWXLQe
	 m1XDs5+EOqCQ5o7RSFMAtOqUYKcrTZ1X1Egkclye2SF465d3XQ9BHugmZPDiax0rhC
	 856+A9ulBa//Lt9Skp4bmndvzFdbSaoufQ3ARzT3TNRG9eRiZm4LfI+EaK2GGKRyp+
	 eqivkTQJt5KWiE2BriOAqSPAgQjnFTuzp5IXpMHhr2gmjCwJLil4V3Lgxgjq2rsIty
	 VdYUI6qfJtDgEmErhudN8S2bNytO8mT4YqR3aQLWVTHjyonV7eZnmn0b+nqux8VvtO
	 7/8j5p8DIw6lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9038C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294851368.8960.92799425875882165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51da453bbab21e007c16d7f07d92ea0a72657ed183f97ff043c9581219af861
Date: Wed, 01 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782948513
