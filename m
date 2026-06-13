Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3545935F165
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781321794; cv=none; b=YqDdR9K4FLxctracepELnyTKGg4IlIzRmEGWXF3clSi70ICCrxl+FRy6cCgWu4UDHLDq+GaY4oG2Hq6iqLh1sr9y5wLivyMIEYJZpM55phuXT0K8gjoxXvcvWRcGx+bdqQoivtKRpobnHFdC+7DPx/DRwjzZnWuKUDJ+LKDS2Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781321794; c=relaxed/simple;
	bh=oBeA2lP4B7Jbhz0azp5IUEEJNAzwVYYYNe5mAn6en3I=;
	h=To:Subject:From:Message-Id:Date; b=keTfkZxRkJIlwkUajVtzUT3mZ54eK9SjFQ7Ua5z1YNjVQTEqduXkUZsY74rbD0FyDRRDKApLbcW2oQR907X0axMrgGWy6QusTypGXoIojvW5vPLLILvz6I9CUdjRRIuv2B46tPCuFt2ujjVWHXQ+wak5sDrSTY1EP5EfJm860iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ep3+yKJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ep3+yKJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1251C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781321793;
	bh=oBeA2lP4B7Jbhz0azp5IUEEJNAzwVYYYNe5mAn6en3I=;
	h=To:Subject:From:Date:From;
	b=Ep3+yKJuAkJvpd5gPsbFnGEEx4dSKk3Qn1CMIR3YbqOww17hBDOyMY84tBx1+zEVz
	 O6xRnwWfZ2dXNB5pM/RxjrdKEbuHQ9xIfbEzfFKVjVzBiqTbc28bXKVw2E1yatHn2U
	 DvcC9lOgLwWxjF8ndeqyqAyreVagNN1NxpffD/HrxY2fJcVzui1e5YdUlIuk3Si1bR
	 0o5i/u8sR9dscqWOqvz/+9afmbwKZK2swNr4mo1exoZLOY+d4m9kTgWn8Qjh1BXjfB
	 HMhp7dvK1KfItapCZYQdbTk4hO7I+mUwqFIFs1Ibff+23MeYrPRhLs6550S2E83G1/
	 e3cqtyO4ynpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86B1CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132179368.22981.12742655873250588218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad7b4abbc796e455d6c9a83e536e85dc1542f5b964af740e334555b0f73543d
Date: Sat, 13 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781321793
