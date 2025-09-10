Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143FA2288E3
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757505594; cv=none; b=eLLaCxyRKgy/XtYflmJz/zGOgiPhSwnbv+eCAynXvk3z25sEDWBHbyyIocTxPeG3XOIMhZYjI+XDfDzVtodlW/sm+lOf1QLWsAhD5z0OJsf/GvolfBRVhGIa3ofHKPJ5c/J7mO8xReM6H2Rr6EkVkFC+fdbfz386zr5xuPKylH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757505594; c=relaxed/simple;
	bh=PVeYCc+B8+nkyi3GOiS4fc+c0xcE2AfTvGBE1FJzewE=;
	h=To:Subject:From:Message-Id:Date; b=HtogFbUvh8IGvlO9b8BpYHRCi/UoijgdSdLxg0cLQClR+D/WDHwZTGZ5Msd7gT40+TSmuwNB+qmiLGbnD+WKC0p4233YSj4F7nsNxI+KPanxKrfEd0ogFfoaclEHKd62369svS+Hr2eYf7Y5+YyXFRwAgpRmbmip/Ep4CVSfoCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfKf0kuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfKf0kuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DCC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757505593;
	bh=PVeYCc+B8+nkyi3GOiS4fc+c0xcE2AfTvGBE1FJzewE=;
	h=To:Subject:From:Date:From;
	b=ZfKf0kuY3FFmRSLpQt66kjW/5Ek0v4iOelaLL/hYyPJ1laAeVVqs77IMeT/dSjkvv
	 1mPXZ1rHwjMhi3uzcYTxZ8SKhgCK5oZS6PJQOgrwndQXjrpk+GRK0pwjciDqiSfU91
	 oOxac6utcOtqG4uP4+m6UyyP0weVG/9cjB4wCn19PDf1Joa+ojqf2dIl4a9fgkfcvW
	 dQYtk4893mEF8icqbPqZwWopSORU6iFhsj7OzIPcPRQoIsyDo7Taw6Ye6P1JRcQaCp
	 Eohqsie7g9qOe5isjn8/i1E5d8xZN3VrvYzi10rMHXwpZfNaRangxDyxDQL555Ug8t
	 xciDw+V7j+LxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC1CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750559358.8748.5461281025162780945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1c95837ae8e744759f173c91b282480542fed43fe1520969d7ac56909d51d9
Date: Wed, 10 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757505593
