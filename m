Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B36A3FB31
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759556995; cv=none; b=MH0Daf+lKqGpwWdFeX2wGutlQwrA60c+EGztMolvDZ+H5G8I9eoJYtRHkH7Vr5N4VpKAh1bt4kB1wragRECz29BJlnyUj5rnt8n7cpao12U1/kC+i0Iu+yfpjd5d39dvAsMz/q9WUSvQmEeMsU/c5Mlv3I5MYU1ZmsB/+dbkGI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759556995; c=relaxed/simple;
	bh=KaNmWqb0krQUFiTKKWdEWvUgXC97pH25m4giyLTFCok=;
	h=To:Subject:From:Message-Id:Date; b=XSUbZF9YCSQUoPpD6NaTFzc8Yp7OFcKXsu4GLOiCvkoKeEpnIwZbYEuqWeTvnbhOD7OvxFlc2tBBM9RcsNr/i6UGrR2GorcQL7BTd7B4ihbM9JK15fkDDb2orpuhdyG5jbIEYHJ6+Pk/6Oqwfauea3D3nbHsRUiTih+0uC670nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1WUXeWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1WUXeWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1D9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759556993;
	bh=KaNmWqb0krQUFiTKKWdEWvUgXC97pH25m4giyLTFCok=;
	h=To:Subject:From:Date:From;
	b=X1WUXeWPpUFaEIH2fTSbADCdGdGKyDncxTCXLOqYVNURudaI9dYMyS+RZEbzJWlD/
	 GHwaPIHTtcK9La4zIJbAXw9g6W7tHGE1UDRXDrHsHbbFp3+v/P/Jvg5qvHqimtxNpR
	 bVqCEdn283mpXATymwL+FWhBz3/WHzfIPTM5CqHv4TTbozvW4qS9/o8h8bBGhWLSXY
	 i5Cc2evAfZ+Jqxd5fXVU66QmCt7npGJFQ+5BclmHWACeKq1k5n9oS9VXIkKMyhlnSr
	 uzO5lq0eDiM6P8BSAWzWKlZxlGRqTZIwGdND3JcejBdWzWhfAiQDEG3YqS75zZxl2+
	 oLg0LiFofx5SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C172CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955699360.21141.5908344614243608067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c072622d81e8e35455a65a45e8091049f6bf37f3c12fec2b7870b32753f556
Date: Sat, 04 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759556993
