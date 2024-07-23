Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C512213B58D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721772354; cv=none; b=mhrEXZI9AZtiJyhmcCd0etj1T1iJ4+4OektA1ssjKH9pvSIpGm5aTZdmwvwKXZfFGMA7m723Am67gxDgN60TAMh4MJsmXNUcz1dc/APNTSuK8d8WfFPQXJzr56faYSyFXJf/FaVA2JEnRCYMNEZiwrGDWPPaGJs+OGkqLlie5qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721772354; c=relaxed/simple;
	bh=+H1lh/Mt73BBStOy6gT8nqi/g/B87azJNEfTqwZ0WvU=;
	h=To:Subject:From:Message-Id:Date; b=ddp3IpWfE86JIPG/5y0jZuE24a3LjK95GAn2W5L56jSoxEiFGZhdFCX4zQEZZgj0Aj+oW4ZNh4Zdijsu4bDm+iWslnZksHBBeXue53/+UW4J/zkjKShpt+e1n2oOaAcrwumD2qlxk1llQNt/cLOxzYeGptlXlqMLXY2dEEp/icQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZU97T1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZU97T1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F4CC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721772353;
	bh=+H1lh/Mt73BBStOy6gT8nqi/g/B87azJNEfTqwZ0WvU=;
	h=To:Subject:From:Date:From;
	b=IZU97T1AdfItk7LnNs1bBepJ40YE9HzVxXbd7Y1vOnwTa6kJgM9iPgdgeL6bGS0ug
	 HuA5LeVY6xkTa0ndkU69u4qcprHrexGhUFN8qkarM2tOGx0zi16bhHD5wSaUJ/5cGu
	 5GA4t9u00VDvrd/TO+i/Qg6maNXGl0xSTA3+UeVggMpJlpFnoYuuFBwOC+lVZHpSko
	 LvF/Jmt/sRAa5zAsBPw3EoETFYNgY2dwUKajfF7WEwKJy0PfbVZyU1VnTNeKpF2uIZ
	 Xqqlv84y+lSyiMTraiaC54pXXuylv5kqDpVx8/yx3AZijA/9deMIJt3rYyWegWXETX
	 SGjRa1UAjEztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1AC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177235358.14005.3947406462442612984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21982196b3309f484ac4797ca4543078ff44cfa6bd564b8fcee0d5ab4b55510b
Date: Tue, 23 Jul 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721772353
