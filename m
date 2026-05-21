Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9E43D79E1
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779369634; cv=none; b=AAwx4eZOJaQjt9auWqIR5oKgE+l5BK6Qms2KMHd8dGIhemlupcdl036Mve0YJqQZ2tRDXnkS6WgjG4USTL9jBvQb8y+mowkRQBQcVavW6hWK58lnDV8BFlwk/28maIvEBArnmFiVSh86tlSNc3OdxIeAlAz9MmHipuP4MqsLNPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779369634; c=relaxed/simple;
	bh=FsUDbLHsarOOvXfohbm2Qf/EtqQd4IeWtAgfbf1Snsw=;
	h=To:Subject:From:Message-Id:Date; b=NKzfaSnn/xlxs9z3J61WJ9VgU4A05NtCUfOQJAFrggt7CgwVb01QfKL3jNu1gJtALT4SxnQqRum4e9FEOh4XfUvluU5SPkG3Pk/uYDFejuU+OwAqH0V9fbXuB8IrMTdSjGKljR9MWHUG0Ce7wdTPVswX+wvS4uRHYL+VztyobE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgNAhY0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgNAhY0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7BBC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779369633;
	bh=FsUDbLHsarOOvXfohbm2Qf/EtqQd4IeWtAgfbf1Snsw=;
	h=To:Subject:From:Date:From;
	b=EgNAhY0GXK/TOH5Q4PtqUN0LBh0FZY4721pxGYE1AW98BkvFsRZx3DUvuDkG4HZyj
	 l6jioyLOUjbTgu5B9NqhJIKPkf8r4Xf6CHgxMSiQSnVpfVl7hVgdk4tHQWlNPt0lg/
	 u5On7uh6HYOwzv3Y/127Tdjk8EbWvFySRtrs0CBtuXldJ/hluhkkbWzal+6q0tkazH
	 qc7LlewxUgNt0bcyvAP/muENovTUmFVS7irQ7hJTtCxfCpgiznBYggLTMEq7cEKrCC
	 /2ucVVvJIDW0TnMJ+2Eom7R8TfQ3WTk2pwUG+wt0rZU/beWwI0uHmMEMwtEZh/mvWv
	 /cUfMV1UzlrgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB119CD5BB1
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936963374.7639.11291491295479643185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958a95cdc1c0d27439a2482b17ec40d9d9a61b7eba27abc74c486882c1826b45
Date: Thu, 21 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779369633
