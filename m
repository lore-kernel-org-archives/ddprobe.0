Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C8F1D221A
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729509354; cv=none; b=c+nP/h6b8B3fWl1pDxy7MjmCu7/k+SdnmMNuL0JFxYSlVzMpoytuDZXWfbtHExeknEGJs7Wj7WBFyJEK0Xq18KeJRhZjiX9xgf/r6IQyNI77iZGn0Uvh8KIjTbG8QF5+/WtUnC2Y6aRvM22N2VBoQgq6uLFXdaucAdVx+qZBBmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729509354; c=relaxed/simple;
	bh=/bld9WPQvax5fu4VpuXzCGV+SReEU8L0Zh7l0Mwryd0=;
	h=To:Subject:From:Message-Id:Date; b=P3kBrS9AzVbOehgEo73Sqmawq+WaNr5vTHd2hR26IajrMiARtZ6sg6QiNR+5QmWEBl6oCohuzYLoQpH5XlbtK1t+f9RzPeYP49o366sUF8Eo1TnuAZihoDQe8e01UffF0/qAqPSUNRuOpwaVNqMCFWONHHkFtaV7uNR/ayDLLlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t50MWoW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t50MWoW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6172C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729509353;
	bh=/bld9WPQvax5fu4VpuXzCGV+SReEU8L0Zh7l0Mwryd0=;
	h=To:Subject:From:Date:From;
	b=t50MWoW2nq3aurGeY6FelCi5v7hbiBfUBmyDJzlueAdAm+UPB8sVIXV1RJaeo34OZ
	 ZT7+VD2qyw0L9ytlshMXj7TQ1Dfg5Fwa04ORLjzxyP71xPTMomKK82FyUTgiMeRVVj
	 BRo+Nu6MFFdKlCty85Q2tP4hfiA2OppwFSJvgIegurBuguiX6yPPhg+rJzWOThiyPK
	 0b4sVAgluHsbefkBhRNLimXkJYWU/D2FP4qM/GLvl4m5tH/Ch1NITuOTsze4Mu3bMl
	 UCB43c1CKB+uM3rzaY2wJfiI79pESoVH1gWE8br1FWj4PYuOLdTVpfLwX0p8io6PCh
	 c8hURwaZsDw8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92238D0E6F1
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172950935359.22396.11116193772605816265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccf2c4c1d8d6ed9e855720c51f67d889c8d96f7887ee2f34578e4e3af65e7fc
Date: Mon, 21 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729509353
