Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFDF3D3322
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775736334; cv=none; b=DxgxSuYnkGf3CFPOdK8ElINomj3DNYtFjl5GWHCnROKRAA9jG4fDTFJFNeY6z6OWm0yVo3XxMaNm9WxZPcW5fjJ6OgpNfkZYjMsaOQKuDHxB5iYycPJN5NyME5dAm3zgfQZMYRTR/YU50yj3DLRbp05NaTX6Cao5A7nV89I7CEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775736334; c=relaxed/simple;
	bh=W3iuOwjpPtXqrz4ESCMjy/DJqI2zrzhkTXYM1czMUjU=;
	h=To:Subject:From:Message-Id:Date; b=KAJ8FkwOM3M1Wx7ty37i6dzYusr/cX2yrPtGLdgcos3rMKpCCaTA2ifXZk/x4N9Kt96I5LlFmWDlIhJfT5aTMzhQm2M/3s5TKoLRCUpYAcInFKYvUkr149fyt28kfOqMryzIEBxp8AK/D8MN1TOMEznl/lSjJtMA+ITechvGdXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjhG/B7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjhG/B7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22E31C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775736334;
	bh=W3iuOwjpPtXqrz4ESCMjy/DJqI2zrzhkTXYM1czMUjU=;
	h=To:Subject:From:Date:From;
	b=UjhG/B7sk1JD7CDEn/pIDQZEL5m2yRcg3r1bhps2EJU5JLAvNE7Md9Yh9ahCkmX7/
	 I/hAWdmihF10wYikz8FsYh1M+I2J1LiDFznsyJa8Wb1MHxFAQbuz+LMzIVARbnVHDU
	 fwszXF2OXc+jPEUKx4nvB8CY0RfBdDDhzYPbXlb5qRuvD011uLYk8j34hLQRSuYL/y
	 vufvEVZZ3E2QEf58Rek2ePp0aMgpgHAjC7GYjfRO6qmJzSNaCHhNKN8Yc+dlp5d8NI
	 StgYgPYSwyBA8ZGneHXNHpy5onkyaSKHADkQ3wuQqAtvC9cImfGr9jGeyA/KZRJ1Yt
	 cn6pfCIFFReqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAC85EA3C4E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573633394.2480.11583631812810851542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4a709ebd80c260cdf199ebd68392803b6cf1544c9ab2a8c14802ba42971fc2
Date: Thu, 09 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775736333
