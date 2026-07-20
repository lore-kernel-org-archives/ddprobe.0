Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292D943933A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784563114; cv=none; b=ufSdAVgU+vfljetdbH2X0Y7sBOJUDf+Yf+C79kNdXBr1vyge8lVAbITwcLo8vT06dfnt/NAhAx/IZMZwQq15mJSEGYbKvN1ZZ6xh8e12b1Bp2fcz/DXP7lLWWndF3HSiGG8lWUQGQyeZW/Xi80b8CAdwLnv03iaSnSLZhXxIk+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784563114; c=relaxed/simple;
	bh=B7yaWDCjNPzYUYQ+MzFx+tjjM89vXVWc082HBaj8au4=;
	h=To:Subject:From:Message-Id:Date; b=Vz9F/U1U4p/FlJ33l+X78Rz9Nkr4tyCVYpHau9y8jdgMKInCp0VnGzwhW4C5flU7SybUDYf5duX7jw5+xSIzDNoc6j8a3G0NK/3hkdRM5poUJaNTHCqLp7BCj61UhJZ7i9Z4wUrcWM8AMg+1QrvUZO/x2LWEPO+3f8lAoc72p6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ba5Kz/qQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ba5Kz/qQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC270C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784563113;
	bh=B7yaWDCjNPzYUYQ+MzFx+tjjM89vXVWc082HBaj8au4=;
	h=To:Subject:From:Date:From;
	b=Ba5Kz/qQsJx8qvdlwkS3AtLl4i7Kig/JVCxXAQ5xIidJAvtfR3GZDfbR760EBncN/
	 +5yPRFZwvhIpy5S2nQE5jteBPT4oRD6B+NGz4NTAKHOMAAOP09JBZibZiekR8QYOGb
	 5hS1sLxeopR6mHDYUBrW7lAEuXjQAb0JAtuskuU9zVkVpNYmAxZSUeQ+pkMwLjExom
	 yeIY4NXAME8RERP3tPuEQT+fl+e+tsxrz3QrF6BmXbau33IZx244eL9tBJRY3HYx+P
	 JW22tzKiQnyaIjKbXrbEWVOuPrQkeDmaebYfXFdBx6HUGoTpfeqg+P1aYzSyDUIBs4
	 0UNuW57WjfuXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB25CC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456311369.15444.13421992605038658736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37053390602b31cafb839281519495f5f3c23350319af2cac052ad761494906
Date: Mon, 20 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784563113
