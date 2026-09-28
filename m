Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EF04A3F1F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790595034; cv=none; b=bjwPb7T9OnTTiESHKgw870iRYxfyR6zvkI3Wze89fMFA3irFcZ+16F9bNbgOJgfFXSsQWFW+Moos+MX9oE/WZPm3B9AzFpFH6q4r1ZHgcwScgi3+m6PieoqmgX0hwlPHj297w879U61xgQnFuoVsP+qdYUknmMNij2snNmXc4cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790595034; c=relaxed/simple;
	bh=9jiQKeK8ye6qTcd+XZid7wK/e9iaIaU1WY6B3kOaZTw=;
	h=To:Subject:From:Message-Id:Date; b=kQ3Rh9K+nk2a65XNQiosIR64QYpPIIBmMSPQJw7PcZgGOLDHkLMI3Y/669EFZtk4WXk/Kj79yHvsJA/7AphSrcCL2MU2HW3F9z3JKgcZ/VxZW468Qg/XveGMA13h/Tc/jPHqSdNYeYSY3F3QiVCrNhO1o1T3bxI/eFvKD6sEKUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alUHjj4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alUHjj4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCF4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790595033;
	bh=9jiQKeK8ye6qTcd+XZid7wK/e9iaIaU1WY6B3kOaZTw=;
	h=To:Subject:From:Date:From;
	b=alUHjj4cwOQHNTpiWO2J2evzjO8sRx3fy7nMoSRJGSYts2PtQ1KDG8TsXb7MuI4tG
	 WKhFgs+B7t2AOZto+5RlGNlkMrs7H0oHs64ohSvZK1HZMXXHW2Q6fxchfiMIbiQ2Ze
	 1cAbwppmNRIdDwz0zBeA+Wfb35fxeZt2eYBw67Mx69IwrG+sWr5hw/GISvykB2DIvh
	 HbOqZvB0nxqfUL7SOvvIrtcs878Uf2FyWtTOJa05BIA0RR7phUgzLoepy44h831Itv
	 h1lsdQ+L/xyXLB7zopFeqkNSXE/P5CF4RcG5V1B4/6cDmtFVN8OhkDq4Em+gGbMESr
	 FrZ9iP/aKsV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A4CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059503368.19206.7415571910912016945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc51807dacaa2dddcb0f8485a712929fc2b747a357137fbde0bde6e8d526aec
Date: Mon, 28 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790595033
