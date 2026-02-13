Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439B033F398
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770972294; cv=none; b=HM+enDlgsDVhMtp/dC/LGKHyRj9a5zlG3bFF8DuxkI7+htRlBir1nFwwHHnJ3cM2+waK8IK9a27UIpZPb6e2lxZMQCMOOdSTHRwXH36ZB7M0UMlYamppSFvq3hhgbscetJtZpyIPeIXocWsZiOqrqFg2lBdfiSz13WkQgRz6eSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770972294; c=relaxed/simple;
	bh=oIG+d+2drpjYVIlnIegsymfckqF9SaviNJmCFqSF3TY=;
	h=To:Subject:From:Message-Id:Date; b=T2sB1FsskFrtXUjYE3KZbJka+ujgQOtfwQ9mhDmmFcxGtFB7hWnY0X/SgEx1ENdB/eTFt/4QVtmmfHibNvIeC+qG8w3bdGPHDQ0nv/UUfbw4AC7M1GxfhuaZghoee8ini4QqM3NnxIWOO1gsWmmEevbO36Bb24704iR8ZWrO1tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1s5Gz9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1s5Gz9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDA2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770972293;
	bh=oIG+d+2drpjYVIlnIegsymfckqF9SaviNJmCFqSF3TY=;
	h=To:Subject:From:Date:From;
	b=n1s5Gz9eZ1121P3uukhaTios60NQfwamGd3V0KEcN3Z3BKom5OdMQDD68GhXfQf0c
	 vXyt4Isxj7RnkXchN/7PagcvcZYX/f1/Hn4PN3EtR64/aqsT6nHlXf06ouS1jJ61lA
	 AI6yyQKq4xYlKrXwz6uLQXOV313gcK755aJ03xKnlguZ4e5/V9MypiEeRhyLtAN21c
	 cWFuMDO2Cko9yYXsKqK6L92EzVXQoJClWSNSjC4ZhYj6/uKi2K6FOuQYputt0wHN/U
	 wHl/O2ejA9WNht2uRJX5fIT+chwSk3DDwT/SDAflLFUZbt1aaNLnJnxj9WJAl6dyQA
	 +4E536YIlAW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03A0EF48ED
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097229363.30741.14370894500847976523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498d72ebc50d10f8643d1690753d4427a53538d6a7bca00c6a463b468e09d4d3
Date: Fri, 13 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770972293
