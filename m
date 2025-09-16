Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1895B28643A
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758010194; cv=none; b=P15QnPbko6oV8mAGVdnRI5I+94R9I/DPmb2BQZwLeTufIdF5twRk+mr5vgr2dChrN2STA3woPZY514IBEo5MksyB53COVCEyIOcERYURT0XpUXlZ7BXnvyG7VE+3zj5GHljQPwz2xT4kSiwSm+RWLG8377Iifzt0wM7MV8JBmwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758010194; c=relaxed/simple;
	bh=PcWU4277NPUTMDQcyzmqt304lpOGznv7HMRGKTB1zEc=;
	h=To:Subject:From:Message-Id:Date; b=Czym7OkGa47gMlMzVKReY60csM2pyc1NnTRuJE+TceCo1e1LaKzQBSlWfpjs365fcCYm1r4vB6x1C381eEZyaiN2jJVxCQ3bTUN2zWWHLzSQk3vW9lYVnIWlzixKYUjmBtwHqb3CAmREF01BPjFvTmAELQqRFW0vgL3CEVNtC+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdFYev52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdFYev52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758010193;
	bh=PcWU4277NPUTMDQcyzmqt304lpOGznv7HMRGKTB1zEc=;
	h=To:Subject:From:Date:From;
	b=bdFYev52bYThhtD2YSQgy6LrtQt/UAlJ2NUElFtrx+MNo/7WdpXpJ7K1VZnSch9yk
	 MK7YbI4ixbr9g/O8JDytP5vB6fRMpthHB7gTdV1EitedMIH635XE4ikp3NL6ZhMplw
	 fwPaEYvWnpmuBzGbtbiBKKr0KrUiDl0r1mxLCNMtCt6tdqlRSZkFaaYsslakxVvRYN
	 8l6il4M/uXEwqZKPw0TyIsMXt6/Di1LTdUldl6cn27wLSbIxYjKpkeJ0vyebgbVJcc
	 S58ujIeLWMtz8CThD6Jjhz5nPxy+wxLsbNm+4snZLZKl8eOEB0Ze9qoLOXEQwvcC1x
	 JcoaPRuc5kQAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B1CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801019358.21111.2287404338056232576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c27ab589c9993f73a47bf38f8676be425a2e710bd38bd9dcbd19abea7508dc
Date: Tue, 16 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758010193
