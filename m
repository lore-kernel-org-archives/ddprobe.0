Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054B21D6AA
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771217694; cv=none; b=CLHryxg82SvLEaKc15RMeisNdPR+dH6ybJ+hLYp17AuldeFgpqzK28brBObWFzeBKGme4eaKZMI+Uzw7HaADT1hZsJU3BpH6lO/SRZaYXba/9NlHCtcZo0xkx1fN0rXOURuunRI6b5uXC4f/DcRyddUjdrSjYYglZTQZjjmeiCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771217694; c=relaxed/simple;
	bh=OsAwl7zv/dK37D+d7SqYTanjsUGpWRzJUZvCtf01be0=;
	h=To:Subject:From:Message-Id:Date; b=Ro1NsOi3UtTtGThlLKZnAiyoQoHwmgx+AuRCMl9nTKWpBWw5I6CdYcEjlXAFUIpPkyX2FUmOOY3/DyijZMqSS2Twj+nS9SQfr5kfBrqGFB3IWtzZnEOB+ps0yFy3rfeE9h38lx5nB2BTb7+uJq2JPsKpFk6d7zJj1SkhNlZefRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD1s9Nxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD1s9Nxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F0C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771217693;
	bh=OsAwl7zv/dK37D+d7SqYTanjsUGpWRzJUZvCtf01be0=;
	h=To:Subject:From:Date:From;
	b=FD1s9Nxlg58IcTjLcDVpCOEkYDGd/Idf3CldAGuplcrqNvEceOPxVRoYEQvqTsRw9
	 kpRGc0lh3c46uVvhEGMbhLU1WsnXRB8I20fa1V9PFAGDjI3TSoVPrnlFEJssYCkznX
	 9gUmcijBq5yWNVjTpnM6nrM2A5WDz0r7o0oaFg2UDf4z48OLixeGMr8525TEvHMh0S
	 svvDUOEtmUg/8YVLWzUDcXmJ9baXwu7Mw7/MDjyOVz5OaZ/sYOKTEUvMGZlXmX2dSr
	 YJgqkIX1Ba6Vdhqy+2xBx1ySDweE/fSXVHiRl9xf0IlA3QN7osHDuQbV3vjow1enNt
	 j5YkbEifPxiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92889E63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121769359.12684.17341254499737403765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b23c490d6cc53b08e2c25469c52cfe6990a715ebdb7b701808a6ab612206a5b
Date: Mon, 16 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771217693
