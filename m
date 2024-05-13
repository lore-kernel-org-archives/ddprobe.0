Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6948480632
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715635343; cv=none; b=NtFMzZVfxP5ECds1cmQRaRnprNrsHf/7X5VQ1ciH+a8YFceRZYNoG5xjhp7cvY3qhaWwj83MakhSoad4l6kp0vQd/dqkdgajbz4FjlFrPzA1u6JevLkvYiZCo+AU5hzAbwU29DEkmMyWS1E/1f+qNHu3QUFacsPtiS1NeWDh24Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715635343; c=relaxed/simple;
	bh=mOAECuyAkaLJ8GTHRhN+OfBlTHEctgHr6XuVauBbDuI=;
	h=To:Subject:From:Message-Id:Date; b=suGHJYsC3swsTI+oObK/EAP3ipRnnBR7hZP7z0ARX+9VNsmBDDFcjuTLvEwyFT1cRcmk0DCLlzG0zFbYsIjGUCrMD1PmprTvquIciAOqiLfjFFcA6hozJVE9XkhtTZtAFOSVirkoP9/IAB2RaGQZH/HvzmtVWQz3wULlnTtAFM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6wIJI3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6wIJI3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E666BC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715635342;
	bh=mOAECuyAkaLJ8GTHRhN+OfBlTHEctgHr6XuVauBbDuI=;
	h=To:Subject:From:Date:From;
	b=V6wIJI3WVgTzJaJPibh5nKKtC+XVvZPt4plJyok/657u2NiSWaFPyjpk5Ds+4tf6z
	 WbOZmwLvlyAuD4z0uhThTjjiVKgDd25GKq525e/lBgiSSlUmEvrneEaT/rT9BP7WLF
	 pyPleiovR+766SPuYWfjGx+NVxcFtaAQ7aonw/oFBkOOcAHl2a/tPKl2vHSkpAsS4B
	 AvGyIrlLmQ3AAkJNXOvzTR+SFbmpcg8iKoSrM/zTBjh/CEAWfKYwjuE/7kdJwnK7Bx
	 BTOZzCWWTzi5Yo3lvPwum8fmfSG9iUUDUV+cMJa5WbrkIekaRAp7Isk8/WexMq3Lqa
	 k8L1E9I0u5LyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF15EC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563534283.18826.7131536531408226475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9174ac94c616a9c7c5502142a877bdaaea27530f7023951fcd0b20b6eac32a65
Date: Mon, 13 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715635342
