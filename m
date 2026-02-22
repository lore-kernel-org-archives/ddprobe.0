Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9333559C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771775094; cv=none; b=aWRtcNX/CQ4HSrVaNmXAdKJoZsxmJHa91Q1DWCYB1NbR7IbRFqITIVIrQ5IruWk4UMk6K5ENC2lKLo0UtQFDgfKnqpP9nAwCkHTH1/U2FzmRFjqSX594oubQu7NoU1/mZJatzGgvV20SmjbMYnF+gstkueh6qSyATglZlAaz1Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771775094; c=relaxed/simple;
	bh=GBKRZvLp/wZfQL5bDB+q3Jk+Wq5wH0EhYfu5xcPrdcE=;
	h=To:Subject:From:Message-Id:Date; b=Y0vpPjNCwbJwvQlcJvghAyCD1s7OxC4MONYDLAr4X4lT7tLkpKI09mtKlkuu0p677fa/Pkq4l92cdhj2U6scHS3qlCeFHctOAJvNCmB2v9EVpQHQ8OmMfH3/DhzAVGfF7V23XJCTC0L8RTt8cJvsaWc4p51ok/OfVqYLHIvpSrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NB1PkDrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NB1PkDrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E5DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771775093;
	bh=GBKRZvLp/wZfQL5bDB+q3Jk+Wq5wH0EhYfu5xcPrdcE=;
	h=To:Subject:From:Date:From;
	b=NB1PkDrS0A35am115bZAnJJ05ZUBsKaAD8zGAmSNNDsnW1znLAdsFb361QDKMCWQc
	 HZDPBXQX17RgGYn4pr7+ipGl4waufn0nFkj8AmXyBK5Rxr6buZXAg0+SAClgSAWnWS
	 3NT4fJ+HzIa/7gLz9FOlHNs504JO27DbCyr8JxEIagmhadurVSZXzsXSU9/sXuxmGP
	 KKMbnwoe3wv+RZdFGKMnMVfyaskjA24vqp+QnIh4RVvVyk4WAW1xla/GExRsY14ll4
	 mOOIeEZi6yKoYIIxL802aroi12tA6deAhiOVwE3hpB5/Gb8a6uga8v+KvMSp9/UYUo
	 cxdqfrtFbU+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9962DC636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177509358.16884.3458482676455261692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455b1c9613727542d92f28798bf78e5e171d6491e968151fa06d3151e1df7bc7
Date: Sun, 22 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771775093
