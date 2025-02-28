Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486D71EF376
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740756535; cv=none; b=R8E3cW4WI8tcQU7wWvUycO7bNAimCmWhP9Jjsv+5HtO4KcXDBMFM64skRvmIyk/ggfheDDhXBhlm1buJEXuGFnW6R2iSK8K+PWQVI2BObXdtEcB4cABkLEl8C4/YrBM/h7WbWFvsBDSdJFxqAP2tBWLeL6DfKiCYv2ARFXpi2gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740756535; c=relaxed/simple;
	bh=0fUE1rgM/d8n/1QATsPqnoIAn2Ay04t2s5DA9onuqoY=;
	h=To:Subject:From:Message-Id:Date; b=FOUObZ7SRxJq5vaCpTxBMLGClyuEHREZDBog9LuFQEaD4xmbswCAxGxv+uZnibzedfHfsBoBcdVvSUYnUXQpgUM/CK6Amc9ZN6N/BxtEvBbztS+PfXudWtQMXi4l2WM7io1HgTitrpS3YnQvJre97kHWBj27qpmR6DefS3GlgHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geu5PyQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geu5PyQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB621C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740756533;
	bh=0fUE1rgM/d8n/1QATsPqnoIAn2Ay04t2s5DA9onuqoY=;
	h=To:Subject:From:Date:From;
	b=geu5PyQAeaXZDazPPNNVxSl0JZ8gRsS+R9SvsfzQq0vZQTp98e/6FAPqHZQS/4/WN
	 +HTxcpA1w6UvjiibhsGGf9vOE1ih19f0tU6TnFxmD/mZaa5ykeQcrOJr56Q7gqCb5C
	 h4tvHl0LEYkrzKbV/NXQ+uxza2aRlj2jPYuoOIjSPvGq+IXqckJIxpLsDdv1zxm5O2
	 xAbk3zCZ9m0eK5Aa/bp5SzzwPOqGETMRJawU1CCfodj68VZhWaoYUbb1NFiTOVbV/c
	 81QPgbvNxwgMkxAMlUc4TICFjyRQSIBiInfr1OYmsZpT3YC7KhF6lBJdo7Mm5012Z+
	 WyyMyvRxCE9aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990E2C282C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174075653361.13321.794619815521240201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4829c419fe104ada6f84c437b505f7ed7f59dddf40ff42ab42094939ca5a2b01
Date: Fri, 28 Feb 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740756533
