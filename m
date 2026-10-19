Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A8F3596F8
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792376434; cv=none; b=fekvARzB1qISz+zVc89vxaLs3U+8kHF7AQjz2ecQ65WIBf3CnAQ1WoKjtL0WXZB4xOmIKjFVFOxjh5r8qM4AZnnj6V2LFml2Ewk0QjEi0g1Wsc0vJ+acB0Xj3WW5Nxw8rEw/VnTd1qWqVnonhE79jCIb9382lio5jFaZzguXI7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792376434; c=relaxed/simple;
	bh=hTrbmCw/zh3qZAn9qzWvPtzEPXu81sgwaL/Q3h+53mI=;
	h=To:Subject:From:Message-Id:Date; b=BNoDS7xvX25R9Qsw2p45Zr44uA8E/zxFj12iKg6D+i45zMk1zN6ZDGeWo2rzRaIfk2XLI6pmK6Xd+ic6u+BjplK5Vx91cknq0TvNlTornkiqpR45hQPyworOVcjzKr2jWvrNDmiP8TBiZdlY4T2N4XuvCixwooXcQL8MULmn/Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhuPffSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhuPffSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3B4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792376433;
	bh=hTrbmCw/zh3qZAn9qzWvPtzEPXu81sgwaL/Q3h+53mI=;
	h=To:Subject:From:Date:From;
	b=AhuPffSDjuLyk2z8NpSRDtQjJM6a5lpyOSa8rjO2NNa7MaCBI41YZMkqaRNP3c/qx
	 0M2KT56geJIUNYnEFFMYFZaY3CBglwCI5UsDXIP3T+A3ejcT+mYHRAIiOvyIniGiwm
	 wiUepSpT6AW8W2beznFtymZg8KuDoonl6iHf04H0ANh/4hmP6lnktVrmy0Jhf+2tSk
	 ZE4rFS6GhWkT3n0T+R32Fevqo57mbOmAMG2v3hJHF6sMJn1j8YTurzINclv/tjoFhT
	 3RT0uL/hHZPqij7x0hI2g3Uj1keLDzie44hFjKOze1TsBGvJ6NPaiMgZMeygsyxBbD
	 D+lDet0s57Wvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AD3CCA490
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237643373.19231.5007976628854926269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83747f5d2a4292a6579e94137208ff2f89e3a94ce1bb809de2b3df7c5c6fed08
Date: Mon, 19 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792376433
