Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEC93F54C4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791144634; cv=none; b=VjRNXzze0YsyWslv1Xivk/mkNhSmFrzsDH6UhvdgZPZeBBf6KjPy/J73VXedGWDbtEQwlSUgA6i5LkyHaTMw0MI/LSW23FeaidZx7hygL/bELnPua9SKB0tkukhecmeXmZpEVLNieTDtoKVpFmy07kkPFWGGf9eZ3U8dux7WR2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791144634; c=relaxed/simple;
	bh=I3BaDz+rsGVrWn/xRPQ6yD7K3uQVoyx0EuAFcFuRog0=;
	h=To:Subject:From:Message-Id:Date; b=f9DeTwm8J5Cd6gMrn5uplFemDiLzNr9XCbq02mppYjLqvb3sldrhObOU9XiulowEMnttK1gZzfqdWqAxxmpB9PyVOfyLUIXF4sH2XqcvbHgRuzcYyfRZVmcg3kpY+lWxao4JUSr+C9mQrqUMcy3/OjB9lZI082zv8CfKZV+zY8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDy5gUVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDy5gUVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3918C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791144633;
	bh=I3BaDz+rsGVrWn/xRPQ6yD7K3uQVoyx0EuAFcFuRog0=;
	h=To:Subject:From:Date:From;
	b=ZDy5gUVd+/Pr6rz8EOUnsjAuHmd5SUbHZ7QpJxb5P6G3mU9gleLP0uBDN+DZNBxx+
	 QhAPmQDLz1gcE3jRzYeyZM9gRIJ/7bc+Ew6CANTqDaR+VOqvtVGmD6CMK9rkRhQFn8
	 WTH4Hj34Nq+3frLH6Jlm/05fOzS68lRSxANJCE5LdgaVWvA4glBqSzk0fkWhxB8Bdy
	 1kJfwcXphANikNWmBvb7vCe2sx6rS5FlZhCBEiyNsQoD9nxEyHr5ZFXpinCynr1QUA
	 Ko1pR8sziQ/X3P/QjYkyqy7oshI5GkiEh7tVAoqdR9Fl6Gjcy4dfGWoMWsR0kvsSir
	 wxkBIgCQf7GGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF8BCA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114463368.7682.3936557480001209679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2943f67e2a2da45fc7033fc23676b0c4a2695b86076d38e3f4858c356d4e3b
Date: Sun, 04 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791144633
