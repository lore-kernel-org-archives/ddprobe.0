Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FE1311C2C
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778760034; cv=none; b=TAHKwl1NyjKspjaAEf7KpC8MKuq3ik7l1ru6R9xeINTCMlccGdL8I/zEGVnK6rOJqFcnETL06+I/JbKp83Xe+PuRB4kDdvHhJtf+AVPFgMYZ7T4AV/t1Lfyt+HwClLvuoAYyLNhcsshjuy1tVmWXRpjis8KCEeYXy4Woc9I0MPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778760034; c=relaxed/simple;
	bh=RT96FA9ttStOkKAqawRYwdX6PrjBjXwnZoMl+e3PiXo=;
	h=To:Subject:From:Message-Id:Date; b=s9azEtyboJSz1rknJSBipUBq9zvxcpUC+PFgtEU7bcXke240JINjWcghTmTkEJ6n/Ph+b7B+MIjeOopXYfn5v4PIEG3RLso5JB9Cq37Mwop09ZJRWvKwhSIovupHptdAnFR1OHzhb/8zBOgRA2ABucf9LBqBVQJnIee6sBDE2zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWHuayNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWHuayNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC91AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778760033;
	bh=RT96FA9ttStOkKAqawRYwdX6PrjBjXwnZoMl+e3PiXo=;
	h=To:Subject:From:Date:From;
	b=iWHuayNqwg72q7ZMBpM4q1KW9sGshmf2XyHJ3VOOFvTmok3q462C+JvgZOMkhRtmC
	 3/odf4QYtiGisXuTe0P/l41eaJmCmPw1dI8i/sI3Iy7vRF9tTx6lM1X4WJiBo1vZvf
	 tTM4BHofr+lErzUQBb5u/HGZrvj3Ymr9GPLMPA5Or/c153n0GfkmyQW9UH+jYGvL2i
	 hjba846jwCgm0lEUxrcrwKomJNjZLlAtGbcRsrKcVtDo1QsSxrMaaGNXhzVTbW0MxA
	 ZQdRV164czbkVThUgxsDux2g9sge/WNwrZD24T4rQdjKP0sl5sfma99siwa2uXL+GE
	 4KHuz6CBMMc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9A4CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876003370.29570.6791555583851339907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f37e7a53196380cc7dcf306a16345af2cbfe158f8c233a581cf31c4cb8686e
Date: Thu, 14 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778760033
