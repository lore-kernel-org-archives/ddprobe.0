Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6CD15E5B5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730573754; cv=none; b=L/6bzE31NlCNRTF7fAJ4JqkwulbaFXYEbPFufwezD2wbQA3o4OwEitLAsfm3JL5IngWmpDp4yIhcPZ5khXvCRmjMEYHJg1f/ru4uJmw7n7d2iLiDpWSNa0caVAJW6kxEq9It50ThCApwKvoxGEPixM0cX3h8rv+BGss5T6dGE2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730573754; c=relaxed/simple;
	bh=CCZQWYfqcE15qyDdauE8IUmSQtlpPfyzGEMUflnfjRU=;
	h=To:Subject:From:Message-Id:Date; b=TvvcY9XDOdfJK2Fx14vimvkYivsTF71FOkt9VFniR3dtwgAj/NKb8fNMrz5yc3Z8Qm16wQCmGnGBu2x09ui3F0bCGmPKw8AlEfGGyleK5fLRv9SnUOhXMyOhxyROIpHToRiFdNSObY3WrnRRf0eXTuERHq3Lv+2WvX3X8wnU150=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYIpZHbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYIpZHbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10F7C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730573753;
	bh=CCZQWYfqcE15qyDdauE8IUmSQtlpPfyzGEMUflnfjRU=;
	h=To:Subject:From:Date:From;
	b=YYIpZHbh6JdFTBdtNvWlVfMEU56AKG5xNW7kgDS/fDLm82RyuW6NRan1yV1fucedU
	 FlKb1QZjA1t4ELlaFMNQBo1kWUUsoLTtIpH+exzBRDNSMXq4orBlIYbpnBX6a9PpSg
	 qv3rQKrTUjsiPwItvmWk9F3tHBU6bUokCHQoG6EE6Qk+XGLbH9gfgexCFX4Oz55zYT
	 SjC/WD5XmKXgkkcNkxHEFRAL1Z3DL37wNeRxXy8p4NW9KYvu8KZIb8Zk2E/JR8Ls51
	 qH1oqw9/BMqtUl7Xur30TZGIABxb4uZBpbyqM9oqk05DqgIgypygKHsNHiwCGL5Zwe
	 H3XXxcEjhCbew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C57BE677E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057375362.12240.7887705770668411880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796f21dbcf7b1ce3f55f4e92a1ad6bd2141227ce6e4bbcd8ba759abb4a9a3631
Date: Sat, 02 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730573753
