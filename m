Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED56125CB
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710887897; cv=none; b=mI8mJvzcVM8NG/3FjvvNwFEb7f+yJW8hKDwqrdC12zzf8q6CkcF3xGnEyfZMrTN9zVWzs6rfFaCeH0eDViDKIJ3FrwoYgzet9GrhPFCIoSPE8UIMx53zgeW+PAsu9LZBYPrkpVHcZok+L693Suu6JUU2+Uouq28c3QL7pIdWNNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710887897; c=relaxed/simple;
	bh=xymlJjVQX8MOghDOTv+y+t0GJZX0mZTNGdmxBPpEA80=;
	h=To:Subject:From:Message-Id:Date; b=jsxTk9SYVSZ1Vj1FnhR7M9HjxeT4aUSkhsQDF3W3g/KhiZyRs5CVqWQKZdcZLBKZkhep6u/9hGwuxWI8nrGaJP3OBx9IqxtYcxMAm9irj2wwQM604vTMND8dwqg7PYlOmpUrOU+fdZ8Q+Qt2y20XqbJnRi0saWpZGrTeQa1OpX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqBUMuoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqBUMuoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706F7C433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710887896;
	bh=xymlJjVQX8MOghDOTv+y+t0GJZX0mZTNGdmxBPpEA80=;
	h=To:Subject:From:Date:From;
	b=YqBUMuoNKKicsJClY94Fh6z6iMGQ7xDU5KFVHVc923pFEF8dBBVWtV5xW8E3Vrt00
	 W8e0zKAmbAbYRrLb5Lsfh/P/nT4SQ47C7OU9/Xuqaah0WBR/yqRMJMH3YL2HOecOqr
	 bgo/p4ZugC62dQppPzsSJ42Ch+w6BRl62bhyAYLno7WETruAuM0eDoWMmmvGHYWHXf
	 DpdZjh7DnH5heukFDcIjUhkzGlB3AwuuK9OydVMU7oH46x9aSsU24UuuPTOf67wdds
	 KCCCKyXfuW/nvqW88T4uJmCQUMf93nHig6LyhgidwzcntQEXVqHZgkPCsDh24QDaxG
	 lBZUMRreqBkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F727C54E71
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171088789637.24376.6337259532220916562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0757496d91ad96be3f7b34fd176d8547b9a6eca9516d2de4e899077066be60
Date: Tue, 19 Mar 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710887896
