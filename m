Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44666151991
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740519534; cv=none; b=nd+oRCeIG257Iv4ls6I4Msp1u9QDH9CtoptJ62IeeOmW2USLAcuP+RPXR65qZ/iBIJytEsSsdpPe3+NZVwu4tLCUpIQctbUimjYmTgrFf4dtEg6oDJuBTLV2ROS5jkIOZ8xHwYe/jFOvULexa+zRuHy8I15u0Ym98xtimhmgRoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740519534; c=relaxed/simple;
	bh=GQPycXYS5TvQi0VBDrNqSbZDkICE5xJT5miHV/eRUPs=;
	h=To:Subject:From:Message-Id:Date; b=dIj5XGFwajxsAw9I7v5hgTjgOHDbVNrsh+REQfblsbO9ENkvsn4gRjv4PrtbhZXxqk9fy1mHOKitSY9LhMTxxD6gDuH1y7LV75F1/Xtl9X8JS8oe/BublDRYUfj6i8F6dL7RWx7+eOA1EP6X52vg6l/g8ATYE+n3HJOReLPctqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPMk0v4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPMk0v4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDD6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740519533;
	bh=GQPycXYS5TvQi0VBDrNqSbZDkICE5xJT5miHV/eRUPs=;
	h=To:Subject:From:Date:From;
	b=CPMk0v4Ixafqb20w8fTxFpzfu4+NmtQF4pr9zAmokIL87CdTg5deSPzSeL3VDvief
	 RpDflTdEbsLsD7TJwRxp8NNuC8LHRisO1qlAqbe15MHBLbRlBvvzmyDxvCX0RL609W
	 MPXvGiwj4ssePMNaoZICcVPzMkj2bJrr6ZF58+moBtUjzP6D6bcdf1/VgPVXVN/c7D
	 Az4gtyl54zumLF1tGFY1qqpPGXqLmWlbZu0H5anXYGye2Awux0xUJtQjH+20cune8f
	 +w7ycuoVaQwhoF/VLRjuv9Xih2m+PASTfayfqZcQmWwgoD15hsGE6GxIOHYI5DSbWY
	 gbRkCC8prHP9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98630C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174051953361.15760.17584827081367400227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52aa1df38e51e6e87f6647be5fe0183b9cb541f93436e5cf5ec0c2e6167cf01d
Date: Tue, 25 Feb 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740519533
