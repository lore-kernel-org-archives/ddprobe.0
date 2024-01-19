Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1ADC818
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705625297; cv=none; b=iFlF9/NJrVYFpsWofQZyxhmXBLEQtFcdEJ+yXN017Ug0itLo8XodGosa6l+AmDTPH0HNqDHERi/H/gm7jeV8ka2Unvk6cSUSCLfxz1pYriqOzceD7Zi7VogAb8rcHqqR8iaX6914obYQWpDMIgsEyvfBihpvUMq3ONkOoUZG5Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705625297; c=relaxed/simple;
	bh=TYseQwfZU/c3L6euUkA+fduK5oW/0E9Nl+C8wx9mUPE=;
	h=To:Subject:From:Message-Id:Date; b=ch6FcuQ8d1YkFmOPHc9lJJHpphMjpkjrFfUZyuu+AJDrIdsbW0FbjpjBhSUCFiErVJBv41Fo2ho/OvQw2PGlROaMXZ1VtMWYd+Vh2OrwcRxTq+KdPVVM+ZqtR718NfA9qizcCrpv7qcThuxzcX6V44y3HXV9aacS1T6ttSgN8ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ds3pqf+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ds3pqf+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC84C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705625296;
	bh=TYseQwfZU/c3L6euUkA+fduK5oW/0E9Nl+C8wx9mUPE=;
	h=To:Subject:From:Date:From;
	b=ds3pqf+fYrh6KNR1vjEWacT+6gYpGwHhPW3jtIjKKIKqxCqwflvHF2YmTuM4BFEOq
	 240pANEPWTPnJyk7XEc+nG9teNHAE6QHcZwFTBMzvq3GEEenLogtgezM3KEz2PHS6t
	 3UEPOG8f5z9u7kb1AmXiJdcfIJ+3/Wupjn39WEIkJ1EbGLolSgUm6YOTbfmwj+Kgep
	 B+0JxpfO1qu8ZGNz61aNYDakic/9bNPW7rDodUntdObbDiK7dnHWgEQeXlq2qVJ7xh
	 yNqhjvo41dakq2vjsMuxPOBZZ1p0ztAvH1ESIqAzNe4+7BLeT1Bpnk9E4ygWGYD61F
	 nWe2Fsy0z4JlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFE6C47422
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170562529636.8996.14319691073234629848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38bf839e6de873500540d28947d9534388cd79a42f543bb59c2c588bbd6062a
Date: Fri, 19 Jan 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705625296
