Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4C3246BD5
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772720694; cv=none; b=r9y+3QzmJ7SbI30itlLuovi8P6f7itXtsQN0o+RZG8ipFiDL/JpD7k3JsIEeEp4zGE1HrzcazwEmtByMEWbHJC8JRQc8hc1UGhWILG0zrQGFixE5dYdYNnN/gjK7tIVMShbjIJTa24kIrSRyH+DaghOhupP7VgC61XH3YifzEjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772720694; c=relaxed/simple;
	bh=DGDetYkLOyVTeBn/aMX2VkarlgJYjNsLUoSq+jqo5tg=;
	h=To:Subject:From:Message-Id:Date; b=F/hqB46y3oFiFW1crHmAYEHmmikDQLUlWPK1hN9F0P5wCuIgc8qbNOmP6v2lVZilsU9cmv54G4PiqHgSf3h0quHQGKZtttlJVDXxexlKV/Cp62A62DF86z4R7M+6RDK5kwXpdAVg7udStkdwj05+sxlgyKwA16tFIFSIKWHW3eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mk7YgPd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mk7YgPd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9229C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772720693;
	bh=DGDetYkLOyVTeBn/aMX2VkarlgJYjNsLUoSq+jqo5tg=;
	h=To:Subject:From:Date:From;
	b=Mk7YgPd11+nsD077Z+4vcWzns+Z1IPrTLZR/wc0zDyly5R/3XUOJ3hhToVxmPPck2
	 ccSv7xrWyoLbOUCcacMCYKJD6DQIbSJtlQwMllXbTs61uiOLc2++nt87D8t1hGQRPQ
	 jlk91fx1E6RhiEkQA732FKkAmA9rk4uAK/Dj93Gyo1h33V8FoqU2T4WAH1taYs8a9p
	 RhhWYGNtwrABYKVsZI1e+jo7C2ovboVUojigG0RiqSnALqfstb2Ufzf2mKB0wY/l4a
	 oiXP56AnU3g0yEtMIkLLIYSFJj54CDELqsF8X4C4ysWSgcQo8QV4xJH4daZKrWXgdd
	 FRC8LV0azYd9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92723F33A71
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272069359.14947.6098018030854804652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8014b28c51fdc6e2d0c93ef6b456acb74a5013a06157f315d6982e10f84b337
Date: Thu, 05 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772720693
