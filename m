Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C71245948
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720503383; cv=none; b=T+yWmqJne18m/xbnpHcF5AjkSsl5qJefPaeGRUp2DSl6r1CMOslRbx08nORA2z93QN/7Rog6/NWhpAJOP+vd1IMxZNR6iw/YS4cxJxIvzK6lBxIfxmaJTnDeFcSSvRfvmtrg9aMtjs5xRp1ZHJkNCZmkho3L/HvxM4yQMgyk5RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720503383; c=relaxed/simple;
	bh=R9fU95rEEaX1vuDTXas5efxh60GpQsYm4kLexiVF3c0=;
	h=To:Subject:From:Message-Id:Date; b=ePmtDJnoTOQ8Wo63xVxWRlDsMvi9odTx+kKcJo8esV2WvvyHTEWcysHHVxeefuZxv9p5Rcd/rfhiVuv8Qzi7BsJ2yGMA/WJ9JsvRzObtV6bzsjf86CPr2VSaXdkHKE2q1qtM0rBW9J7Bt3Ev+i0rtaIRGBZqxEiX1C8gmKVxbfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z60o+HWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z60o+HWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D602EC32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720503382;
	bh=R9fU95rEEaX1vuDTXas5efxh60GpQsYm4kLexiVF3c0=;
	h=To:Subject:From:Date:From;
	b=Z60o+HWNjI4iBLrxTa7ovOVc5fQKqsekyLDPoP+lHWn0uNvYYA3Q27ix0n4+7edce
	 PB1KlAyTvTru4dly91yDo/Q42ZY9TOv4OYprxwX3OjePVv8AoL4Fp91tMMGa+Rktkt
	 rXGVq/zrCDQGB+tVYyDCAGP78d/dgf0f+wIfjd97f+OFXmnWZGBvJV14LqfeOAgLWO
	 UC11oSmdS0RiI6vb+xIuB2JQskXPq74khT8xNtcbQmISGzDn5S65Ap+ihmFl0syLG2
	 FF69pyS7XL1WJ64/NIQ3JpeET/DPFoEGdAw87dcxM4WOMPNtsa+1WctUyD4tS0sPll
	 iSIW1B5cqUXFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53B6C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050338276.8813.4865223473360309366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cad8add2507725e77a9ac614091c8b77fa5e67c5109830a88d46f1215c83d48
Date: Tue, 09 Jul 2024 05:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720503382
