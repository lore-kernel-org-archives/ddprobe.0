Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1A016C85E
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725005754; cv=none; b=A+COitWqeF42TpCBn6J5z62frYXTtcinn6w1FMQlOmrnbKQE/bD9msZxNCvtJRR/xQDFVXtViP0YZ+yDCwslAoxU90QSVdpxgz6fIeL1DGPccWBC0FONGoCcb0A0znRt/8963hOesHVOi8T4d7ACMhAHCardkAvnygye/9liyMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725005754; c=relaxed/simple;
	bh=y2IqWzo4QDc7mhSIgWcmutFkKQd6awMqKSqfuYZOWzY=;
	h=To:Subject:From:Message-Id:Date; b=IQZ2WVVUewqnffQMGZud7Pi9GywyI2SqUIKHW99FziPDY8FMJUaKuMJFaphI6Ld1LhQPLNCUhwOuGL68HTpdDa1Wwdp4hsTw2Aj5DnbriJuQtEmvKfZeNXLEuITQrtTZpc33rmjDUQ1XbEf7G/eh/cseBZdUcBjS20cUFF4RABQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqQi02sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqQi02sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2023C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725005753;
	bh=y2IqWzo4QDc7mhSIgWcmutFkKQd6awMqKSqfuYZOWzY=;
	h=To:Subject:From:Date:From;
	b=UqQi02sr7Vy2QMLJ+gt0fqz3oqigE7G3POQcV8p6bdUM2Ft3tbUYOEwcCHaWvDDdg
	 5DvdtI4LOLvSgCRGsurK+XLE3lv96oRpvF+5Vwj0VLtylPOgwP94y916hfhl2iddKa
	 qkunvYjUPY6RSuYVuQ0A3gv705G2yt3p39j3DJb94Lt4mC+MrVMiY5gCwOf187rdV6
	 O63+eY7zhPMwdQca4RbfRld4XCtD8+C+uZZ4LYwkHuO4fnAHvc+BIhApW6RNmibWUW
	 18j/cJXfgtvkMgr/Nif2I5BRyxbunVqOJo763wisqMjD3WSFTVtHewyAS2jfJXUa4C
	 Z57WtOn6iEGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948CECA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172500575359.17305.1489441174664545568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0046cb6c8695b25e9c606368fcba37c3f8103134025228b407c2fcd05c962b72
Date: Fri, 30 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725005753
