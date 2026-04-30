Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6F82868B5
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777551454; cv=none; b=Pc4+SSH9FGSgWoY2ZYcTZcFgYKRxcgDuhUSpjiTKJrWE0LxnX7Y5yaNIcSUgYu8XoD6uBY8HXMOwdKQV7L4F4GK6b9UJ6yLn3z8AzT3Gri9zRyYjqUWBAND3GsyHfZRZpkOs9Le2xa6sSj+aR8/Od/01/LOe4BgijgRUYmjN8j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777551454; c=relaxed/simple;
	bh=P70x7e1pJdJRotEZJJlfxyvdMNlCiGXCleHuCRpr0Fs=;
	h=To:Subject:From:Message-Id:Date; b=SCYkyLBBfCDZWJT6Qr//U+Eq7UgbEX54TYBehEFJt5GNLtgX87tsj1FDBbW9ra4cnnlDi4UFfTh6ewHpGZAmyJuh+vuzyfC3fbC52UsiTIhTyV5GzZeCl8wRm06P5naifCqnjk9iWVn62Cey383NJdoNawgbgLPFDnTxwgEoapA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJtlgbEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJtlgbEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89B8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777551453;
	bh=P70x7e1pJdJRotEZJJlfxyvdMNlCiGXCleHuCRpr0Fs=;
	h=To:Subject:From:Date:From;
	b=rJtlgbEbR7yFxlMPwWmDcvV0TmECRcZmROxY4WHUj9rwID83yD5TISrKfZ7XOO+5Y
	 313tRr57cg5a1l/X11ImMN2+7pffEobf9gq0JKhDtct12IP10HGS3SWN0Q//hkdRGs
	 FMpUiRHQ4sJtO/Vwd/LrdpXzeDDQAbWpj/kr6JF57fYO4cQbhOKfBmxug3NDJGxyLl
	 4QKbqDwv8MFnBGHF7i/n0wfdcaxMQSZQdW63ABQ4WgwaazHbpd3N+zJvxMhCzPCeit
	 bNMkH8tjeckiaOtVWIS3L7EU1XYbM1rjEZi/q6JdC26PfIq0xJe3MXLKgyEcOVneL1
	 at3TUoIpj9kZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA985FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755145369.5599.8745029447324301044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43d5c6a357c118eec186692a4131fa2c36ab322c9e7a07349f51c8e4c316f23
Date: Thu, 30 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777551453
