Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F9E2F7EF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791219634; cv=none; b=MW2y7TAYAfKYqU9rVIJedx8DZlyktFzY9FEVohEWBnFJLWt+W3L7voXJX7QPdNOIyDfSLhgCYq+D7o6aTBYYdXJeI24zOhaWc0BgqmiChXeemUkKo3bmWP3FQR11wKzDice9TkW84VY+CqNvQzJPQdXuCPuutPEzFeRhSzVGup0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791219634; c=relaxed/simple;
	bh=ufFpqL479NQTLJGhlBONGW8AchTuKj97FKjAT/FyLo4=;
	h=To:Subject:From:Message-Id:Date; b=o/eLzf68q4dQ+PznLTvQVZzyMAbxErIuF8J9ftMBw+kGCIUsIkSn6SkjhO2zT26RAfhf1d6WWL8r1kofmLHINksH1H969StJXMic3gcfAhRE+XO68v0t0bo2vXhZoIodlrki8uCWfBGLhB3iWg3NKQ2TA2oTyw0FgNkVQwkRV9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueK+VAj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueK+VAj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E13C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791219633;
	bh=ufFpqL479NQTLJGhlBONGW8AchTuKj97FKjAT/FyLo4=;
	h=To:Subject:From:Date:From;
	b=ueK+VAj8+66AmlX+TEachSN4gd+o+P8smfkMH1/GtjAsNOlAtVJc56npTzIIaiOOn
	 W8EXrJKTllDFnpEbdRSMA0A4v0aHWI3BXXh3Mz2myHtuBvsEqrxTEbVaJQ8SMNhpaz
	 X1quR6oVGrW3EubtKPZQ1hiHANJfbzg4c5awr2mObesWGocLjTCNb+xypqZ1/8KmcK
	 l4akxPLNgVzfOH2szhIbi5RatXZWKfjlsaCBUMj0JGtMHloDky1BOrAs9Drr6fkMyB
	 20ziVRaVZ9N2Cd0NNTG30IdUzyC4nNDIl9MoBZGNT8bgysmORGliDjFrssRRH9gMSA
	 62rX8MYJtwCbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE93BCA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121963370.18517.6594691541002892006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35be0a107dd6885476f285666cd81793e2b4462535d5dce27ed75b89d28b6911
Date: Mon, 05 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791219633
