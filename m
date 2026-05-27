Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBFD3E009F
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779874954; cv=none; b=sc/ceijD4cbNlsTJZiOcDQjlda9dPX7G5uyL1sDE0M2qPI2kGxZ6k//oXZI/uz/tL4qNJJYlCwkXXcLL7ujzZ0rYDKh+urkP0W2kraFDx00sVGFvmJBaXL53Zc5Erqj5kfFZ01ERYiru0xnubs8zTQ2l5R64PSywj0aTVct6zyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779874954; c=relaxed/simple;
	bh=A335j21Ej8erIMY2ROf8ig9zV4ZNHMm5LYCH/ZWM2w4=;
	h=To:Subject:From:Message-Id:Date; b=Hc3i9RnuV4T+VCq/cvFEfMo2YfrkhGA3xnhO7mZdc2DAi4a4JiPyUtcPSkfXKKeuL37NdVzWvbfTA+00Zpwn+DlFt3abq1ExwVNZbW/rMYxBDZjGp2qwTDdPgnDprAquUw6KyBbrQ57hzlt41M/uwaCE4ajwugTtXwdRLAkOA7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLqrLjTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLqrLjTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C876FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779874953;
	bh=A335j21Ej8erIMY2ROf8ig9zV4ZNHMm5LYCH/ZWM2w4=;
	h=To:Subject:From:Date:From;
	b=aLqrLjTsHmpECxxxSmhtbR468C3BSHCzDj9GlGZdLwLauZ/M90ex+7yJ7lAAj9PYG
	 PqONVUn2zuNIv6Scgvi/Z0AjVk/JriI9YWknNAOHlPsgb38cY8ulzqHB/7TNXK4QFl
	 qWax5IcLm9dOAhrHsv6rdwkhdJ9fuvEBVAQPRkKnbJCpAi0obrAIR92gtEOucLIPey
	 gkG2MdRBaDsoXjnEZoadi9mzTrYSiokY2TxpQOddASLPTd94lCfRkPdSyTyo9AFTND
	 krYtNHNWGul6IhWaaOnlXPZMcV4nPcOR6z1jKy1v5KHPk4z40YkVgsZmfYCaPv+PgT
	 M/EFrbq1LJmAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A27CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987495369.29716.7882951188777120123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3913090fa2f44273fd3853196a37054b09ebad526a079f92a16d5f9ddf42f489
Date: Wed, 27 May 2026 09:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779874953
