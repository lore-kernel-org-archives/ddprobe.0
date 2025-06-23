Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1821322F77F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750701594; cv=none; b=JJ6e8qrreZdiiLwoW8moBGRlE34hg8pHkQooAigGUJj7M7ncsqr0xej3GXrNcPrYCxBpjeTt3Y4wiPHIuGB4OC9JahIXJfz2R5Pswvowuv7nwHq9N2HK8UvSpXT8v9KAzo8G2S3svpBZqb041J3T8eHKFUrLSXt7K9je8cp+lXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750701594; c=relaxed/simple;
	bh=A9IPV9ajt1W4vMld6OCjFvl/z+63w8vxgaGmVc4XhyY=;
	h=To:Subject:From:Message-Id:Date; b=OpkvPaPV232OkXW53yXKZYtzPGS43natZJSQGiZoZCKMRzhKsLk/V+FlLxA+DbQuTVBGyGM3HXlDGRQWBgoY1uB8041QD9KBXXoU1+5cwu0OGjrPFnF2wR+4AcSapMGgx8F5zH3Iltz0CjVMaQ1AgZu875OOjs+IzFYoC/pDiUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKaFJIc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKaFJIc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3181C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750701593;
	bh=A9IPV9ajt1W4vMld6OCjFvl/z+63w8vxgaGmVc4XhyY=;
	h=To:Subject:From:Date:From;
	b=qKaFJIc8XNL0/PeQbKAT5lSk353idMjQY9QgPaz1+4QEBdAZzGUOr/ScjYqy24lI8
	 m9sBG3rLxfgtPGJwGZ0Whwmudvj/E34Y4tThnzCmVehQnLnXg+8jFvf9znNbelWp/R
	 +nrFhYvHRT45t3yY8ERM4jyd0hFv3n3TM8hVEezP2O6yNsdZqdOc+tlCaBAs2VyvvT
	 IOb9oMW622Te/xDLuk8IJFndScyhGaThenMmUDO26kDvEc5wFBv1aN87JKV3h+KaKF
	 Vg1BwZIzKUtPqRaRw3a8SdYyAsnkThE+Xgbd90hjXoq14Swuq9vXqXxHXvLJdTVO8T
	 rh7TtLMuvuo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F221C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070159357.31489.7088461393959106290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e4975b3598961e3f9af49e1a3204f5b54a7ee0c800a7a81c1717d40c6403c8
Date: Mon, 23 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750701593
