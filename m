Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225AF1FA272
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756960194; cv=none; b=KGHmXd1JrobD7cgqd2oSe10qrdC3ZlncwdrdGsthZvOanJT65OV8EFd9TQqsxiYDoX43XTJ7Fg9F+UUkx60uqs0g/P8bZSIU847U3XFOhzegukCf5ahcJdg5namywXBJwS3Y4rbeNQSdb22iYRcp2Y0z526/Am5FUGIJhLdxTHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756960194; c=relaxed/simple;
	bh=JObaVvGeZWCPf0f3mkBInIb7A+zCwcoimAjJvt800A8=;
	h=To:Subject:From:Message-Id:Date; b=JyLLFuc6QkzZ3puIpn+RGcX83H7eKXSJD2lH14ZA6gyq3zJn8lUIJY5ypyc83XgCVg27fbmKy0TN0AkB7FuxdIGItLv6mjbfuDJu8Bx9PVkPRQr3cHQ22EzJ6hWdrwASjfwAle4KK56vsrY6uimf9cMxinelua4Z5uSGIQg+0UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJIygS1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJIygS1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FCC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756960193;
	bh=JObaVvGeZWCPf0f3mkBInIb7A+zCwcoimAjJvt800A8=;
	h=To:Subject:From:Date:From;
	b=MJIygS1quRwepwSdA7T00Mb1x5o075iMqhhEwgIO/stUuDFSj4MLE8S70K9ENPFEv
	 MLeWXLbxDQ99Sbzi+uy8OeW+h6l2vpVA3uxAI9J58SCHb0XfatHa8CzKvHRqLj//a5
	 h+zbkGl8LONxg3YnLg0b9N1qIanKazEhjKH/s4MAJXAGi+CVo6A57LAENFkyL0y9U6
	 VLAZFI6R0NkCcqsfLqLw2OyLa7KZO+JON6ZLEmf5qymcoAUKsFwtWkNu65v8axNef1
	 N+u9w4n6thbisejXOiG2rmWUp715dNERC8jwE/Hm0Fl5REQPHAYk2vVb8koNuH+bl6
	 KniZuTpf4ek3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E3CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696019358.3056.6605048267711373702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d15bce15fd5d1e713b17cd95e0999cb05fa29b0a494b7964863c206e9ada84a
Date: Thu, 04 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756960193
