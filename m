Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C5F309F08
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787257834; cv=none; b=GiCyhjS3LoOPnKyTniTHjhXqBUSJy7sfst2oxJ99FhLY9npUmVvSuvTYKb6WPMZk1eduboGJciW9M25smN8+0LOT9D/qT39hMG94XCHM7CR7Wf6YQ5o9U6pMLq8+NjbeyCyPyQz14m0/eVhB/wIDDyaD/tgxkDkTVpiyfpzS99E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787257834; c=relaxed/simple;
	bh=NruW1ihQoqpbbNRVY2l/VCbP6UmoWVxUP2//sOixFio=;
	h=To:Subject:From:Message-Id:Date; b=q6HWefFzZkm4xLhI9aM6agf6vuQ/9NB6IwbtHTGkkzBhAp7k1oV4O+UcyhoEr13dtPJDT5/MpD3XzS07iSdJWHNoKpFu5DWldJntTCbNqcdjJSbHm0LFhxfZpKv+HRCh3wJCG0If0rnazGOXjmVr0d1aCs53cYmx+cXNZwml0Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olJgK8HG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olJgK8HG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF5AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787257833;
	bh=NruW1ihQoqpbbNRVY2l/VCbP6UmoWVxUP2//sOixFio=;
	h=To:Subject:From:Date:From;
	b=olJgK8HGlKu5kNy2srO6t7vG+3COqAizzTKwhHJ4yxiGFWL1Wu02CgLLAQwH/p8LZ
	 Pn+G3eYIr90K4WQNl13AKy6xcMnZ5XgnWi6AhexWL+OKfimHgxIxSiibmGycdJDOGG
	 HTgij2rgtGGFr2hXjQfPet8d7BvolAblCuEFh3hHSbESON/hbZ22jE+Mr0QQAg4ESj
	 qMxO5BW0RLMG9id4L4480ej3Hofyp6OkZjN6LU+lcn8ExVLEjKtuIae75Ih0cN7fTE
	 neovayIJF1Gf8KElrjXrStytOg6Cmo81ql8qqHkSqHLrmVvEfktOPkjz92F+r/krH8
	 RcUJ8jtPxbpxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4E0C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725783369.2288.14131506847780682557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eed8e1244579fe5cba434a5d309c9c2adb33da6e12630047e6a4e29661537ee
Date: Thu, 20 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787257833
