Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD2928030E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768622034; cv=none; b=k29/6qBJH9B7MB9LqCEOlbHiphdktPBr7OP0jZdDiyHu9UQmj9pEEO1ItCXVqmcRKPqWmURHrooHYSJyVJvg0lhQlTSKR7k0SSGpBrFN6rSL0L+bNL97fQuhV/QsTeNmnGbntEluZ6pJ1nVJIFXd7r90WEtzrouPpRRWaSt6Y70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768622034; c=relaxed/simple;
	bh=TQtFvAYR/qg3NGPRqv8EteLowDTNQBqLth2xfxSCzw8=;
	h=To:Subject:From:Message-Id:Date; b=gwFXdOAtIz5tRJO/wTMIGmVjVLiHqq+SXIBuIkZYWoEABUctKrDJj3RlpGFOAmlOUiMu2DBhLyTEZx+Nhf2Cav9AcVp0KxNBQOwBVzZUkmCl9a6Q1I7kByhRjRyJHtOpCt2Pcoljm8Rh5lmIhjmhgw9aMA4mYB39RKw4Cauuxx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJKwSOxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJKwSOxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98CA3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768622033;
	bh=TQtFvAYR/qg3NGPRqv8EteLowDTNQBqLth2xfxSCzw8=;
	h=To:Subject:From:Date:From;
	b=fJKwSOxLl+u5GVa+7nhllx/FI2oME3buFUbnxKcFpwk0D/PHuu8VDExwHtPbfCT9m
	 tFXYIT7psuU0RPXJ5zl+QQMDW2byPMTBPLD3rIDER4Td/B/q9etY9Vlwaqw3P9vtRT
	 /7Z459nOHByh4k3Pk82R/6IG1dD++D/pot2taB2cSIlZ/qcte/KkUTSVa9cKhUf6FB
	 WS1LvyQC9P4aU/hb2z57pwSwxdPDEcXuNPNfOCiy4hI8hlIf2YPfZXrO3o1Qmbda1z
	 C7K4Mhw1uN47SPeKAxiwhw6pyUK16U8jWTu7dq8KJXX6iNlHJmzgoXt67K21jy2NhF
	 LFLGcjdT3bP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008FD4A5F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862203358.2032.8065454345818150621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c05d897e5d19cbe635a82bbe77d72e8c34181604f288b537a238edcfa9f9c1c
Date: Sat, 17 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768622033
