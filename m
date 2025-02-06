Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C271ACECD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738871754; cv=none; b=cDLgamkqCFzcaMNDqdt5X8tjbE7Px1bNNgjUHtHDjFVnZe776wPwYCcNieNE9+DfWMs5LYrXydavWDGNHRHTBGOICOn4FiIv57F/tBK7YUP99mnat2XoVA8xl/MkoTJpqCAf1D98awAs7DSOHFqShPATt2yBayM6lgz50bYgq4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738871754; c=relaxed/simple;
	bh=vaxDpeK1UZcDzJzOEzBFo+RI7enScpic7JfTp4OCeNQ=;
	h=To:Subject:From:Message-Id:Date; b=rDN/jxeShxCvfl9FssUbOIs8iqlu9LXRMq+oOjosa89Ws1xmTIXnhtk/m58Ay8BwY94ruEWNp/j1IsUceEhcELk9GzaH65Ku5OuuxFB+1iJ36U0PZUY10rmyi2y86fOn/08lSFav/au6NUhyerYbL5lncsTQbFyfUPVVy8pj20c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BW9yMADz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BW9yMADz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B630BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738871753;
	bh=vaxDpeK1UZcDzJzOEzBFo+RI7enScpic7JfTp4OCeNQ=;
	h=To:Subject:From:Date:From;
	b=BW9yMADzQEkN8l0SK+sQM29TaiWI4BNG+G2eKvB5s2yNICynEhQIwWHadWVqQxJLR
	 nKEk2JnrebmO/ditORasm/IqNbuyRgLfQ7z0Ufhl4a+I9/5m4C/jGQ3luOk0UXfexr
	 sVllSXE9n0EJrXqyha6cCahxTiLWqlYZawDEtwPHphUwMd/prUtSyNuHRvgJoRQgQb
	 FgiwKiLXOu2FKjWPADdLIAz/wKkqu4tVevKgC7GoxPjzJVqNK469Gi6FZe208XOBoW
	 IL4wbvaWd2x5yvJ9nBzvkDNdJg9F9TtLyuvxawBVv05yGHcj2t4SoZSW14nK4VARol
	 JtEECSOXHuAOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6582C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887175363.3409.14408382214650934851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab09ec3a0a92577065b6b5339e23852867e7baf15dcfb64260284c581310168c
Date: Thu, 06 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738871753
