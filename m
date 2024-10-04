Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FBA179BB
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728038754; cv=none; b=BlV1B2PY77lmOLxyVfSY+NDgi7z+3yxLhBJu/Lb+uvKCcaJll/4Y1GXCecfa/qqhcPa70ls9zcGlLTw7U+/pbwtivCLP7SkZO2JyABgkSfH/8duSntF0bvNWjEjcyoaT0FEVYVn/4bCgr/g0ekv7JT7d+CDGzYWDhvEp2Zl/wfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728038754; c=relaxed/simple;
	bh=uzYEsks+5upSeJ4OJpJmh7xlTvq7qFYP0xsiX0KXTbc=;
	h=To:Subject:From:Message-Id:Date; b=L0aowHS9tsXptqG0eG6hJTmk70vUmeIU2L/41jhoyIKsP6q8rL2Kmb4iPKb+zj3iR1Y7X4J3pyaPHUm+SvRz21L6jTWl3LV2sW/42xoFqDX5vISUmkKYX83/Kx7+LXbE0ubp/VPow2Se7JbJ1DH6wtZi2ytyMC2HSQyv8hKvntQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/XTipgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/XTipgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE2C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728038753;
	bh=uzYEsks+5upSeJ4OJpJmh7xlTvq7qFYP0xsiX0KXTbc=;
	h=To:Subject:From:Date:From;
	b=d/XTipgHq03Xdfb2WA/tQgfx56v8rM3yZKcg+kydkfsI0vo/fJC7x3/nmjWHBPWs1
	 qDWP44nnyFjvmN1ezQ5K0GIfRFvtW99TckU8aJgAhgt/tJBo68kXdRiWyoW75H/d6H
	 m3PO1E4u9fRefWO4/eBjJ/IIvHIHXPpFGQhvKZSphPTLHaVOP7x6ORsbuDyQMgv36D
	 gqVEqDrQTGHbk0fL/rGy64Ke1yayhfCdl8MHdUQSwPMKTWXMAlHGzLDUx41learGPF
	 eo6xSrXPH7bvBc49VHXKQIy3CcUDxkTG6wxQiqXdQxn5XGOUjtrKFpdG6smHrJjelX
	 de7lcN2NWnZjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F2CFA765
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803875358.21137.3799112012125621653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac6419fe2b5ce3a361141e810b591bb530aef106bef6cd8d0ac64e857788919
Date: Fri, 04 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728038753
