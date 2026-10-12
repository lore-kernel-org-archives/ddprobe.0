Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E0D492E3A
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791811234; cv=none; b=RmtxSF47XyU8LdWlXv9nOGG4oT3zLB6peMwAXZ6EHhJ33X5kG7B1/0lY5+KTr/yR0ox5UTCYPJ27wb/1XuWSqWJxzmK1bKe1V7o6vXLzdSPQHgkdISPRg/ym5aHg4W0PnQYW8SfTivGqQjSELjOPSjh04r3cyKpire62tRL95fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791811234; c=relaxed/simple;
	bh=3zQNxh7MK/YeUe//ttS2eoIg+HrGTy/HrXx4/IIowc8=;
	h=To:Subject:From:Message-Id:Date; b=oDs2YIxgr4r0/Og5GfrJLPDlfZnuGcAN8NdSl3SPIBOMIw2HZqz9rO6ZrFaQzlaX4pDCwA6zJSVWiNGz4QMOQNsxFKQnzTVOmEBQev6LBOgf+FsObBW0ArdaXmhNgCNDHZ1pN+w/sWwNJ+7kyANydcrWTUQAUsm32+kre/Ydva4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxz3D/sQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxz3D/sQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBAAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791811233;
	bh=3zQNxh7MK/YeUe//ttS2eoIg+HrGTy/HrXx4/IIowc8=;
	h=To:Subject:From:Date:From;
	b=bxz3D/sQ9V+4P7u6CO3x0lULqYF+JG1r+vdFXy9V++HuVQsFYyn9Vgnh96J2aczus
	 x23rebgqDBm3f9d5B6lRVSoA6t28XlpE/rk/xgQlP3xoENR1uK8MMoKh7gaMnXik4l
	 Ion6yLGYohwOo8AbeLAdIvH8GTxttKzT0+BUqVJLm9nXYyx80qHX4ltb9+EG1lBQQX
	 z5LwQIgpn4UMNUE3yF4V7t062HRk70VtviXWxaXr2YR6QZEKX0wZ20dDVeCOwIjOGc
	 oKKHU1f0nNU+bN1wRd4uxZLsDUiIZoCHntkL0IOBlPRl3m4xFELAr/WywXkk+1R1jd
	 0UhERuk8BrfLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ACECA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181123368.30361.15632135703087363971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68b596ac6b9ffb541bc324a103f16a9d3124a031328a2360f2bd204eba87c09
Date: Mon, 12 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791811233
