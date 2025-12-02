Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394C72FD7B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764655974; cv=none; b=mlNWGsTRP7tdfHnEAuLFPdhl7PxtwGLVvsDqLbsWjd2Lnh1MYOTdJdREB5hF/s06RFXzGGiRLKGZj8af1X7Ril5JFAzhh45r9oS/4hwmiutdPzEmhDRVPGyxpPObFVX9k2uLLvNI3z1YW8gLN3gk9g19vI1XkVqEcmdQtX0VHjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764655974; c=relaxed/simple;
	bh=GVlOLkHkfBn7yl1MhXZCuucDaTDm2cLQEim7kI5hhQA=;
	h=To:Subject:From:Message-Id:Date; b=LxHMO46FH98Wvgp+n+KKH13+UBt/n9ZKNs0J9GEtogwwXSewZHOypu8pCk4b0RhslE5ws04xlZyZA6bDpwS+cvBUrxhTI/iFpyD0SMGwR47BWAiVzAtinrpWyG53iim1uxEs0dDqAjyn7Ra2h2iUDRJ5fB/W/oHItJLeMWzIYcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdzFPmDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdzFPmDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B33C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764655973;
	bh=GVlOLkHkfBn7yl1MhXZCuucDaTDm2cLQEim7kI5hhQA=;
	h=To:Subject:From:Date:From;
	b=tdzFPmDVAEtZ3ov7HPx7Xl+dA7mYdAySc8Gsv45Z/tpX1FGzqvD+AcDFJmBbO41Gn
	 wQnjtok+o1t7dcur1pRloELL1Q+qklQLVyH21+nGTH1m6BLigr9qVqGp/UnF0yt1s2
	 RaJsPRUpEpjOP3X9o9NwK3GbwAl2LW2HHkaBNJRF+MrjEHd/R4GWVrrrKSmm5kM6Fk
	 YXhfoyIQBSmzQn2A4ZhJe1EgRIoyKoTsd5yh9AsX/wE69RUHGtAQxb0SgU4/jY6Y2Y
	 1xMkXMmhZDRZfFeKjWkMgke8jO9ZsRm9h5VgI9X4364R7F2GiZDWHfShE2Z00TJBQl
	 CVthIvgLCQXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934D3CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465597359.10793.743786568477943468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4480b0c6811ec9e21e90d9050e83b0301d196fb8a64b37c39cef7483cf2f97
Date: Tue, 02 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764655973
