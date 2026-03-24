Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4288235F603
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774339494; cv=none; b=WucOPwa/OnqNTfPhKSZRDOXp/ZX+nkkKFEC+koJBYVsWPf+z3Bh5V+Hz9aLUCfbNKDti1GrBQfFx3gt7h0qgk6tXdplXIMv3ZQ0nQALiDwdJxBaZN5PBabJsG2wmFDl2K9+6bExG+lajEPb0j9NRvJ9WfQYGsORIuymntA5nP5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774339494; c=relaxed/simple;
	bh=IBykunvjfSYyUCxrYN0Whrb4TqjfojfZ95P7HJI2vaM=;
	h=To:Subject:From:Message-Id:Date; b=MM3XjN+ieFdAaLH6WD4qnEShqeOwG7xUzFS6zylp+v0InWxvOtds8hA4DRw9yi9jlxt3f0XttnBbGHKL1mhIxHWPKQJQF9kCM9UchoK9L8gmB9ZzJJfUjOlDqz+U8ZOsmbXA/XHE1LOYxI0yvFtzewlh2j+fPM2NeNNMp/V322E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dI25HqyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dI25HqyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF01C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774339493;
	bh=IBykunvjfSYyUCxrYN0Whrb4TqjfojfZ95P7HJI2vaM=;
	h=To:Subject:From:Date:From;
	b=dI25HqyNqhVwJP0lOv5lrXOdlTKcEUjHvRYzFIMKvuHluvGN5M0Hak+f7gQvnMAHQ
	 +pGSyALVv/UXrR7KDq+9oSE1pXxS9AacX1jrFmXy95yHhFAOt7FxzdnJtGrwm0Pt7z
	 odhcFpdZFkfgB7UtLOET5JWKiPejIPuLvTJkykDi7H1y6zoU0vxXbMG7cm4947qvuh
	 vomIpk5I997WpRsPCBo2MgNazh3lCXkFPhq3lyuJ9/TQOt1L/31fJEd7l9gWPaC20N
	 AfDzFiXtrPFz8fW2EeM1gpoVidmwzAsh5JbYl8dBeGmJlCISSGd6ptCpMMA6a51GJi
	 go3GheYfWQqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F1F532EA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433949358.16051.17658247127615779597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e111ed36096d12d601b192b3aa3accd7a164b91e7de35b393d2e48a6b21e68
Date: Tue, 24 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774339493
