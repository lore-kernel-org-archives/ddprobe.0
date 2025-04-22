Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3721F1E87B
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745336995; cv=none; b=FhmKdO8ug6o49b6Z9LSuav/RiV5W5oeS6SNrTuIhdtGcD5UoaSmoY6pwIdQpXEllUabLkVu9S7SqY47GMMXBKIDRrifV7jlsASBHFOLltO8gpKeClpKeWuwZWQfMt20y0JXadK94YIFh0mqEa2NsJ7Qmlb9Uurrt/7pgQQoejTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745336995; c=relaxed/simple;
	bh=4XQbNUsOChFnHhPDMvzvE9Gt+sZJ849EkYHYdN98Agg=;
	h=To:Subject:From:Message-Id:Date; b=XpYEcOBfWIk/TRjQ5FcIqZfg9A5wLjs5uCvirebnud36dYkGBtbiynsZQj/8cL6NUkMH2BjtvVwNpgPCOWRuNg6rAd6u+Wx0Jp9OVtWFT0TITIIFx7yzTqUHx5+KTZXn1M+doezXkv0lWAUd8Hy0CVvUjXx6r5OM/HT70C6Q1N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxlS0F7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxlS0F7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB52C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745336993;
	bh=4XQbNUsOChFnHhPDMvzvE9Gt+sZJ849EkYHYdN98Agg=;
	h=To:Subject:From:Date:From;
	b=XxlS0F7KNRkCc8ScZPnDAXOchyBDDVobaEPjz8LQUsqmHrm5qTnQlTRAjos5fDEuK
	 bLf/WM63fmW2pbmO3GuK9jz2nH9lcaXN1SPRYUnE6NwtXnBztM2dyPzuU7CoWHkb17
	 u1vPlAbbsdZs6InSCBCjl7d8hMi1mWRHGEeIPkkVvbpSRE+7MEz5ggFvrUHIqhf0N0
	 Ui7ZgfiXMu83B9euwxiRCQxz1YMRfBPum4amEm5acpXjlr5jgWsG/1D1BVX+xokpBu
	 CnmqQWhJ3baCDBzeXRYgV2gutkIVtCxX6ETJrSyxHhoOUo/cJSdifgjZ7NnBan92+7
	 Qx+CoykbsDtEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B10CC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533699362.1283.4758903077147478585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb606ef5064f2711948be5997208de362979f5b92bc5087a1d73427ed473739
Date: Tue, 22 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745336993
