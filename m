Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588D6472798
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787929234; cv=none; b=Vjd6DAnuGtH4+NAxqdD4nQP4ALQDQ+7Ca3X6Ge+BJ9/STDfIAdTKoKtqNfglB0WO3wn6p3RjarRNAn0jCBkk5YPdibUF4XRHDNhJ89UokJddPNyF1oGg65og7z+411zbGEVUtsiviUdwV16Q6Zdsfvm4u3iTmiJ4YuU0O6xpX/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787929234; c=relaxed/simple;
	bh=BaasmOHSt2EOBhLIjmuXXJw34b35pnjTK/2G6+7nth0=;
	h=To:Subject:From:Message-Id:Date; b=tZWWAilC6fjGKIrhle2HWt8Amtpo1SH3K+fcf8jc2sW82xH/pZ0KMAC49hAmnKWfDjYmjS7LHODk2TBACZJRA9ogGKQ7TCTeB2WRKkmpMOEQtfNW024tYgMkjbId4/KRzwXjxj/WdmPRg1Y+UV7cRABqzcFNWoapIp/Mqor7Ee4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=at5yb0lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="at5yb0lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EACC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787929233;
	bh=BaasmOHSt2EOBhLIjmuXXJw34b35pnjTK/2G6+7nth0=;
	h=To:Subject:From:Date:From;
	b=at5yb0lt7GvdKKoO8EQvg+gwlZXf24Q8eCgWjahx9pBfU0m1EeudiZHeQyW7eSYKM
	 Lt2StcbjUyjPZ7e3U7U6pgsKynql317B3ihkf/RAnO/V1wQyXzu5UWbfN11ICSH0yK
	 5J8G401SexQ+veLHAXM24VoWCmEiGTxQzKKjapVvCg34tBUmZOa/MHI33IjdAppitq
	 ArF2LJv452yKeJT3ZAjRglC3poijKv+942FqrsUq45pvnKhiqa1Q8s6lUWZE/9gXg1
	 r9RhD/E9sNKGbae4p7MBbikPGF9FNNfkqBIghd57+oYNOghX5yohpRy/8B4pj32iyl
	 BHVYugfeio0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E7C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792923369.4666.8861457861824972523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60daec6f2295bee1f579318053735ad253fdbc0cb8a4dffe5ad215eae64f9d11
Date: Fri, 28 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787929233
