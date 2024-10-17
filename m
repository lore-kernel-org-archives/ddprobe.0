Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237661D9682
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729164354; cv=none; b=fto1Cd2cFjLMVMhrIK2cv7mZGmCt9uSkHb95goeZdyk5ViRfHfcAvZ17kV3pMyNLfVlHP3D9J8eg+38ODagIxwTM89+BTPcBnZsebjEH0jd2bYBZGqM1S2+k63qhDBpMGTqUC24PPIy7QSRRT8nMQQpMYrAbdSoutFMpK6RsyN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729164354; c=relaxed/simple;
	bh=QqBnKA2lc0VZY/T/cH1Ixlx8v66x7bpvzBPw+ds50Y4=;
	h=To:Subject:From:Message-Id:Date; b=LqFHKyD4JvoF5RvvwAEfgtkTuAXe0bhOMYMlFraTlVjtnSwHibDzAZlGMZ30kpX8P8mqNw2z7J/17XbGO4NBOY0vcNIfXfhCDu0qiukniPjaNqCbu3zgTi/Ox19YDBsMxFT6Ev1dUZuKphfOVXNNGkFTXN/uN1jSYMh5DS9gPdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXJLOUR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXJLOUR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2794C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729164353;
	bh=QqBnKA2lc0VZY/T/cH1Ixlx8v66x7bpvzBPw+ds50Y4=;
	h=To:Subject:From:Date:From;
	b=LXJLOUR5d2HWxLU1mbIjOKBe0WKgUBjojH03RkE16G+lWNu5QHNZc4NMnmoT2+4Fn
	 JlGUTgq2pXz0JwCkBmL651LycEbtTqxYQWcFxZg7mN01EzLc5bPKezya5CjM+jeu8u
	 zlS056Bf3p1IOQ/x/C6hZ5IhIR//0Ghbo/sYo1MtSgwXdpenKiPOcvZYDxdwejxXp+
	 9BDS5Y54OgC4Ku760Q8BTVD6NUZwQc7oKsaBAT8wIRCswXoPt5H8+SvJkDnPBezKFZ
	 3YWxTiUAhzJo2x/ssWn0dyAmdUE51E97B/OPyGbhK1pM9i9zeFiUqGq+Wa+RR5Wv/d
	 jdwqfr2kabwNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90037D2127D
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172916435358.10103.1279489704018019944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fe82064d9575699eaec5dedd1b179257d02db3131aa19a181d48ca87f38e7a
Date: Thu, 17 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729164353
