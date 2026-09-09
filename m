Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568625A514C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788989434; cv=none; b=MAjouWsGWSMfupE5++/UG2sZpeJDl5nf2dG/MvjSmtulJ4TuOIFBgdUkOTO/xCN6SngFOGhPHMh+Y5O8+KG2cv1yJm0eEwx2BDdeFX6LF7RM4TdzzLszpaW/H0B2P7zVx3i6X0PZeaZoOtzA+SjxWC66cZ8LsTZjyXFVeC0Jds4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788989434; c=relaxed/simple;
	bh=2rPgd0UGxcerLSAvXBf6AE4yFpFOKiQYx+AQh+EQ+L0=;
	h=To:Subject:From:Message-Id:Date; b=erBpMrDKBqe4jlnmsrrLLAZkn4kBt36w3tu0Q6QYFkMyw8cm7Ox0n2tm1vbAZaiCAJaKZZ60WVE250HNuaRIxgror4G64ucItrhiBW27YCHndRs2963MdHzQwDtDsp/X2SYdU10huMp7MqyABmbGoemsylzQnvdKKfL6+e9Eutw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYzybKJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYzybKJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EA8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788989433;
	bh=2rPgd0UGxcerLSAvXBf6AE4yFpFOKiQYx+AQh+EQ+L0=;
	h=To:Subject:From:Date:From;
	b=CYzybKJlHGNlsVByy7djJvXWq4rIQ81FIxnP0xjJd56ISDyu3s3JWBOHV9Qmpn7Tu
	 wsxY2BwVvBOUcVN+sYi992ZB/3xIqrLPsORgeHf5mwN+rywznIN3ncK33AweS+XS0K
	 gPZyzFzXL8NNriAQH26WS7Sas7mBnUKnCZsKNzWTzsPvjGGbkP/UALi1AfF4KpvoJo
	 vc9NOg7s9xleDWF/qqGiWnshXLjielABgSwZAdPAlbE6/QAfsX5NOkmSFTxgbByGWw
	 rapuMrEoHwiMSEaTxGskCafiptGUeSVcSN9nk7iJdnUDKJ74unuqPuPfITt7wBo6nV
	 YhBmxulzu3ggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC740C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898943369.17891.875724796300118722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfeb0f048284d39022323cb2ebfde6bcbebccd853c10fd20e2bf339da4d7420
Date: Wed, 09 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788989433
