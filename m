Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A5622156B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766823234; cv=none; b=iRpbddKvTAM+zmj9vVGXKVSMtd1pAph8gWNyfmg4N9y8NclXQKIutViJv+q2b676dU787aGQFTDsvc6pf0+GzH5phbBjCEiC5AOhhv/N+eGyIr6dnCqRWGPBnoUzfN/xE7jUCYF0wH/HGg+OWsWIqmgd8XE5WtsWucdnuE+hqY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766823234; c=relaxed/simple;
	bh=IKvANSMAvt7vMtoE8fj6LNQ3rcJr8F+T8md+M5e0M5c=;
	h=To:Subject:From:Message-Id:Date; b=WiQhaRqkhFWEk+AHlRtublseGFwp8dGg10Op+jpKERzSNlfCJPNrRvnhv/cG0Fobqg7KkouFtSTjFlzuREfNOty/9toLD5ttQdkDDCxXOYzuMLoAZVuqElDrXuBXPCgtkoLyGon/AhVq3Q7HK+NcnnqOYBms6eOaSHgzRl5nKWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMpnmPhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMpnmPhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE783C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766823233;
	bh=IKvANSMAvt7vMtoE8fj6LNQ3rcJr8F+T8md+M5e0M5c=;
	h=To:Subject:From:Date:From;
	b=sMpnmPhvVP9GG7cmPf05vVo4tP+0qsdZGWn9uOk2D0uwzzKyyfKgrQicmBJVW2WBW
	 8G/JP7s2/sBCyoiwkG/wGr+LWJwHEFj9ZsNgJA8xRCAFh31+uV9wFdi/wWdo2ArhtN
	 fJLvPcIE0GsP93DoY+OsUFwQGghKY3LDCeK4/vQTZTuCcT0iTpCpAHfTsggal+6TKc
	 gNPBmuOAn7lPgxGLQOWSUoqvcv9kN9puBcdhZaiRDSF8bllZwa1pxBjL62Njg0aRbs
	 oYuQUkpGOzF2XoB2TjoKSHcZaahPSO4K9FGNcQQZUvWIX2Jg40ZkykkfDXLLjONVrw
	 M7rCL4p9lg83Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B4E8FDD0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682323358.1782.3579981404361307476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2776a7f22299d8e3a69bec8470eff9ecea4fadfb9e2be0f6fb695b221d2fac42
Date: Sat, 27 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766823233
