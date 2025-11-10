Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153591CAA85
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762766994; cv=none; b=cQJ4rKw0scUIaVw+DYiivaZSyIo3BtGFJsjHyq99JDSPlElrHh0vjwDOIQ9TW38gZDbZZUnnEFNO+X70QnHzmvNDn+KIMWujTKaf8XSZ79bTuUut0QFM/4+iAVVCCmzkH/BbqkMO8fxgMt6zDhs2UX9z0m09/FpnIhYV+nsT0I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762766994; c=relaxed/simple;
	bh=Ym5serKgzs+T1zMLRjqV5VT7eet++6cTNH/hBA0W00I=;
	h=To:Subject:From:Message-Id:Date; b=ZTQ/vgWEC9gRDEoRd+VOoPiD5JbitrwjDtnGsFmpgXaC5JIetflvyib8Ukd7ILaCt+Uq/ORpKSxAQx0dT9sjy8uayb9H4zsG71XdljVt/15VDgCOuMwOAd9vXj/EnaVl8cbRe0//mi9fwkTXhEHLGef1b043f+VAq97zSiQwcW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGlDe9iC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGlDe9iC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33D7C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762766993;
	bh=Ym5serKgzs+T1zMLRjqV5VT7eet++6cTNH/hBA0W00I=;
	h=To:Subject:From:Date:From;
	b=AGlDe9iCgoHz5FIs9Yrv35R9wa0ZP+3fB+IsNc0kUsZc6x92M1yJlBrLZV8p5hWs4
	 HGJTT5f8xLQc5HOsVbw2DT6qS8p4lUKuQlT98WUsIcpJ4DTYZ5rD2fLZCgyT5I7uub
	 hXZgGiR5IrkdmbG67AVNM8XjL0clhtktHO0p53o38k3I4Fidzfm0MbePL4OHLhe/CH
	 ZdKksKC6L059mVtEp6ywUKGF3/GLsmq80yaM5PFntalk8aSrkjiJWDmYuxKXhX2WUI
	 Eytrfv6pWlKtnNrkQmD31gfcrlxoK/7MVyNyCQSA8nij+yNUrsMSirTc/lyhAy657i
	 1GHhVtBYXVxTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF2CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276699357.24865.449064403884287838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf84a721e556145f2174ab47c4b446a871196653f6efaa0129e18b8f0e851bc
Date: Mon, 10 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762766993
