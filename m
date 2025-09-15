Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131923054F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757941794; cv=none; b=cX/RNdY/HsjpXccA+NKG/MxHOqY6DY4eA2ShavS88lqZchoFCpQSFo7cA5QJQ/Ve4nQYpy2mogWL7e+BmjSBfgCPLvGy4nFJVH5uluF3/1UTzVFKZ8bn9dQ+qMeyIJ5xZpP3UlZHSxCOxyjKQIawPWFXIkPM+lIZgWjs0g40fOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757941794; c=relaxed/simple;
	bh=Flpnk8e0jKRc+TN5ujPslbQKbT+8YC48LqWVTg+qog8=;
	h=To:Subject:From:Message-Id:Date; b=H6qK2UruBwg17bvQreYVbLUi1xs4KYq+uRNwj2zdQmNvo+5RcSVliRiq/eiooyiyw5tmSp8sUrRxpCUDdDy898T29Uve5NNuNEouiT9Pgk3IAO4E4a8l03MlmdHZI3iFISvSSqmTsdyF36ppWZFVQenG7ZugNVpw1KQ8XJB77FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl/BYq//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl/BYq//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42C3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757941793;
	bh=Flpnk8e0jKRc+TN5ujPslbQKbT+8YC48LqWVTg+qog8=;
	h=To:Subject:From:Date:From;
	b=dl/BYq//PcQd6HSHT9IUDDST2sLXhtqd2ZF4rMomcD2iQWefy5WojSnB/k5XulKtN
	 CgjPz1w7QpHxsyEhRB37Mew4MUX1Kv/jiXE908xvt620Pr8S9QqrdVw2nlD/rQVB6U
	 jguqgUITS4XPo6we/O3QhzzfTF9fIY3w3+7017JgAokpbsl4EfCwJQsvEuwGnyK5qh
	 vmdLVZYoH+6RwsTybvD1p/mVAhKoNNsbOWA3CfUJSg1x6D0RdbvJkWpxkDmyDrpN4r
	 qWttVueGP8x+RiCnjXgiclXNpqw1prZDcHVOP287VUWIEe+wAeC4CL6rBtcXkMzSjq
	 MkEqXmO64SrKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA4CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794179358.7545.5738948122004811080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644bbe1185759fed161d9d93d11461269eda28c41805bb6723407061b8717cbb
Date: Mon, 15 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757941793
