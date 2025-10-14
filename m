Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A702080C1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760434194; cv=none; b=KmZf7YeYtEJ4R3m5dE9+qeK4aail7/rykw5HZEtJfhMY3cppsr9cHxxkMsxv87rF0M6rtkf+gVhihkYMBmjOce+xvosBIGkOESPtqqbr54TxHIkuUnBw8o2THGFXTUzjVZK3WhY2A0p31gobgjjDgIy7gLCnK6FFOv1KttOctZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760434194; c=relaxed/simple;
	bh=qgcyTW3sKA1ziKIHXhhiVybcD5MjbvOYyQLsyDlqgYk=;
	h=To:Subject:From:Message-Id:Date; b=JNpGAfohMAslbOWxYGRLioQoH7LAz3yuXwklJeOTXxIGFX165mr3P05EfCYy9NdLDYzTjNnOFZNmP9yLgahNi6tJruiaIiqxD16y+B0v+rCEtmpShC/uROpPd5/0JHLRCDIAeWN34myD53h2dfqGN8ofZ9RyXTIC1cGan/tq5qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm25X0gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm25X0gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B37C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760434193;
	bh=qgcyTW3sKA1ziKIHXhhiVybcD5MjbvOYyQLsyDlqgYk=;
	h=To:Subject:From:Date:From;
	b=mm25X0gjU+bxKWzmieX8tkpti9mxGj+TWjCxOU8QlVo41SIUytHkPtVzoXPyfBdvp
	 p0kRYW9xVudLeODu93iiw0V2uEcXeGgqNR69woDlwFjjIW1xNSDf/7ofbQfnjT2rLm
	 OIudnPNy7BhA98z5yNeOWWXhp2XbqUpsTOBpws4OEGaUdcgnJS08QYbWtcBZD863oO
	 EmAFt03O8ePwMVJiW/d/bzXaUnSucbjtnYgAXjl+MHqzOhj16mBJjkJ5bXkdu2AmLM
	 WKnEp3IeS2BFwRRRzO+UX8+kM5f17o7rPyYTHbTnUFvlBLvRmo+6qPtCn5YRQeT/mw
	 IVVGMUjcaLb2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D7FCCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043419360.7049.1620234703950634465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a977dd249b284e8e1971c267739a2d0c854f1132636bd29c5154b62947917b64
Date: Tue, 14 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760434193
