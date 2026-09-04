Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C35442391
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788521434; cv=none; b=XHau+jYAux41GpSWDq7hyETiKL9NMGXSnKV+ezMWCCiNKFrjijMceheKPiVM/byA64QtCCzzyg4szwwsXFLAru9ZIcor0kPbrtCQZc2N/DBbjlOTvYAdHhKZ07PoGsI/R/7yps+ahhPz7ri8XmhkxCrz1EQeyuCWCYDgmdDlDKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788521434; c=relaxed/simple;
	bh=A9emCTiUqWILMDW9uJz6Gx2TZcfd8podJnhJoXnhPgE=;
	h=To:Subject:From:Message-Id:Date; b=FxhjknrHiHLY5mq0b65r0Rmrav2yf8u4I0aMPoR+xq1Xam3sF0Kwn39Ac2YKuVOqbi+IaMeGISqmDwvMvJ0DbBmfumJ+aqf2EB7m/oMOrV1QC5/UVI3naASoLUnM747tt2vpy70/lb7TKk3LcC8/09XOl1jCLZf8mw5ycLGPvSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vb4GSNy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vb4GSNy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E176CC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788521433;
	bh=A9emCTiUqWILMDW9uJz6Gx2TZcfd8podJnhJoXnhPgE=;
	h=To:Subject:From:Date:From;
	b=Vb4GSNy5MHlqtjkjH+h+VP8vNg6ps/HlDQ0ex5O3PcEaYWZthgfPUOlVbLJRnAKQw
	 eWBqh9WB7xAx2sibC/jMndycXv6fVGzwsWjNJQhdOV3uZELjeTS74+Rln/3/CVDKhU
	 saFBD0YkWQZk+NEq0PGJJ9Lv5Qs5zM7f/GvQM7s40pwbFoCddWsgKYpMRToDY6gbFv
	 ZFj047eASDlFRC4XfYIG1aAaLRiY0IVP48t8p+Z/KTEHduze49IDPwGm1MVtxQ8KHV
	 v9XNFVp9SFGTHbbTrpYIcD4l/TF2Wsf+3Ebvyj65hZurfmDa43jePOjZYXomCDfLol
	 w4DGF3HF1/9VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA97AC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852143375.14750.17182334582554925882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84cb11827443e138a564f6f7f51694da72f4900452c3dd5a8204d1ba3222058
Date: Fri, 04 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788521433
