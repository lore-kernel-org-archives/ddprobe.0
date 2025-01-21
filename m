Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4128BFF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737420954; cv=none; b=frBYZRxe1PgwqYPkB+qQ/muGabt55dfHni2BuUvaejEM0TVjLijwbNYvLvHcv2o0gBP8Gy9pIObaU9qlkH1KmtzPKGFvr849QD9y0nPrA/orUAg9qp6WuTb5dQvua19IowI7mmvbMqXQGxGseF/TyaDatKzKgDvEgnK8+Bo8adE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737420954; c=relaxed/simple;
	bh=YZbfYdyG6LclBy28FJ/1cuzmELcoX0nAkuVJXgrRhsA=;
	h=To:Subject:From:Message-Id:Date; b=oitt5x3VeaCtyL+FoSjHDWPtMiOAWgJm7LXAfWn1tgcYmQKfeXO35POBHiPNUC2oTCcAQdXHG+OGk+X5yuqxrrGOVe+VXgu4HzXGr5a/5H5aMiLesm0rIpvVHGve1pI7Kv+takJeQwZb06LIOY1XsrOD/VaOv9C8g9TnZ9gfg0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H74p0dwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H74p0dwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737420953;
	bh=YZbfYdyG6LclBy28FJ/1cuzmELcoX0nAkuVJXgrRhsA=;
	h=To:Subject:From:Date:From;
	b=H74p0dwbOSnHunYgpvTdO3tSHuuaR9AzPPgxr7X5C1tyEDq7eun8Ik112ejdNJfdE
	 zj6euuhMYubEygY6v1Yvmc85ZssO+e4aT/plR37diLGb3t6AcwKwo9BlEkWGGJ9aob
	 q1gND8xx1EfpIxMEmkqH/lVna/9fegNA8nUOXZ3R5T7XCFkZXqqwuxoG194HYWNt6T
	 3fa85ji7hFYNoWbqzExq4hsr4cLtRFjSINlNOaYsx6UFgNE7UyA0NPJJ4GGX4N4J9A
	 f7HLhF6ClFbMqK1Mk0QNBGj/EELs3Uj5eyDhzIqzU+AnhCMLs8guPCGvcll078JLQA
	 kH6heGj6W/ePg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE1C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742095358.8753.17166560560573405236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292efc95c91e82c00378985a84a50482bb7e28544aeeabbe21f99317651faf2d
Date: Tue, 21 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737420953
