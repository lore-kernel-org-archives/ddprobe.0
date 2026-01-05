Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D2027EFEE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767620634; cv=none; b=VrXqrDlaH8sAQdrEbp8nr2M1YHM3xIY227bi6gSTBDF/qzcn2LJDnhROTZj+5P5fqU+DJpdfwgXjqWJy0BkkQeUzF0kPNYrkWPluS2IdYoyNo9QnIm9T95G01QDExE6PvpeBlapaEkLpmeSil11BMHWAMkFZOPqp+ANptTO/pGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767620634; c=relaxed/simple;
	bh=jqf2Q37hY8J9989ZJtVTL9vPIPcryoVSHGPeyVVPrr4=;
	h=To:Subject:From:Message-Id:Date; b=OclbqwJmDIpr0h2xGR27AVMmXte0jF7A1X2qnsefMNXj3vP9HBP85fWUY3LlscguccOJiP+ShNARmqXzhgXtQZwjrt0W0xXKsJSQaOHgHhBC0IEMVdDcfKVo2+ipvEtwxIOGodrezuJvbhoW4IpG1GW3WPHf+5Oc9Ih1S8jFuV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPKpJNi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPKpJNi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F354C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767620633;
	bh=jqf2Q37hY8J9989ZJtVTL9vPIPcryoVSHGPeyVVPrr4=;
	h=To:Subject:From:Date:From;
	b=qPKpJNi61dgzTtiX91uy394541L/2z9/kfaWUzifuDUi+lmiyCd2nJiq2uqJMIgfu
	 X9f1TXaK2XCNu4l3nnxuR/qwUFLlVkkzJmADJcugjBRC8VTxHLyVdg/EENOSVp7nRD
	 86H+h69etacHXmuXv5V1wlDxadGrTAbUpex3rkl4Cel14kqPHoVXDEUdetVCUPi4SF
	 tVzG5poi6M2awufMpKv9qLlJirGqlJKAUIgo/v9OOz8q0s0IMHiWcmdlVSim6j7Z5P
	 Av3K3dS0DCGg/iUzJW98uO5FlnSvhhiLvuWJ2siqdyeupY4Nz/0UHylVvi7DHI+a6F
	 pK4o4kO6g5oTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F472C79F90
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762063357.6014.1110017670479489002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c21041afe85494a1c60297f51309bf235572c13026bea1337711e486dbeb92
Date: Mon, 05 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767620633
