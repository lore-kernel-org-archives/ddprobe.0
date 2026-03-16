Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C860366058
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773699294; cv=none; b=qOgqovccKw3h4U865GbgdpO8iVoWlifJA7cMlHg/uqhIc89a229YkCoEDrBsdtsoGXRDFTUnVpnD8qgxftU9SFCQdnFaSJfoFeku4u/RCZz6z4VHnvHFHMnKEuy7ttys53pmxVKEzMajInb3DF4fWTZgx0XcqI+qiJjmiqt84Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773699294; c=relaxed/simple;
	bh=X/fR5SoocpzBCTgiCD/64589nDog1eV43nXZYY3KmCM=;
	h=To:Subject:From:Message-Id:Date; b=oBq1SWlPdsFbqQVChB0hNUQAZwwsGLva1AF3F/cSlxwm5ppSu8KU90gLO0U2X85wRxoeWArw+eWXtnlMcUhbZA2f+s7kMhoNaFVbd0VJWGQxVp37NavonBMkRa72SEsZJ/+3Q3dYmRJIsexzP3G/l1QwRhWJjXlWQqEh722Mzuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4BB/0Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4BB/0Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C19C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773699293;
	bh=X/fR5SoocpzBCTgiCD/64589nDog1eV43nXZYY3KmCM=;
	h=To:Subject:From:Date:From;
	b=i4BB/0YbG2yQFOo481d8NyFfxfJu7uHCOoQn9zhCTTAMhvhwg51zSXXDrARyRAXGZ
	 tQqeOUP8pbqsTq6tXF4qQE4BffN2M0e2oXI2w0nxw8l+qA0B2xHpaM3pJkc6yF/S6k
	 eV8XzZCZ/xmGKT8ne6Cyy7A5FJCd38pkGXrnte2WLQx+1NgY+Bs2TozXMT7CtoUSQU
	 ldiPQMDe/Whysd9KYeWddT+s8hwh4W52oaWSdE/cMBljJCsp/eVeImwhjWDIMmcquB
	 YX+qmQkjTXmuBm+M8Nxs4sn1qprm28Y2EAHGUlLheAXRCtdLrAdMIn8F7y+rW4t3Fc
	 myF+Zb3alfU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FDF013FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369929358.14655.9779961013963109666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722dc554d87861d0604d20a165a23ce40be4d9c066fc898d20b1d517d8f079ea
Date: Mon, 16 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773699293
