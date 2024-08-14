Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AB0139D15
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723617354; cv=none; b=jV1iwMS2esbMo0q8Ed44jOBUwQTZ6nQeN0ZKu2XpwvY6U/1BO8e2YKMumTatK75FPZIGR/dOxltRmxerYgj3kbkNDWCQod5XPSk40smICoTLABgCH19Y+WQ3oAwJAOoGrhouq0d0UHnwAJVchJyEVzWrkadRnxT1VDuasQsf9Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723617354; c=relaxed/simple;
	bh=l6WhXjhN6aZMhN4SKYujoNTc0PbYs1ATgueja/ajXeQ=;
	h=To:Subject:From:Message-Id:Date; b=F6h7rVuVYG7kykTE4UZ9pXopGy+iUsuuXKd0gblZ/b6ChC32yc1l6CbsuHxTzmUnnBkC6cPjdK6KiXBndZjmsJLboBA7EPDHE+Jgm4ehgFsdPR2dzITt7ArSawBW+VcMf8ALUEzXNoK1VIIsZE/J8qt1RyDbOo+EGeOX+LM9iuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOUxfj/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOUxfj/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB75CC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723617353;
	bh=l6WhXjhN6aZMhN4SKYujoNTc0PbYs1ATgueja/ajXeQ=;
	h=To:Subject:From:Date:From;
	b=UOUxfj/E/5TLAvrGaGJ6TUSksrmYvkhoacH6JiFsV+l5jboENljh+myb4tQ3tv3d/
	 VABcUsOQi01tUG67JK4RxB/vkOB1+lmzhwboPw4nz3hezuvHG6H/AFncyqZY9mbZGs
	 rnYyWuWLb3bYNuoyWB8hRbRgdnPXF32GylhVt6YLnXzZiXKttsw0IqG9yvLj7KsSEn
	 nY6WbW1zpdzHkMIjlEls6qvcrBUMl0+kuMo5vRx0YlWYCvlILks9oS6PA6Yv2lht/K
	 uzwnih9c6q45ipQRWclfYkl3J0UYnXpf4pcw3V0Rg89H/TZLpAYb8PWpZEoPXD9Erd
	 X/HKjDrvR7HIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C42C52D7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172361735359.12523.17998007922516585124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca682fe56198105be67418499ff6dfd4affc29f784383848af4d49ba0616a81
Date: Wed, 14 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723617353
