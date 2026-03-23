Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA134414
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774242294; cv=none; b=oRoiJHYlmV7aaG057UjOfil11sjeSclSUtJI/4dPxsNHUR+dosvBZhtkhyvxZEJYmxQwb3TDCFJNaE1b8hDn76TdWiB7CUS58EHptLVe6Pt+xNwLVPHl/20jtPoDlmgWpnF8hCJ1mK+4OkSHIYaYkfWFfzft+CoKIDckPitGzJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774242294; c=relaxed/simple;
	bh=by744QCoFXYaomhlGKDi68KP1IK5gbY+YohAD60AV0c=;
	h=To:Subject:From:Message-Id:Date; b=beXPS9J3RGBZiNLbXOIiFjUKS0h4NvGUQv+jrh+W1CqFIe7eVlnEg+3R1oz5smhOf+Nu3atc6VX4du2kt3cX0RUaQkKNmEkvaXUdiUtL8aqMVpOaBtylRcDOhjK9A8LlZaIogWaF4Bx+2IMhXrcQMKAZpRfrrfYLy6LUgrXdnrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgFevTMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgFevTMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22D6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774242293;
	bh=by744QCoFXYaomhlGKDi68KP1IK5gbY+YohAD60AV0c=;
	h=To:Subject:From:Date:From;
	b=CgFevTMQ2PDmhAG0trSuFDp2D5Vyr6Epe/QZm4VROhSlTPMej6nDaRm9O2dvRpPtS
	 y9UlK/RXLVLAAP/X4QAguw6AWnii41RUu9oT+NRpsCRp5VFRDNJT1Phr+Bhc6dZJes
	 y1chTxpqwgSPqp0Zy34AhyGzES3v8plFXQLAu3jh+eHenaHZUzAA6n7c/sImkozHKs
	 JTBb9kUkzr0Y2FhJpKaq63knP1JsvsriyodX56OfizM6i0labD3Za1CXF/eNecWQF2
	 2Mne31cr1j+IULkWzDM2B/FNHRKY39pgKEEQ3+0dRGEkirfWSJM70qsI0yCmVJ9p64
	 lRK3CVBzjW1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B959D58CD1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424229360.30310.9715940705238625535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e871c14bd84296e2bd09fbe119cfaee02f8d20fc6a399853df66406067126034
Date: Mon, 23 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774242293
