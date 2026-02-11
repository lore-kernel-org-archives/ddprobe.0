Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0F9369204
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770806094; cv=none; b=iQdEBhWi7QS/Q0ctsdevkGyq4ZRQRaRXzncTLcaYZIIecSx+5B4ELY0jpt5dXc0GOKTPpHEixaQY2hfwlvPj29FW4YSp/ynkA7qTd8wOFAQ+K8bU2sMlXcdbpVkDIBdxnX2qtMNrWf1PbeXoY/C56nrCQl7dHaQfMrYLkoNWv1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770806094; c=relaxed/simple;
	bh=R+z36EqFPKGkEI8hIz2N0fuVuMuMWx6MgCeoBCgsZL8=;
	h=To:Subject:From:Message-Id:Date; b=ZmdVY4Q/IuZ5NbolVvaWuNXWVBFXTnQPYSwc0l02mDUbidnT9kvrJcQy95eAJRPI0ag/AHwDVdeK+d0wWsmoIJ+QibZwOTtjBCTlAFb66NdahZj0yACVmRzgB6OrE0QzPU0i28G3jYoXBN7foOqKEhLouFaK+F4um0OZ2tg8kzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slyxcGKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slyxcGKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45AEC19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770806093;
	bh=R+z36EqFPKGkEI8hIz2N0fuVuMuMWx6MgCeoBCgsZL8=;
	h=To:Subject:From:Date:From;
	b=slyxcGKTlpKZEs1qLdEP55jyAs8/8uXqd7QA30vZeJ1ArIi7ZO857op8TfEUUxPdi
	 TMHwMf/H4uHDJXIYu5zEaC+uLBpNHMNEnj4Vn1sJuvbYU888DaPqJ5Yuh5Tg2PTMuf
	 7DzX+6BmUeGfl8dIVvtqnzjFPsLwof2udL1nyX6Fyz62eoullri4jhI80q3t6RULzg
	 Guwp+7jEyhMgJp9wUBPuAZmtEq5R/wHu8p0fzRYQrtlUaEfk3rHMl9OGuFVuSx3sip
	 sa6QMPPp6s09xj+akSc9QpDRSe37AHZXtRPrni9yH2f8qDv0uxC1BUbBWL0Ovu1PAf
	 IPneqgosZpjww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08E4EA8125
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080609369.20440.7039891524370228762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a231f620aad70a10693d038f8c44ccc414dff192d5976957bc62095fbdcf7a2
Date: Wed, 11 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770806093
