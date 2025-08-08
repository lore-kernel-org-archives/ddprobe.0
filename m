Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E01927A900
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754660394; cv=none; b=TICjhSATiAjEqFNqoFm6wE0yTwRtH0Xif91Mpoz2ANq8ZKDeh5Fo8G6bTCXCgqXPsDIpDkbr6VBwWKUnFRjJqetLFbi8yRPmSlpsW/ZNA6C8SSskrci/QGqYCCnKXPFK9OhyCQFdje3vHDApgz31HNzkae+vQWGSBHvRaV+rnug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754660394; c=relaxed/simple;
	bh=DFovVMIiP1kD6Aan0x8BQdEue6ThL8O+iYszA6iijBA=;
	h=To:Subject:From:Message-Id:Date; b=QmmO6kb8PNuJ9mUa3QsEtRxsYRJVIdQqSHHGwvg2sZxl7pr3JyjSF6zGiQkcgcS/e67hzfjFQ5CywreuqG5LIUYQ5c8c1Ypd7W2qpCrr9wgUoKuX8pw+0Rou8fpjXCBlsQ6j4xu2hRzFExDM1n20aVZ6OGfbciYiTiQP7ikizS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWwcaXRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWwcaXRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECBCC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754660393;
	bh=DFovVMIiP1kD6Aan0x8BQdEue6ThL8O+iYszA6iijBA=;
	h=To:Subject:From:Date:From;
	b=NWwcaXRnM9jW3EX8wrQUDWmH72ty7jR0dY2PtjOD9pWWMuDTT+8MvS/gP9QtvjA7c
	 VBGa/ED4VxTufT5xC+YgfqnxKcAC3sKlRvHOCJaQsGvSQftXGejJ7+xDABW5tsg289
	 ngJgtceGuCo00+u+ZY0C1QyQgOnjS7R+zt8DQQ7ygfaMx93SKEm9zAOvA/n0iKSBnh
	 iA7Wa6yIVP40QhKjM+UE1LqAa3NaxNhrocNfmBTI++BFHZwZml237cqq98frX50Nuc
	 QaTR6pNCtj3oEXSpx71lqzlr+uE3TyTTsX2mh43UkHytz731vuSSWsi90dGb02OBu0
	 wU0wYGXxK3Tog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F539C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466039357.17695.2229659115549749336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55314979e2f7f8c6e8cada6c2365fd84d8b9b82343a97a40ceaab703a8e2c664
Date: Fri, 08 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754660393
