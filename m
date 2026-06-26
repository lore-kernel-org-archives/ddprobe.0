Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE8B22D7A1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782436654; cv=none; b=ozaTgKC/j6oCvwM2fUqfOXkbn9Mn8Lm7KiyP/D4sAbE3VXQysNHNLYvBEVAKtB9E3hsrAtmef3MKJaF3WFWy8wsmgJVkeyOOgB1T7c1GWHzZmQowcG8FlEPyq36uZX+le9IvHTlbZyHSIBpAhDM8JmtNntZ8FFGaxs+j4s5GShQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782436654; c=relaxed/simple;
	bh=RajkT0c8SBq9kqsJHu4wxRpha9vWRwjstVbfbkUC9oc=;
	h=To:Subject:From:Message-Id:Date; b=rR2vcX8QTpngTjFZsufYm38Qc6M5LV7hmS3n6G2NURCuKp7ymYPCmKFTsSCfXAb3ToYz/5mDjCDzafFqu78Olfit60p5wemx0nqPP2cqJzeajuMdTfW9xqYWzJOjHl3cL5GOf4aJHfAhgZErQaoMQUjda+c8FM+UoV5IGiEogbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DraRfYhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DraRfYhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ECDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782436653;
	bh=RajkT0c8SBq9kqsJHu4wxRpha9vWRwjstVbfbkUC9oc=;
	h=To:Subject:From:Date:From;
	b=DraRfYhwoPo9eA8zZn2TZDrrNFDpSAElB11L7U8km8+8NgoBsVjpQi1AqQT9BCnxt
	 PvwmJ8lamObFxiJXvlOsV9aA6OX50lScH3pk5nKN+g84FfF5rOON1PDLOxEdak1gXG
	 rCV4b3v+7yyx7aZj/Jz0Hdw1N1doKe4rM2hMfxkAme7Q3fm53laVLObxBxf7pYm6ei
	 f2znVrLsCiuePbvaqB+PJyZgEFefMfqpEAP8d7WlkQ1l9HL7f2Vth55TuwLO6HJ5Ol
	 nNB3GY9Bpngd/H+StVjSnBuUJP+bM6ZPIl1B2G9AAple4FJ41W8ncbCsf4lreBpQ9S
	 yQjW/TO2Jw0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0652CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243665368.3723.499727844465285944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ca4ac3eb80589a95b33500e2e697f9162f161a3142f8fb183556a6ffb48e32
Date: Fri, 26 Jun 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782436653
