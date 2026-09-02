Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023374A8A23
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788364834; cv=none; b=rColXGU0GAlywBrkBXyGgYE3CpfgyP1Hy/mmt/4JcAQRzWxjXzudhqvOeiPQwvKJRFRSjDpmJuwAW1w4w65pV7TWrVlS0UgiOGnZkeQxv2a+qqZo2UaqS1cg71ePH8qVwM+e6hCFsVIwk9Sg5u2wSCqqS+opi+P5HXtQQjQpOHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788364834; c=relaxed/simple;
	bh=JvduNvTu3/5gdamO3S1MNxZeTyYCthuo42T0pG5Ovms=;
	h=To:Subject:From:Message-Id:Date; b=cvU1K05K08WKlLhQenPLLl8ZXfOUUg1JFmk89HpTFZ/mEhxn0lBtYqwwZT3T2LC8lJGe+t/hjjkxvlFS6oHc39hoZsxbIS+8CgZeZjMVbm45ZiXmtPygoOezF8Un5elBW0YOUtllHnN8l+XHNvx6sEeyUnlN0PvonYNbiiD/e30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJUT9Tz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJUT9Tz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25F0C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788364833;
	bh=JvduNvTu3/5gdamO3S1MNxZeTyYCthuo42T0pG5Ovms=;
	h=To:Subject:From:Date:From;
	b=SJUT9Tz3JkKbJJ6Uuz9ZaSn1woqyX2L1wn3/s0BEGfiU6pkk7FSgQW4c56YBxuTDX
	 TfGlxJ2jy4aZXuBU5jgR499z4e7dx68tFh2DaRC+r4i7+DiYfhahIsk9vnpq3c7V3e
	 1VF7R/I3e4BluAs5R1ImPOdgVqCXC4Lzt72M+8CQGaNawEYB/gl67nLUTbElF5O4Ib
	 cmyg0donEXww6y0EeOo8o+AIMmpGQcI0gcuqJekgk5VK15dp2qnDlGxuA1ikyelzim
	 ySqN0Xdt/PQ8ajl3HV994l8m7XTzcjcRRA6C6mooBs/OXyQET0pmH2BxA5x7ku9TNh
	 urKkNS9r78rIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F8C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836483369.5151.13933340929931855797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5caaaa3e615c877fdc552674acc1b17329cf8bf23a82972851043eda4ad0b09c
Date: Wed, 02 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788364833
