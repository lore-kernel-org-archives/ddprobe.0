Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1B34E3EED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791555634; cv=none; b=p6t51A1cMxbN5ypyI1/LdInc/R83CopDEXoFuxf4kXDmHDe9rcRWhQU0h9/A3+da6K6qmUnZ969rZUFbZDxV/Uco2jcipjpm7UcZXaeMxijZ82x7aJBNIHdgdHWiEOdO71hoHGJMmLybWtzkWAV/2MM9yVkxKQnRRkBtGFHxoyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791555634; c=relaxed/simple;
	bh=/c+K8T28FEW4GQbLpI8Dy0XCkHZU1buwy5Z3RjjXWRM=;
	h=To:Subject:From:Message-Id:Date; b=gdM/9e/gOA6GQQP9Mx8XG91FfqDlxLMsSV0OVpVP46u/OZAqgk1eRAQNkne2NwGG1isF4hSR+ZpOUn66rZkIF9I/MJZLTKsVi0/FBvVYjnKxggfoKZlQAo80JT3EQXtmVo3wdA8Nqyy6FI/h92jAX2Hdh4JoYfhNmuzdbEGMvYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0+k1B72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0+k1B72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0054C2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791555633;
	bh=/c+K8T28FEW4GQbLpI8Dy0XCkHZU1buwy5Z3RjjXWRM=;
	h=To:Subject:From:Date:From;
	b=Z0+k1B72nn45XfOEv+mdOeKRS562WVztS+jp4kwPsZSNdvlbdWjVJtxFY8F9C23l4
	 CATLUxhfxkmiNfbpRY7YWsFU+J/i8esijO9sZ6QT9MfIU/cwPUj9JG8dvYwHr8If3r
	 PU88jfbUv3aRjcjoszGyPXv3BhPqmqGHdISQMuoXP/1BcVTfRAaneNbZthj0d/7kvU
	 KvPFkZe5sWWVPH6SN5RCOBX7NR1nxs0tFeXYVVxBNlg19kxnoJ8w8w9/V15aiSOSYK
	 RLJpnf8rlfr9tayQcYYZBER9rYOOO4bI961+uHF6mqMjQRt5TWlfFZZ3ZGR3EaJa3I
	 DVNQJx4bzfiEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D0CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155563369.10538.12857097935425455324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28924aef45a54f2b4343cbdf7e9474a4bbd8d1d462cfd4779cdeac84cc46e1d
Date: Fri, 09 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791555633
