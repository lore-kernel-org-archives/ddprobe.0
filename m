Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE9D523D
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716010343; cv=none; b=jVGNX4z9VY21mEy76G9/kVPWL8PGmshTNgTP5mVq4gOumwZytlDpTg3+FfwW4HjSTxojuhl0hciZmEEaivO7Omy6pZ9xN43ifvqSnE0iYlN1IINUZ62TQHJvpEyrnWVZIQdNX0ZFjtM7cVrmEWTt9oWe1Pw1kteQ03yyfoCSZyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716010343; c=relaxed/simple;
	bh=9ztcuV42bx/z5LoiRynbDkSvDvLoHg/f9Gnar7/U0/4=;
	h=To:Subject:From:Message-Id:Date; b=kMJSbI8G3vbjZdezA/8jTparqRkLhRht+HoeTFNG6lUQikCMZtme6TzmmY+MrbdTEgiF0G67TveUMKH/qPO2t0BGtSoPPaMC0ebKbQX6B+43vlR+NsUIjvautc0ghTkac1K1jdfTH8275Xevd8QcqzQohxfyqAGf445bqqZDYMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKsetw+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKsetw+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41B0C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716010342;
	bh=9ztcuV42bx/z5LoiRynbDkSvDvLoHg/f9Gnar7/U0/4=;
	h=To:Subject:From:Date:From;
	b=VKsetw+pJ1r7airOUvCOO1+4QPuqjPr+8u0BSeHy5V53yzteB/idT0gQeTmGGnzeO
	 Ns8Y5Yob0TObmJR5NWIJnSRV+FazI70AlDHpUPfT1ixixoEPQNq6iYL8ZQSrplGuXj
	 N4Co8rUHGMgJYOmBAMIjwQ2723KETyaVbeGooSYLbv3dnIBRSLcvE/7PIpLmCmLxTD
	 gOYp0gOkZpu9GDzOWmjRlZGdd3yIg6nodGVgltirrtFJVyFUiHub+1fEF2+We2uvit
	 oC3e1+ZGv6Vf9bCQxKruL7Old5NwF5XrxxPw2x6EGmsmtrd42XzAx4ZX8fMENGWiKF
	 DNWUjSiPDRvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF7AC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601034278.31980.8354099861959558760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf4d244f50417dd9f51cb3276de21f125af5befa3dc06b52da6a4a938575a81
Date: Sat, 18 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716010342
