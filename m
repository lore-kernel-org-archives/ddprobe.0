Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3591384B3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729868154; cv=none; b=K3kkcxpaou9e9rqcnDrqLdGz/fZ5guO3vpxlVTGtIDLjV35IXH0XTLPb21F2LgxYff18gJdGB2OiEmg2TqB0SC9PPJcxN5Tm+hR9gel2Wi5NJ8CnJgc9TT676xE1I2T77gFX9kxAAiQB/VS7Ia6zVQ8ABjtXyuGi7m3eQNp2+iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729868154; c=relaxed/simple;
	bh=OZ2g84Ket4JICwnRnufMzfJQKyJHiwBSirhlYqnP/ug=;
	h=To:Subject:From:Message-Id:Date; b=tjjBhx/MWblLfqsSg64uZWb/KDq7gR90Xcry4o/u5D+dDtJv6pNkTUKgcOdmoX6ne6QraatDdwY4BEl6/1K7Sr2htf8+gReAiGE14tJ6/38FSLJvsXKWm9lMPUR7aT+OohgMQsmoUiAE/gc5CQdnhs9xgE6f0MuFUTgUcPqP/14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9zipFWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9zipFWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1530C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729868153;
	bh=OZ2g84Ket4JICwnRnufMzfJQKyJHiwBSirhlYqnP/ug=;
	h=To:Subject:From:Date:From;
	b=o9zipFWguuVsivyfbCXkUaFXSwiPKUo095hn0zA1a7wUUFv3fC7MHePbzCO4SU5Fh
	 HF99V9XvfKSVQ/rf6iXtPKOtcBlvEZ5hcOEXxfoQxPnOEeOv0PifHFl4BA23Fu1sfh
	 7oF+srZPlICwna6E5jYSXNZuFY4No01bcpA71lZtLzKgC0Z0w/nRSCn3D+nj1L6v3K
	 cNsHy5WaYjFA76bzjwhnsd+3tRcJ41NufV+HdALH8GYLS6hmXOPSrA8IGq5y5RNuM2
	 lS++qI4UeRlUAXDWOiK2F7K0tLL8wzqPpHKiHhMAb+owNXHRuJ6yRccOTJSQZCA9y6
	 ZTS+PwIxYEdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92987D0C61B
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172986815359.22543.1685229087258229682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3b00fece72b5fd913f7ad8401c2b972e046e223f6c9db32d8c64941ad376c9
Date: Fri, 25 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729868153
