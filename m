Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BFBA55
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748510395; cv=none; b=d5pW0FyD67M1Q7U5afvZnvaOZ5+a7Bo+YfC0NRTp8gnJB5HqhUquRMYG8F4IaKhmNc2CwrGRG0N4U7pSLr31Px8pgylO1TjHJwxOt24Th4r21TiUEbmFo3ICWAQsktyt2KNFsWqr1v5Sfrol4nUQ96adwxeWZHBXCGYgoWmefx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748510395; c=relaxed/simple;
	bh=pNwUEf7kSOcsJUGBOll0d8T+WMl6TYZiL/It9hH2QDs=;
	h=To:Subject:From:Message-Id:Date; b=JkpzOzVk9onzCtOh7cs1xPMNkVe9QVC5QWTBHdqP94yzk4nRvZ57SxBcamirQg7HXhZnNkNzrDg2Qq9/1OYIvFexoEw1yIfhBdlQof8rL/2jnks5f+ha07IC3wPrBmWse1D9zAkMIoqo0m1rMFPSHOEL0pxCjblicg7fGLv1Wdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xmau/Yk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xmau/Yk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD29C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748510393;
	bh=pNwUEf7kSOcsJUGBOll0d8T+WMl6TYZiL/It9hH2QDs=;
	h=To:Subject:From:Date:From;
	b=Xmau/Yk9loOblH/tYU9nbt+dXlXPYxuUn/j7zbZxT5hghzO9/5p2lqtswfhrHvxiq
	 biZTZsd6oFHRsxayvwtav6FcRyAiDM9KKgxVjC48xREKcR6L2m06uQC9fuctaXkRw1
	 tIp3y3j+nAiEQGibMFzcza0RGzxPLrr41yeWkNAOaCKJACFfIsObdOJl9U6xBa+HX/
	 qJ80KVZzAhZMCrRE84kYZNrXSI64wP1zv0Zjx/VM92h1uDbV8hvgo58dgOmkRVrqb/
	 Qu8kHvWBb9ZZLKg9MFgp1KREEBVmmda4bhR2Tzijo/bY6ZugvKo5DGneKXuq2CILOa
	 iIsmlGyMGigug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6FC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851039357.17677.14783339363416228924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b4ee40cab3d1b1365ba78406891c9b893d6c92a85d9fb0c8427cbd4efd75c7
Date: Thu, 29 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748510393
