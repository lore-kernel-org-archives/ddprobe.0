Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B065B216
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726440954; cv=none; b=feVJig9CR7IdwhjVYsPOloA9iNUHhQwo968ZvVU05X8Mk6G4P6eIEHdk7aMIJHt57yGlTwJYHFOfP1dgOAexfXF/2iVWJL2ElAOrdcAibImh29gDTRhdln+vd/RXOovnz9j7mofaqo9ThyN5Y7QvRFcRhvtMiItZa2MeWr9jNEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726440954; c=relaxed/simple;
	bh=S9cpdeIkqGQ0mGHYeTbZok7LHS/zGGrHLXCBqo5mVZ4=;
	h=To:Subject:From:Message-Id:Date; b=c5ko5E6uITWqlAA4BapRMD9DTcGxitgAjaaI6Cb15H6PJWIgyHENN7Z5aybUuNrdwxm0QqgZ2YOcIKEwdueT2C1TzEN/dl6TCqb31a1+0wz3mDz7UcPmMQlXibdmzNE/8L/nInWPLy550tYC6wXc0OpjHKfb7cMnD7MjsoCv69o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdXFXllp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdXFXllp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F6FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726440953;
	bh=S9cpdeIkqGQ0mGHYeTbZok7LHS/zGGrHLXCBqo5mVZ4=;
	h=To:Subject:From:Date:From;
	b=YdXFXllphsOJ2RHgT4d67LE/D4sKKtkNDJdpVkYlpI+OjUVTtaimmJTxBknRyoPOc
	 nmawucsjgAz2oq2eDAQObdq88dLq8+c+/k748gDijB19kNJf1rjmgqbWx8xKXpJ3ap
	 D9eQdRfDUngQG1jm+qbdL89PT1tBpz1cc/krC+y8ha4pU0OKBON+HGzdPQjMcSN27S
	 JZpUm+hXUxl9SaeWXHYwniqB26tW1hvSqWpYi7DVAU/3kR9480SgnPQQfPEI3rE2px
	 j/+xzAWKtTfYE4TCRLm6lPB5Ytu3afc9bdVDrJkT33Bef77APo3m2b34cdL8us3kEd
	 2iPVxv2B5W7jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41AC3ABAF
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172644095357.28207.12133260882524526917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20c087e92619af0e9488e2ed79895927e093ea47359c59db5659aba0d851636
Date: Sun, 15 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726440953
