Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228991E1A08
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733231754; cv=none; b=qYMZTehhV+fZisll0UVZyI0EOiLZ3dVPmL8JhSYHDtF52drVQe4fOTpAeT1jy2FmvN2P6UOIIDoBTAK3ZETldv56LpO3klHlFEB0kKq84ax9PxgmVDnCO/COZqkU5XLQKb6v0iX+jvfE1v86tjRGBfDP0ae/WkWPLMBcuMhg8Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733231754; c=relaxed/simple;
	bh=xiVtCKw3pHG7QzDTk3dgJHwI5FxQYVInq81Bddv9wCg=;
	h=To:Subject:From:Message-Id:Date; b=ZDMD2Zwae3SK/re9gKov7sJpMrzBaaPBVckTr0OGFFQP1w9ofOCZ/owkztfr0M7Eo6tkbC1eBaVzArlWl9KWZ/IrNiGeNk14GoABz5ezAbPWIrubolGsBm0C2XeeJgWbjjF8jiS+pT+PQ9le0LnBmTiXeN988G03qlchj52Y3EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7ilXT8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7ilXT8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D46C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733231753;
	bh=xiVtCKw3pHG7QzDTk3dgJHwI5FxQYVInq81Bddv9wCg=;
	h=To:Subject:From:Date:From;
	b=W7ilXT8gss/fbuezzxcILFef+LfVzL/pspKtLUD5LwWM8BeHAuklxyRTOEvx5Z44Y
	 Qbcpg+IShOZK+eNJw4f+NPh7KEyxvik9E4RuWFzXrWNj5JTIRgNjjSUXGrawczR3xi
	 R7D7zbnFwbv540eksQx5YM5gXJGWfYBKjwjenCInPMjjFK00Edj7UqIOQO3TX2T4eD
	 xHdkKTrHg4eEWrLpdrAT+gpJvzKV6LCWoH5lK733NU1bNFnDdXSoycBdZ3150P7o72
	 3xtkQM0XCao+VDEIQqfAC0d4cFo3wPtOmvyt1ZKtK2B8j0qdS3sx/nbhWPtbYGch9C
	 UeCiydyRM+fWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B1E64A8A
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173323175358.18448.5703959486748092652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917eb295064e28dcbe99969c598876eee7630cb146c0ea8778dffa61d2fa485b
Date: Tue, 03 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733231753
