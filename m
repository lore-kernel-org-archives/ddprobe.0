Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484956BFA6
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719474863; cv=none; b=TniyjilBHhYrtCY4y8VlM6pDEuhtzyFE93Jvd2hzmNgyUuIzjqbfrySa9gatqzSfDHw96ueeaaHRpRdsoU6euy0uVLPpw9/FSV9D/xIGh1iPErKW4d/17bvg1YAopI6FYyI5a9LCIAbTH9/8DgsNK3Pgg/kenT6JxRqpEuP3tJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719474863; c=relaxed/simple;
	bh=dSRCL2I8TVo93sfCH/eAIlaQLDT5Xwnc31i1aN2SplM=;
	h=To:Subject:From:Message-Id:Date; b=b+SMMJ0XVpefiaPrv5Ptt6EbYB+d7/gu1bfZ1DTde1MwRD6/a2AjkdEBOAs+umJcbTduprlOiqonUs3ad+0ND/h+jXvO81gHzGihLwKtMVfvt8Ihk7cauxxnjMe46KNI5R93plj33ltwWztziYl86MlDAqe23QR7hm0oIHC927Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCml7YEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCml7YEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D398BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719474862;
	bh=dSRCL2I8TVo93sfCH/eAIlaQLDT5Xwnc31i1aN2SplM=;
	h=To:Subject:From:Date:From;
	b=BCml7YEkgNsY+JdHeHPZMBuIsKjuwboRgXGWJy+nWuIVZrrQCvqhOqyZISbBHq7fJ
	 hq9/t9GpSlb/QXZ59V9AsFm/6y5qLnrA4HxRe7qoKE64D/1lnfwAmIZU2rq3p/7Prq
	 a7LiTtVu2/63bCbKU2c/yVzD/6vW3u1k3K6OvkotIrB8wmWI3YyPeWRzk1U3pb2aSY
	 lEBdn5fBCn22dikGdqcviqeXl69mqABzPgIrzIQ4mq/YYmpQX7QnYwjIEU5BwuhfVH
	 0d1X9+e8btxl2IOvTKw9RBnQ86VenrN7Wp4qdq3BBQqArEXv81DkAMvqCgJ9Fa5Pnf
	 +fNpvU9FGgT9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC95C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947486277.26188.10360187106541736077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479e48c0f3ef29e9601535602bb7835ee7b5e4b48ed46bc3c28432f0ad453729
Date: Thu, 27 Jun 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719474862
