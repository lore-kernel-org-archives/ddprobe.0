Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D913A6B8E
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788199834; cv=none; b=b+C8WS9//2T6ho/b4Dyf0T7JBiyRiDEojd2FmwOlqfURKLz/4fb1118IA/NxCngRzJTrAy/qR3rJjhZxixWxLKvEo8BedGl9b02LQfXTV7UogN4l3GVTcE2pbSJ65n2csmRbkXCalDxnJCXq5B7Ru6yZjKsSssTbbZfDADHrBEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788199834; c=relaxed/simple;
	bh=YY5FGcwkw1cT61C3bXAikwl9QqatuPTeRpjxhDREy5Q=;
	h=To:Subject:From:Message-Id:Date; b=Q2N7Y6Iu/Pg1qENhtibsTY+HwGNZyJkZQw22lSonWnioLd5kLeDUdxXHK4RNrFid7yWKHKoL0o0lfzOEDIGxWoF0XQ07lUIUzSN+qdvMqvmOK9Lf7Hgj0Fla6dquYnrZ4xTwE3cPiWWtG/6twKlk2CE/kGmDtjxVfrHxuaGfiV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fP3pOj4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP3pOj4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD7DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788199833;
	bh=YY5FGcwkw1cT61C3bXAikwl9QqatuPTeRpjxhDREy5Q=;
	h=To:Subject:From:Date:From;
	b=fP3pOj4SpzV7ytt4OYW9yNW3uRgPbrOS7mhe8yJDM3EYicb+MyzDnrAWdSz54JVTP
	 i0OjVTk/965tJEi3LFKxG6bVFYjmWj7ERDrjfT4kb8SSRpNCoVZLi2fV87RBhl4SfM
	 pyPgkmNKMwJceM74U6eaYtWKRlfb2m0frY0nhHSS1ZYEENR2tXFzBjh8KiJA/1Jbd9
	 vX9O+NeGy1Y7GtfOOunkARc9ge0F3EzhI4WiqQWLpWIzIREyRpIMNCb8VVWYJDh5Vl
	 SSZpBB5cuPMGePfwQUYKE1cN9Qn6+yOjENNiJ3YO+iEf720wro12VuvtcshqwRTQOl
	 MF386hOY5EPag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3C6C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819983368.28556.4166426023593259747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784b0e49c2110b2d89bd6a42eff5322530f504ae7fb35ea9cf5b9ce7b6498304
Date: Mon, 31 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788199833
