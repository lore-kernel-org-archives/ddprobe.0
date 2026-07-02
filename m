Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D243D0BE4
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782979114; cv=none; b=gOqQ8PzoRNrsSQZ/TgDd0UoSFC3Tfi+P/SzoIeOtK3pqWPHBVu+o0APuc2e4sZCBRLpCgX1GRTXSAvFHI+gMB+p+TfdZ+rr+qg9AZnCCVdzduq/I2H259B5ulVsjtZjE3opdjOv9HIyIwAA+2NlUay9rbCVlZZ1eAP1SiRKrjGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782979114; c=relaxed/simple;
	bh=u/1pdCvvlSTmUs+lI+HFqTmxL+V8s69HIlt/r9FuXCE=;
	h=To:Subject:From:Message-Id:Date; b=RmiwuzAFiC8dmsdPn/eMBjw3SXiDUpSE+f9K2qMwFn4KCdDYE1SIGi5RfnyNBkBsoWVjSGy3w0DbvWdsm2sR8XXF4INODR+DDzywvD/2VU0QHCyKabpsE7/I65j+3s0qWUE19Ibo931aXfNf+tpAbsoSWNK4OOPnFCtrwvGYyNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7UXrpQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7UXrpQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3D6C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782979113;
	bh=u/1pdCvvlSTmUs+lI+HFqTmxL+V8s69HIlt/r9FuXCE=;
	h=To:Subject:From:Date:From;
	b=u7UXrpQ37Yg5KCLuvZKz/gFAbB/+WQY9y2ZPwS8bTdv0OBgV50HtwWjvmwpgbWNha
	 Fv9rxCXoUQxRuhvK5BH1Z4CKmN/2RgS8TNkZzohjclcu+fdlIfP4Oe0JAm1Tl25zAv
	 4hID+ugDso7KEmCBPodDh/eaJiu7OL3cwgd2iwQ5aiXAZ7bCNb/s96AhIV4KSO2BcC
	 qnOXNigRAnYuzehqd+Peie3nPIPPR04300na1fNep/sagmmfEuBlqNVU+s53Qsg3/H
	 u7jU/ym2qTSjhZqLrX9ePas2nqL9pPGEfmuPufbjGr+f9ZxBzltuC2kvIzS/ka5KU3
	 IaHClKP7qXEGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8815C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297911368.21048.13350474934981349708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6076e5f88636c2e61ac5e546654886117061c4a0aee892c41a5253cdd94f15b7
Date: Thu, 02 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782979113
