Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424E586352
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752947995; cv=none; b=sk45vJW3TdzAY9Exd3g8nTvVsYEiIYKQ7210h0oDjHq93JFFWOJto9De2cqcYt20f2iHTJak2KYWU64i1BEjcMxzVs/twhHR69T72aJNBOKEYDXxc2lU1ZmAruFGAG0mbYylU1ZJqRg4zPAQxMHA+xub3VAXAL/iKVdjjbyre48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752947995; c=relaxed/simple;
	bh=5VykJWgAlZWFzpTk/EdHLb5QYIRbsyKZGAs41YZhHWw=;
	h=To:Subject:From:Message-Id:Date; b=l+Ovuxfaw8C484unpd7fBDqsPM3jF0A0YnkUa8DwY1va199BM6HVEDvPaREuJFQxAvlSw0h6kQadCnwoLJLF9wlPNPzcj3kUlYwIhO/eo0e+lPEV9YfCbGJd4VIujxoBvko8s2q/HQHjM+6FQqOHHOKCkTJe/zxuqVn59oYJwhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYHCNPV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYHCNPV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6D6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752947993;
	bh=5VykJWgAlZWFzpTk/EdHLb5QYIRbsyKZGAs41YZhHWw=;
	h=To:Subject:From:Date:From;
	b=lYHCNPV0PSei/M1aB8lCTVPAan7y+sIBbOhmnVFlzu1U7SJIlB5ZwBCNSwbR2WUnh
	 am7GubQq30gfARGy2It8FqRbqoG9pHo/837N3/A/oHZuxGfquY12/DAGHzBWjfDBoc
	 u43neC955Uo3Ytgy/WGgnv3KRCbBDbEt5KdZAbUQyHBAYXPpXjehT+A4Qec4terh2/
	 /gvDwJWC2J8OsUctvAZEEr3c3d3ayahhCYaF7+Bfcv/aFi/5zhsgbdh4dJmFVPjNB0
	 IjIQYYeXYn1WUL0SmbBd4ZpEgOi95T/39V1JXMiEZ7a/5XOfsjV/edabbjtL5LH88Q
	 rpUDUPvlqWHZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99697C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294799359.10906.10165880853790650673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54eeb1cd5d051f28af742eb5e045106189e4af63bce767d5eb840699e0ed51b6
Date: Sat, 19 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752947993
