Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20734D910
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777403254; cv=none; b=W2ZPijccmM0wpym0QCri1Pb3HGr8v01MavvvAivsP99ZmJnteMm6Wp9xB6j1pRAt4luzMpfSC0JiQ3AXWpnPpH3Vo6r172Z3ccRgoJXUEgcPk2RrPQJ66wp75SkS72/IUjb0JRgvvpngSNxycXUWQnQdti6rv34hwUd6DIH+mmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777403254; c=relaxed/simple;
	bh=1AC8yZhfHoan/8S57pFAqCEdcu+y1c4PGfO3pe8tDtc=;
	h=To:Subject:From:Message-Id:Date; b=g7sq+Ra3mCYY/6AZzHSXnwFtQytvBduBO3iXLZ0PKV0wn6AMt3t0XHDpkMbjFlONVWhFM/slr8zrIIemfeKuUDx18SadQ1tAPMRtB4ta2tPWgcIUAJmZ1s4SSYF/hS8SRVSrxhloKLDRoPK3pfZXHrYSxL9Lq7s6SHyFuuY4FQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcVEinO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcVEinO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE64C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777403253;
	bh=1AC8yZhfHoan/8S57pFAqCEdcu+y1c4PGfO3pe8tDtc=;
	h=To:Subject:From:Date:From;
	b=ZcVEinO6GmXHIQZ6wyNcLJ3QDNJkfMN5lUHfwpd4RMAO/xvy9FUYpFHSwSrqyEyHb
	 e1uZP6vGuKv78Er7/wRGCLlUpb0/+Mzq/C9Inb4kcdDCOls+4M0n/XkvhYuUtnDUh8
	 fQX9BI3dkKsedKKL+Nl+3sLZhODHbS/v3Tivs0zQj6fLlzgRfO64tM5dXaS+GikVmN
	 MsZzSh03HJcr/zUsCFh5zRjcqsjXc85f+WlOv2emXPqUvmazQt0YeQf7ZlUrhEWM4f
	 S6b7w2LTh+FORcrfuSEu1OrpEECbehFX4KY3CWnWjuhdYtFhl6HZNKKW/1bU5wTKoB
	 wWno+bYoGhFnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3AFF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740325368.27135.11513771365587119211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982a7eca7cf63dbc1b7d910d03ead3fe18530673c14a8033ccf886bf99e477e4
Date: Tue, 28 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777403253
