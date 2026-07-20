Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998F63B6C13
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784532514; cv=none; b=ql7VtAEEhNUIgdUhJ2GQGTdhFSO4K2yrW2V30kxBVzPG9NRxO8Sqtc+vzDZNzfvhNWP08KyLDGHu36S2xPvrO3rwgXyk2XvKnDGZFXeazffB9RXkUBw7YZlha5Wi6Vf0cOfJ1uNog0FS0GC1xBrv3IcPLgPylNB+dAKnwZwuNAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784532514; c=relaxed/simple;
	bh=+kk+Zy/vNfdghb4jIY6L3Pkl392O1e/lDgdPDDuIBUI=;
	h=To:Subject:From:Message-Id:Date; b=FKT1bkxLNK5xNmtbjEfEvinT9EOUGiv3EmzL4+DGps8O8RTd3BEq0ckXH0s6+7wr4p00QlriS6YUiJiTCHilBvdVqw4//pVTAhaSo4M10Q7WFpxrCFKvl/bmXfoFd+XPxizU27UY6bXRsuR9HImBXBhfYc93L9tfmepyhjTFArU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBMQIUqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBMQIUqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BCBC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784532513;
	bh=+kk+Zy/vNfdghb4jIY6L3Pkl392O1e/lDgdPDDuIBUI=;
	h=To:Subject:From:Date:From;
	b=DBMQIUqyy3Vg08kUIOD8rQds9FrHH6W7XeoqJsuaIMfsuCd9T50U3ECNuCzmcfXSN
	 JIl+czgj0WRA1YlYxB1tKLGwjBhdyYfxhrBwv5HcriSfR89jZCUz0CNn7wgPqqF+VI
	 IfoqBRjED3Z+46pKXHiLDryFQRgNeKkyDSBv9944juoVz1g87NDQ9/4s1xbeGpn/wV
	 uvGQGKdt6jAUqCVNVHqPA0eAbTmT7OE/4N/uaf1XFLKcNpzo2Ea/NgrQs/D0n6cpG4
	 DnUk6DCyGU3cxadFv+Q5r33uztSd9wguNcZ7nF5iJhji4+XD2heDSt2rlnCxy2qKoA
	 C7WkL3m5h3cMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DADC44521
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453251370.18517.4123093474872420956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bf2130d14fefc1862dc96ad2549afcf72b555776c0b3aef28d28386a99484f
Date: Mon, 20 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784532513
