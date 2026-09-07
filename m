Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B22F455173
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788777034; cv=none; b=V6AtC2s+SeFHT3sk4nkWw03MWkfftrfA7jZq0PggLP1wyh0U4UQw/sruywsCEE0zWAHX8+hwJeEneZpMKValK4W0hafQ25iwom5us8VXu82c2NjQvHwFKxMRl9RgO3WT0e3Ar/Z7+yCUPAS8jlH/YSsS5ONYG0qbywQ3E6/1+9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788777034; c=relaxed/simple;
	bh=uV0KFweOzmkmh/ID23Vf/S1Jkj2zRnDZsQwd8GaDTQc=;
	h=To:Subject:From:Message-Id:Date; b=QVRTjFM1MORLegDtyI+R1UF8U0IBsAcvD9/IvL8Ati/se0i+0kfFJ+FlwOI86B/mWPhqUClT7ocOq/7m2bpzjnCHyDBXTJCFQwhviBlVCgyeQ79vdo/q7OYy7/6q9TsT6RObCt94J28qizfjCSU4c/0fiDbI9fyTp2LrPxvk23Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP7Aaks9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP7Aaks9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A83C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788777033;
	bh=uV0KFweOzmkmh/ID23Vf/S1Jkj2zRnDZsQwd8GaDTQc=;
	h=To:Subject:From:Date:From;
	b=LP7Aaks9vxjq4kDFiFM00g1GvY3hV5LBgD7P4TGKbqYYtz1WFymRnwsa8+S+98MSd
	 vT1NueHx6xRtbaKyQbktjvD4CBUQi3qTzB/bs9eBeNAPyYqit3Tc9fgmgnsTdHsbIR
	 rvBYvacYsuVA9kzEw5le+HfcCQIUByZa/fJXZzvZkozujA/sZQ/rMMWFkKN8yygAOo
	 iIlxasnWMb+mGpE56G741LPfAu37SlltlCV2hawYBwHAaTL3YOkipKasEOWU0IWaUa
	 yS1VTmCweULWN0AAUvb55+2lA9I8lSpGyI2JYOrs93sLfQ+hZyeQBTv3PL8y07bLqX
	 Nv1V2lRd+OihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE8BC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877703371.6298.2094690926062156973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6139b35f65dfc6619a2a7a96b13b968be64670aea829c6eb3a1ffa0c36a0bb81
Date: Mon, 07 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788777033
