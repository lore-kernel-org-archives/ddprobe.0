Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC081514F8
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775895454; cv=none; b=CT+4Rzz4Owr5dDB5J91A7HkER3ToYdFbZq6izycr6a2VNk6kWP5L3K9RRWbxIPj7n7Sz7W3gCvyU84SxcF2p3oCeNkHcgcOgOz0xU0a4HodNEJMsVBgUBE0DqhPkBIA1ojFaFVq9a1KBsNlB7WpkP3sNBKQZbEGIH1dKn45jfko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775895454; c=relaxed/simple;
	bh=GAi+19Lop+79b1Jqx6d4mymNtSg9XJeUP6websjjnAc=;
	h=To:Subject:From:Message-Id:Date; b=uAX+C5U4ZNGR/HupQ0krr3J87sZ8hlDVhQb50X78oA/hZdVFJo9NQTiUJv9CiAF7L+Wz7bSzHylJ8wA7xYU6iXu/I+OG/9Za/Sj+G1jBAs00IfyHyi8mbCGvsqtLM7MvHRsJ8dy2b0QEppFbYJQ8T6eOKJpY6r3AzZVJ/UNtWcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0XnBHZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0XnBHZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB11DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775895453;
	bh=GAi+19Lop+79b1Jqx6d4mymNtSg9XJeUP6websjjnAc=;
	h=To:Subject:From:Date:From;
	b=g0XnBHZFwO7EP3Ing/b4tcRcjm69qU24VD25nRBPmKWqe1CydGIAQ6qM9YA+sWWgM
	 hteMdOzZkuu/BfwBFd+67ybPrxj8B7rZwAggAgCKZ5zdE1Lm/t0KbeVJdDzXxR4iAO
	 yPnqgl9M5twgDOmwHpwrQWfPpnko38GZo0axYjtdvsC9NE5sVQJMme2R81zyltAKtF
	 AbQLFUzat3SEOLhWNtTVE1AK5+4870FQ10VgH5DiFRWGHpnjGWQfpJoJLI+M8pFEvQ
	 hLWcsm1fS225RzwEwesSgdDflP62WvuTvCblTD6xlsyewWm0AAvo2NsWLk3Ynnjvch
	 b+XhcPDu2TA7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67B3F45A19
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589545373.15013.15411475234081134736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdaf1c763e5a328e29e3fbb3942c101a7d848cb4a5a234a6846cb63d74dab144
Date: Sat, 11 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775895453
