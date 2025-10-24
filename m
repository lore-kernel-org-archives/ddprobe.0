Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98DB2FB612
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761350393; cv=none; b=lDOIauwER/nUwRGpKGj/XOxG8N5AJ3J1tEQZji5DtT/23QGIZjCGfjlQc5ilXLkF2JEP+UXzaEQd1dL/BiY3u9bMOpPPemr96hbK3CARXEg1DyIfyM9G4NW+CtFci2fJD2BtP/WORNVZnNHKSC62vvLeXdUGQQHTUhQhNe2KpbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761350393; c=relaxed/simple;
	bh=YNysV3RjdQ/WAr9i8VDikDLs1Vtyp5K3w00vnKWf+Lg=;
	h=To:Subject:From:Message-Id:Date; b=KrCaJbmn0WMcH7JBBEZ3gHLPI/DlBfsjEvMhGktQtsUTWNMr/UHaOaqWGzcjA+7gFcODpJdpcOleBpnAVe4vY8VIeRuEemrzBN4XatkFj52I1Cfa16SU+iwI4f+j2vSfyxolt8qGO9EbQ2h4D8W/cpCtGSOCYMqdBZcXuj33x3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swpnL1b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swpnL1b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF2EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761350393;
	bh=YNysV3RjdQ/WAr9i8VDikDLs1Vtyp5K3w00vnKWf+Lg=;
	h=To:Subject:From:Date:From;
	b=swpnL1b+8OmV2NFNMc+EtoONGvyhtNvGgKuBJhEbAXevO3ihS13HmFooVKWCp+HoN
	 oEk3RXJBs/TDQNXyx7JpMMIEnGKyXjg/eaZaTHn8LCwOltpyVp0FI26rZKLEyYMG2l
	 Qi/yyDT5enbVgeCYuMQ60VhboSX/YKz8hFhu6cHKYdJyZoWo6IPHjfEVJwfNfVe1/s
	 q5MQkYDwwe3PtWF9+91EuBoErKDldAcy9oJPu/o+cmvTIf+Sf45T7BJRDb3UoxL304
	 7EiuHrowlj9HB6U1qQ+GhIlMmD98Vh3ON3I/4sL7zOWsjZ0iLiJi8lGD0imKWIaWT+
	 eSVgVwtSTJdmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944FFCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135039357.22598.4957542721201352082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b2b8bfb3a9f6af2a1b1786354bcc83f0446f675fd7cd602f97260e264a85f3
Date: Fri, 24 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761350393
