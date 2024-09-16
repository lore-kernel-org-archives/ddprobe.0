Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3844F360
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726452954; cv=none; b=LpQtyjXDRvJh/yb0zs/Tohv9xTKzY8zIubqR6RlCzBauqvcgVo7KmQcY1K82ZDv1yKZsLvfXTSBBH879qeZXROHRc3d/40QgAAyQfWFi3/KjUX8t16yjusEuEl4jZtSGpmE1ODmsrEq1DMYPUIMth8+GHxQkNUBPBkslV/Ve3CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726452954; c=relaxed/simple;
	bh=ITOD4QAgcaEHhMTIuwvnV9yENyhe7lwpeMKjgGHZLLA=;
	h=To:Subject:From:Message-Id:Date; b=qYplhp8pk1kPZjv3rZiCUhDbICBiDV4tD4nMfYFVoxtca48E7hTBg4TtVYDXWM4S7L239sVPSY7ZhaBcDb36mstFmhuTlYFJdS0E3QC6gxHMn2rj1v+KS9qY8qEJXfwmKib/AeL6L3KeNSr2JDQa3lOmCmSV57UlMvzh/jt7GNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ca6MpDzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ca6MpDzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0423C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726452953;
	bh=ITOD4QAgcaEHhMTIuwvnV9yENyhe7lwpeMKjgGHZLLA=;
	h=To:Subject:From:Date:From;
	b=Ca6MpDzLboi1+RRhdmClKQAhSiMNlXF7osjvOQi8uhqYGA/4fazCP7/n1oncne6Wy
	 xAasL+Pr+4XQdCRD7NLYRD+1ns+S5Ty1sR2HzKTh8Qg6OBpv7AbD2DeC9lqLYpw38R
	 w/C7liL9gtxBRUhGfJJkNIqsyKsYPVl8SeGl46y8UVh2dPzWnhQYBvUxhVsloD2lMP
	 /wfdgL6OoSqILdHCPkjuDb116nzRLif05btH6NnRYWhkqIZeBR55f1ptI2MsmDFcFQ
	 J4J2hme4uwph4MuyOUW8xxH52QMtSvjzFH8yyF9CuF5SQf7PhJ83me8zV5HylrksZu
	 IJn5+/L0PbEfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C3BC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172645295359.30137.2113005074546285042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f995a6f4a3b3359111ae07e333a125a9b08919e28c0b4552eba88303bec23c
Date: Mon, 16 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726452953
