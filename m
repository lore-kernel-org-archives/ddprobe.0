Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576F56F30F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204354; cv=none; b=UIiDhNbi4+cOR9KUS/d6e2G35Na+wQWOZhP6UqN71Oep5hzt48atURlShzGHOky0AhLaQwmIzNmYsR5Qa5AwwwcAsWF06mP4e1eiqt4xSM+JN53e8v/Aq6oz1ETUK70z32Y+tSJMGY8JVw2QcB3RcaUvdbD95wQIKkPRjBPDxsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204354; c=relaxed/simple;
	bh=Cqx5DPlLL0lV9TpbFoXQhRojnsay28zIzAXadb2yirc=;
	h=To:Subject:From:Message-Id:Date; b=dar1CEg+pYWxfg30B5wgo+SPYFm6wFEqxM7m4nijobqbQLelzYBErQmd9EU1xjSJPvc59PhcIuzSIIPmm7L6P2mfqY5rCb4vc9RbcoZnvzYnIHGeF9uBykU4wf8ZFWuXV30SGCr2OG6f8TxfUeQyJNMOH47v5TLTn154NDJSWQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BycwNSeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BycwNSeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BE2C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737204353;
	bh=Cqx5DPlLL0lV9TpbFoXQhRojnsay28zIzAXadb2yirc=;
	h=To:Subject:From:Date:From;
	b=BycwNSeUc49/AB8hb0gEdH3D524U/5wQCBZBZmr3L+0VpoW+MfYke7mUzWWu2LtPH
	 lJ9xypKkT4fzg9K8SEuz+E6tVNd4orfaIhtgecUsqNVKMMJGe2nQyi5DqLqIdA1Lxt
	 DdsRGh9mHrkigmNytTyl/AjQYfYcy+R9IwTnX/gAUKSb4sHXcCD7m+8KIIw/Qp/JRZ
	 ggcsV4RQcLtprJ5FoO+mg8yAQ1BqDxxfAEzxMhLUYhKvmYImAtJrLp3IX10FzD8l1b
	 DQDlTMu79m4Y1BEJNNxcWO2lcnk+7Wg86qMz66VSjEDpZ6V0Ur4G4nsO/vnsJ1e+lp
	 QPbBSttrxmsWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A50C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720435359.27805.15338316772702615098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec4409acc524f00078cd315f89028bc88719fa0a5f95c4b17d94f55ab0d5e01
Date: Sat, 18 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737204353
