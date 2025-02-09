Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBFF653
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739062554; cv=none; b=HqlqchesLb+8i90O7mpFJJ2bgyNqJdw6ifsqj/2WGRFKAZdNlbQTNK0e2JfLw2WayJU6YN7d5seiuvx67kvK3n6GRPMF9S2hJQ1PyRkPj5ijd3z41l90hnVFXarYYyodY2+BuGveEmaQT7BhEKYoWaQfhjrsihEyV2CsRoNoTuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739062554; c=relaxed/simple;
	bh=iiXu8r4M4cQyJ6Md9SYrlTes6dOmj44aKU/VCeH2YhQ=;
	h=To:Subject:From:Message-Id:Date; b=h8RVaa9KTcTvYIoNChGyfiZyvWqbrWSelzwzreB0VWxCdDtgRq9xtD6qjBZvsNOK1FyAtnN1kX5YV3BLq6zYRgsvnOqxvlXdQT8vixZBrpcETwXs5/ykSCsGQvsq8zdA6J3z88Ti8dizKwtEZIRtnsO1hmMJO+ki77iV8lNOyRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T07H4q6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T07H4q6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CBFC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739062553;
	bh=iiXu8r4M4cQyJ6Md9SYrlTes6dOmj44aKU/VCeH2YhQ=;
	h=To:Subject:From:Date:From;
	b=T07H4q6JDnvSLo1uQRLYBqrx5zfWEWP2wa3kDs4g29P+menPLsEW1NT479bndLAF5
	 Yz6M3owZ/e6HXJZFkdwXvuLnNmGo9V5zoZCFwB9kwCO86bxdoYipelMlws9lxsDlxF
	 JNZicP3HqcJO3UXbWqMocDBwUkS3xduRkXn5dpZAHeb4Kpl9lsfaVJaCDI6qWNsmdb
	 NDsr72B+X6sTkJmU8VScB/cqmrw3jES/wJLYP3fh/Gj1dgWbrtq44BnOiWs1XCcw6O
	 oZGLefPyPIA/n4rIV6qVDQLeLDrFY3aekDkpu+IRnlMRU99ZXtqv8WnbWlQXtC8Qan
	 HvfdP+z40Ya9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97174C02198
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173906255359.25956.8040878400123906375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecea30bb1b2493773680425dce94d6e9c4ee3d6c24fdf5723d04101b8ee4a1c4
Date: Sun, 09 Feb 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739062553
