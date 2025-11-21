Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FE436D4EB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763688114; cv=none; b=UCaCyBz7iptEqiDG+6FIDG+TowUwTcsR4XVfskFtUbfSDkMckPMtxny4aG5aMN4jpLXExSomYES/sf+QZFFpuxIIsVf7N505f8TaPt5Rto/dRwipTq8fqXfjAH+2Nd0udxQFzQL8R5MN6zvgPEQE7b9iyh/7WJrFM78jPfcRSyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763688114; c=relaxed/simple;
	bh=8OYDDzmVH5hAXRrj0MbzIWakrJxkz2kh3lb4hmcu77A=;
	h=To:Subject:From:Message-Id:Date; b=XJcwpTmv/pBLLthtp8hEJMvbP528E08XUMbI/2zzt7ttwjh7fIuX4DLCJzJA1696rnn6lid5kZXFd97QxoYKELLbaIy1tyjWXo/ZicsIfzvfOvfeLNrwrfM9GJsdbZsUGq5Ug7eX54nVgVh2vIYQfvIkQA52dRnX3w6htSMim9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uj2G7GTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj2G7GTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF26C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763688113;
	bh=8OYDDzmVH5hAXRrj0MbzIWakrJxkz2kh3lb4hmcu77A=;
	h=To:Subject:From:Date:From;
	b=uj2G7GTi2/6fZjM1ur1H0BnYWfQ8Tvk4C+bm5mZk/7X1L6AXHOmAlj9LnAjnaxHQQ
	 HqVNlbNVJaofhPpX9dUGljqaANUIVfP+YT5UYDMh5xTZct5lk3mSsDGWLw98YRYUi8
	 dx2Vxkp1PonUYhH/bOQy3SSGTdOEGrjycg+kk53IwO4LOdiBGjqW1fhT/+5IpVotr9
	 OUnaZZ9qI6/FDU8V3RU60I6r+bATEctVZhNL89nir7vNIedopr30r5bF9AK/kAy+m3
	 QElWWc2D4aHHy9Xz4smzLcPbnVQDpF7xcPRp1Oxe8fErNbNrpTrtjjOrjpjPFdzxVa
	 Yj/4AZCzc2f5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C808CFA464
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368811360.30521.11101524890236996757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0085724bbb296316c7271c71aaac38a2db4f8deb90ea681edaa2ab85fa4f0045
Date: Fri, 21 Nov 2025 01:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763688113
