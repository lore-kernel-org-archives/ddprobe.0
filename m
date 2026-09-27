Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA7F20C029
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790523634; cv=none; b=HCzxySQK0I5OzTSK3cTgpz8P5W7hIW8W9LMVm9VoYuGOwjVcEqgxJo3IeEKCpkx+kSLbp1iqDJWl+tX+fmFYxn5ooC/UcuYq5bOkQy6R4PFFE0x/Y0XqHXMF6+xrH5CYQP0Ko2EbG0zdHVKA4jnbZs2CzSKcmAEVXsj7m+DklKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790523634; c=relaxed/simple;
	bh=iBUai296asF2hynBjYuhH6dzZTM+udxM02/FH8r6Gjc=;
	h=To:Subject:From:Message-Id:Date; b=XA/h/JTAYmuthCrYWeKrlMMHXEiA10CV/KZxibWtaPBYn0jsNEWNOib5NKOEaC+67I2ApuMwwwfJ7cv23AILI41tUxgyl2+fG8czxXenEiG9x9D6USX9d7g6kDx+ku7ZAJ0HuNLuzNcyryWNB+mPQFluTOsHWGyN09I39Wb3Xw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACidK01c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACidK01c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3267C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790523633;
	bh=iBUai296asF2hynBjYuhH6dzZTM+udxM02/FH8r6Gjc=;
	h=To:Subject:From:Date:From;
	b=ACidK01ce/47WcTQyZ0i0NaVy7wLV6BJSu7YUYuAXkL5XMHERvGTFCc8YitYmHBnC
	 Jau3ibarMwft3APMuAfDtdy5c8Pe/1TgQiWGRgrfmjeaIG/AVaYhA6J8I6Sm9IJdIv
	 KBkYleqP5o7DgyUJB8ONA72iNUzDNuUOm/+yd7opJ3KQA/FOHmxe7CF6NABkcjZs1s
	 Nm/MJBDPUJ9F7uFoC+yUEabnyWKxN9WNwjfIPhRC2oLpeMVxyfOMgXZaBbH06SSHOR
	 PBDExL6SRrv8T2O/kJzbPdLNAGyC2+aadinP20PvoU1N0ma8aipjF3ng46IsAmiFct
	 voXLJl2bjLV9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB7C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052363369.8770.14874744098395855960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5168eecac539b01b7dc34a6e25b5ca4a53f75b4468cd3ab3c7bd4d787b2eda
Date: Sun, 27 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790523633
