Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9671EE7AD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740991734; cv=none; b=qKNiMMYE9dm1sRoDROKVPxZcSWxUCXBppQqQSTzSXJkzUjRGEOkk3l7jGVsq4NKUhgRsHY7N58CJQxTkxpnfEbcH0oBzf/yXpay7up0ESwrahMMvqUZuLTGEL08kdy3CdLG1JQ0lTP3YIWaD0GovcmXi+bD0WGHY3SYQ1D23j+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740991734; c=relaxed/simple;
	bh=PIVr0OegwqSrdGZTw0Spu7gYqUsZUDA58BX72Y5gP8Q=;
	h=To:Subject:From:Message-Id:Date; b=YDbjiyRELz+am6oWRT4vDLZ1fHUA+XAMjmS/2eNE8gzRdGvTWRJ7XWB8X7uaH14X4/wxsNMi4BWXQalmAiZwWUTkK0TTuInltNEZ+p1GXi7EqHfSxVdUI5ao9aVeRgIa0VAkyqA3orBZ5mf0KHy2nuyS5uqySMaC/Y2A1u9AilI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Glcm/LDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Glcm/LDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F98C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740991733;
	bh=PIVr0OegwqSrdGZTw0Spu7gYqUsZUDA58BX72Y5gP8Q=;
	h=To:Subject:From:Date:From;
	b=Glcm/LDOC63ogEGW8AK8ycZob2/6by/7eVSv9K5e6anJqElEqIi1Bw5utp247M7YU
	 9mHw5hR5T3zfoS+NWFvHnPn+ym68OLQuYXeDB9MTvFFXsiKvcAJBeZYkkWpShg/WkN
	 X70NqMHPFI6fo0C6qs6GRJxlJBIRIBLYBt8fVoIRqL2lCWQUjzDTtAC6UstJXvdgV0
	 ZQbAemND+h+K1ar5SqgBOBG1UN8VSsRYU8z/EYAfp3JSyvlJshnPfWtCZZ4ey4RPQk
	 YGe/YleJkepPcl2D5NLBiZhDouuW7cN2cjxCl5eYKF4ao0wPKKWwgG1YHDqfbSfTnv
	 XhJJ3B3udCoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC1C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174099173359.23598.12176550414909401679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31d25e7cb66814f4b8c468e2cf9eefafb1a4d6da56eff145f663ebfc2501cfc
Date: Mon, 03 Mar 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740991733
