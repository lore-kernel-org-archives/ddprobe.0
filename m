Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167F9DF59
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771894494; cv=none; b=o0SF4svNlREFb7oL200J38SS3CUtdway6AYlxdlXo5ZBxLdoNfPLA1mMLhzoIRgGywn34s2G1tgMsVcA0V+pYPOR8PX86zSJpoICcdzpETBQFsCz96GEFYCsKHayDqUGxD+TqF1afSTm+m0vgxwCfLHssKX6kF5Npwq3oDAwgjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771894494; c=relaxed/simple;
	bh=K3PkCAKH7KNr2xLqMTe5bSYkxeYq9rqHzV9tqNAmDkc=;
	h=To:Subject:From:Message-Id:Date; b=kHr4r8HpcBVupDV+dWkShcVtHScGZdarudXVBLUrVEVkiGcvLIBoOEFh4nZojz2Tk/PgvZV2rnyDwumFtE9NQxSzoYKu35GLvVX0kOQekmGwj2lwRUm2g7iYc3MZIORLK12w8CgTd/HQ98Okfxsz8/yy+cU+wL+MYzWmJFRYnq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOhc77ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOhc77ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FB1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771894493;
	bh=K3PkCAKH7KNr2xLqMTe5bSYkxeYq9rqHzV9tqNAmDkc=;
	h=To:Subject:From:Date:From;
	b=JOhc77ikP/aiafNsfQmrQQvJUGptDcqIgrkRJAoUkBZxycJGe9Pqt+HzxZxdkhRlx
	 emsC2hwjrN2cjVMgGq/dLWkeJew0h8dRW0/TvBBPN+NdVlhNOnl+sYIGzG0AwonzlS
	 rpnsYlCB/WbXBQZhg8SdbfjK/6aqB+2C9HYTUaLn9efUUjxVFCfl8ySF7PTXIumdKy
	 CfDTn1olmmmAz3WikexSW9u50Qgc2QdiNvKKJZf8HuVO/UozXLXJkuriHeSScW2wvI
	 341taDzZlVk6LvDqCJq6jIlzaYYbSE+JcFAIU2XjW0XDxCE+HGr75sJAbgqUuxmY3V
	 bOPAy29jjonQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951A4EEC2B3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189449359.11980.10939040919047350284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc4ad01e28ba84dc589ef6ff7216fdbe468e70b53a85573e2e408550fc9f772
Date: Tue, 24 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771894493
