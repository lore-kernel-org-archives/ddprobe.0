Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C53015624B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770739434; cv=none; b=R3XNLwG7q3KgU6PyNYrOp5xe8sO+LYQccMq3xLh6Cyb0fJRxlFzWUHtRCu0kPQ0R+FSS5kjlr995JEbXAKOIaYiPWICaPV/JJIBetaMRm/RmkDx51DHxcSNkJ/7lFUcs1aorHanxopdl3L6RKWEwy3JVjeoXpGr3Q+epjZ143KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770739434; c=relaxed/simple;
	bh=ytnPNlQ43FZJfOvHNMaXMeeTtJG4dBBcB9LvBERWufo=;
	h=To:Subject:From:Message-Id:Date; b=opIGsUYxDEYZAY/ph+cO31CA1Bn9h000AFze0xSnJjDl0dV6P6SPp1obH4Dvdef9wRNfGVCVMNqBPqRYZ9nv02Jrey4dJsCApEBI0NmY31ZMwjzjcibW+HSaJ1OkH+O+B5227B9xHutzodIpSKyDAX0xLsWu0ATLU7CrN7LcUuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QatR7/w+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QatR7/w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8264C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770739433;
	bh=ytnPNlQ43FZJfOvHNMaXMeeTtJG4dBBcB9LvBERWufo=;
	h=To:Subject:From:Date:From;
	b=QatR7/w+Mm3kmULtolsI+UFOHOC/DB93K3rsNBV6jJPnrGXeG1HPGRewNUiKzX13p
	 SzKM6+hyCcgLOXwGUBaClOq98/qz7dQgOtaPR9KZtuZBaEmHMqsQs0xDrcdDssUFLJ
	 nPe8KR+h4TRLZcPLQMpjVkqj7KSx9fv48zW3dt1RavJG/GKhva/UH3WiH2QdeaEx+C
	 AV0Q6H9W4Ga42TYTC8jbwGEn1MHd7Vl6hKN6bmol1COoBQsa++Nb5rniJXsU7CIeVh
	 NuBHeU52XT1XNC9tQIRsYRXP84DeIzRfOnfHfGsq1t8hoSAzYVIoxf2c8YyI6bqKza
	 1GckGjiWkFXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9805BEA813A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073943361.14343.10684045430277366703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9a25838619ac9f40f62356a44ad3a8bdde077a4b13f8d25a7ee304eeac2e32
Date: Tue, 10 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770739433
