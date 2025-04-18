Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFEF5475E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745006994; cv=none; b=BrWu5yQ2oHw6vavY8DCX+ex/tZEzPhOTJjS9nUEwRB6UiG/jXWGtrtlXHZFfsACikVYB3xEytQCwqPRYG7QWWiwiVsCOVXfyq1DcLrnFa0yCokF7ep5b8xQdUv1xQq7XbW+hMArqXMDDgkIE2ElwkPTSg57YZLtwIXzFA5+bRCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745006994; c=relaxed/simple;
	bh=d3cQ/4aYhwnijTiD6njfjpmkSMEF0Nc/1EIl3xxmV/c=;
	h=To:Subject:From:Message-Id:Date; b=Q2EGLlcVx65oaMBqk2aVKD+K9Cc39HV6i9egd0jNQwRy4P/UnyMP3ERp224ou9dtfSYWPZsagnL+LNhNbr+aD5nfSUamc89mvicf8kKKpoUoxJcP2MwtJu+uWQIsgIKR6XSkFnbYiocOh3PLwmpHhj94utMj7TlSjJOx8DCpqMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5Lt/WrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5Lt/WrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DBCC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745006993;
	bh=d3cQ/4aYhwnijTiD6njfjpmkSMEF0Nc/1EIl3xxmV/c=;
	h=To:Subject:From:Date:From;
	b=o5Lt/WrAZkruCGYW2H+xNuqXcNMTEChit+prQqzcnZCZ/qV8FwUfW1nTPHJUhaEns
	 WR/QA8jzzUQQKbNIODBu1bbU2O+kZWAZ3MC8xUt6yNz1xhNEcrcPLVlCDFdVdlg4Fs
	 xwzKpco0bAlPU9SDy9i4ewaWG8tg74fxX5yGdHt3s70+SyNasz/ohMnsmx+/Gc/K3x
	 1BxnpVbmfvkrIlZkV+4hjiIr1TOb/CUKIbkV9d5qOtrUyqvfBggp0/MHsi1xHlHxz4
	 bevpm5Iq13/1XTDZVY2QPM58iF56JB7ENY+99yJGSNszY8+ceOHo6ngnhSoNmxMq/M
	 gLCYQTy3I9fnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92548C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500699359.8252.4920991272734540580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196aa5195493e4605645174e40da8e2bf65ce9710762f0c06fd788ac1cfbaf95
Date: Fri, 18 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745006993
