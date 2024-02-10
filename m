Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199281B971
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707572297; cv=none; b=dmJwQxh3aFTC9QKNQIrfnZF5YPif4ABxOhAhjPH5M+teXybh5B4ZQUrQaRf9qbrGkD7pmW+lzSGnUMuMOLmMSv1SDSzDAzR0evwOY7hHYj5oVcR3+1i1q4bWeuks0kXESN2lAk1podqeAtCVbjVwl+PSZ3IcnhrxPNFiN9n/Bjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707572297; c=relaxed/simple;
	bh=wxKCsaCF+H5AReBhwNafiwh4kPjAo0g86zrwNDtvNJE=;
	h=To:Subject:From:Message-Id:Date; b=Y2l7ciseg2XeT5QONXsqGsQP6YIY2RJTosqfYZKnkusox70Uk5hZjZ0sCbE4eudpFiQrH6MAMwb5lOGWXluqgLs+ROt2+o0rr9KJ92u3aIZNnN22SLlnvTkgFPRJ2xmVj+qMWzvM7sN5jgrZAgXV3XN8Pc1M1QH/1QabjHLkVk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEMXemdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEMXemdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7957CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707572296;
	bh=wxKCsaCF+H5AReBhwNafiwh4kPjAo0g86zrwNDtvNJE=;
	h=To:Subject:From:Date:From;
	b=aEMXemdb5mGCiTGK8BoojKYbodtYRdJ2kJ9mboJViqllPwDgK5FS3gXbMTKGTdrsG
	 rOoc02JvQWyJL15AXYipIZVIjnSywAtxhVH50jgEdGXGdYr+t2BRNkncwAklWNrATC
	 TnskXzlcjm+MOYB4yBLQzbYCZU1XdTDyO5uM1LKna3QfcqueQF/5QxqWf8NI52P3cz
	 TwBUOm3S+ebU+Sw4iVLxZ27YLMTLCa5koQtX2E0QXvXYMhUKmtmhjV0RXwxrhQLL2r
	 TBHkKqbFHww+CXSXXPPkVQuUN0oSPdUyZuepvlKTJyD5vns3F3EpjJr4pC9D3bcQhB
	 JESZkgzKL87Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F127C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170757229638.31319.3733052031688603510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770f0ca84c7b7f78a3c668ac022da63b4890262cf1468da51eb3eb12f1e235db
Date: Sat, 10 Feb 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707572296
