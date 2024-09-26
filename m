Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AFD1171C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727328954; cv=none; b=SFHUxZGLaxpC3KurXHICvLAMHyPd93w/i/jGJ32KkZqxtCqIHhfU9e/MrEA27gPOy726+3Hj3mVFhA8IP1X+ki771j/8URkQxkPcahQD9uV+oVPCSDAdlOIdbDtcmxGGrmUDsP4x5JLIc3pkIjjqTkVCdGW/chRk+P7B/j+itCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727328954; c=relaxed/simple;
	bh=u5Owj5baHRICUv0e9VdLybCra4jQ05EzmNnE06ogX6A=;
	h=To:Subject:From:Message-Id:Date; b=i/vjxW4ddFh8Fw6nTRxnFPKJJVS6R5XDDyssTectZag4WzECM8ScW6rTqeH8ZSOQ3bw0VL4WuJzqghC6kAM7B2XpyWct9P68GS9OevufpXx+JfQsMxc+VJEM35CO3oMUnZ28h5TAqSAUEJZAxD74h71U97z1HpsuzNn9TkOuh1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULeD+e+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULeD+e+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B0EC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727328953;
	bh=u5Owj5baHRICUv0e9VdLybCra4jQ05EzmNnE06ogX6A=;
	h=To:Subject:From:Date:From;
	b=ULeD+e+78cMJjnd6csc2WXTs/S+lRQ1XI3EcwJnRMZPHme6VAjUDN6v8oxJ/TQ7YZ
	 AVr8/zhyvQ0Huqh5D2f+S11giL7kgwOID1/gHWrJzalM8sdlUHoutbm37FM655m9LT
	 8U6OOdI9gzMQ8+H49YjN2ofBwAljYRN5KnO2GCuQLpCrdeG2qojJGKXipreobqXAb3
	 fBChNXUEeHXfqF7tVOYWghzw1M2BujbWtmsYOZ7hwE9BzIBcs0PrkPG69w4T3RqwKZ
	 DA9VK5eWh8S1uWfaAVUKJINCwprPfA+vIInaCkFVioAQzGWDTGrEsNq2fW5AiSsIUU
	 sdkwn+KIwCyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D5BCCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732895360.31888.14606187077799232711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9bce5f83654708518276cc8a865a9f0acb3d0af6452022d072cb67eca7333f4
Date: Thu, 26 Sep 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727328953
