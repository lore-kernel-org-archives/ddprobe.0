Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D32649622
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720817963; cv=none; b=IH6RsW7h9FfcocQHN3jmcvXrZ1/ZKsf0dVtm77BrmfGphRfB0ML+00DaVfD3TOSjUcQE+gV1clZRRv4FrqifDZ5RAx2lBzVEVNh8Vvw4WnhljJ9tn46kGKY+kIjU2BNoeiFv+cLS6lEbJdmHBb6pk1az/IUixcfiFiV0zZxkxXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720817963; c=relaxed/simple;
	bh=ecVfd/C8W3QKVAzADAzX+PQTr8JhGzV94Dw542pehZs=;
	h=To:Subject:From:Message-Id:Date; b=SdYDx6AK0OHsBcRht4Z6inlGe/w24TjsKIuJ8setmR3BVMpkEjofDmQGFgGJiQbJSzlDiB/xPc+TRvWD1r3D0251VK7CQVvw0c/Aj71Q4yhTIQw34dbIdHuhACaVcb3l1ddhSmYhMNXAl9Sk6Q8HlCSnYO71Xa9J0hN+xhUEq9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvNRwr9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvNRwr9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45F1C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720817962;
	bh=ecVfd/C8W3QKVAzADAzX+PQTr8JhGzV94Dw542pehZs=;
	h=To:Subject:From:Date:From;
	b=IvNRwr9nM4gAV1yOHGjsaSfurOWo9HNTWs8f+sXU0d12ccR/QlAlm7gjybop7nPLB
	 5VWl1em8ndYKhkb8ItHVpKHkTo0rg2i4n7X7nv3DUA2qfWy2dLUuwPJcVgl2VCQOsn
	 y3UChS3byRv622C1XSoQP6jsrcsliPTEa9Naa8QitCTgpKZFSIOWuT/RUChTwG4Gz2
	 HwXKKeEC3MBiOA4DHH9QzVSY7caP4jfuAh/m8nuV9ElyKpfEqgz7qz/3Id1TjwW7zW
	 QmEPz+sHkDpHKTe/GJb2Lh8lLnDlxlZz4jYWU9IpiV7S32qXD7SdnCWzcOBm/axgzg
	 f+KK4UObA7bEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0290C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081796283.29325.15298071325148521414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53de2b1496ef3949a25c3d16c76c603f86415b929422b35ad5cf2e0fd6676676
Date: Fri, 12 Jul 2024 20:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720817962
