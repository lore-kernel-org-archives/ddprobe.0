Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C07273FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741063734; cv=none; b=r1B3gnoSr/HH8ORYs/AwMGMCDQPZxQcZKm7X8lc9pOoqyI4buHuOw9+Xdqx1NXXPRLNT3PN7mlXamylgCsT7weqpAwWkGrc/FDpsdop97ZHAQM+1Zm2fKFMCwbYazAnJOE0p4X9IrPg8fFUKDbSy+SomH5tiNFcrAXE+kQJZpRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741063734; c=relaxed/simple;
	bh=LJjvlVfkf/eAUc1JxZT/eXCP/UY1m57DLBIs0eGw+Qo=;
	h=To:Subject:From:Message-Id:Date; b=dkh6WK+thbhCb0H1xgoB/DZ4+9Uy0XvDGjmiC1pqr1Nw3N2UuTxLm//tvhofx90jESHn/IHzT56l1hrYyHIIa3b0O1OSMe5bBsaJvOLBOL5ZiIY8sQYqLz6NrseOPRzqwwNLVSnZiZlIkvxDcYcBVQV69WS58VR6pcHznOVZktA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nawobj1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nawobj1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBAEC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741063733;
	bh=LJjvlVfkf/eAUc1JxZT/eXCP/UY1m57DLBIs0eGw+Qo=;
	h=To:Subject:From:Date:From;
	b=nawobj1ZEvhMl1cENyvkzGYVNpCvEQ7pb8RAyD+ZgGikGn5qHYBIzyQ+WjkQTaLDN
	 u2+s6LPhgJI+M8z7tNlS0oGfde4Jspcto7oF2+UHqzAXPkWZ81J+rpNMs92WW8WRX9
	 1LHQmjFLR1vyu37cD3xo91py3aVTzKSe79KyZfdD97XryU2bdQg8I4DAWriViUiGur
	 2AF272H0zm7kDL1YU44FROn+5VcOtEWIZpqfEVCgY16MRI2BjSzK3/y+OHjWa71dpd
	 XtJknaiTwLbHf0v4YVUJj4ci6OWWHmr9yeYZytpAA0cavvrVyOjerMCK/SvwwDZreO
	 7P+JQDooyayCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9888DC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106373361.5899.17371282940907270642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302e36eb83fb08d686d4f3fd7ad2e65cb1030cab04d562c4c86d6a6777c44848
Date: Tue, 04 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741063733
