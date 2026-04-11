Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB82DA74A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775917654; cv=none; b=iOLMYrDQdw9BEyBXLdzawZjLINj++Vlsgu61qdrUgZOKSJcNHA+440DoA05HVdIjbwvqX3C6VoMwu4H0oC2LWky93UIme15CSfFD6iGL9gaqzV7Xni6joe5rp8EXPBFpY5JnOMyPmEaWFuLn/vvLFY9wEaYHrLHlqI9v2l1wzvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775917654; c=relaxed/simple;
	bh=zF4lD07Xl5GPjZ2AOJLT3J25F5RfRIpWe2TnjUecWmA=;
	h=To:Subject:From:Message-Id:Date; b=eVP7cvUwKscEwU/Wo9MVhlyhv1S56KUoWGuacXyPfQ0qpYY14dxD7dlVgmz8WYBdEqVlSTBuvur0J8bHolPhPugzVMgIQOxXn5K2SsUcM6QQP40DaNVoMYVlpstkNykxu6xY8Zk+d4xZ5boDMcKHBTM+eH8LCmdKbJX00TKE5cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upjreqBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upjreqBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A05C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775917653;
	bh=zF4lD07Xl5GPjZ2AOJLT3J25F5RfRIpWe2TnjUecWmA=;
	h=To:Subject:From:Date:From;
	b=upjreqBMq4H4mXlCosc18t1lb19USjLRB28CeUJxWhJF0cdyuEvHuOQJJCkB5KVUH
	 RjdBmfQNAfSMXJfzVPj25HSp5a5RwOtEBumShWtpTwqecZK/Ozs/Y0XeIP9SRfwOE9
	 aQemOUCb8gxDsXKXtrC5gSkp9uSDiwTH0ZivWIdatvH68E8w0P2MG80z0Xn7vVZgvC
	 mPrb8/9WwSdJLjKSe3M5V/sygNJbhVmQNla9qvIF2O2hrv3XtA72/BR2BmgJvmLn1i
	 GJd0KCiHBShv1LNMlOeAMlLMNU9mQleTH8NYN02HDVYEYDXfhXA94ObV+NhDa4QCfz
	 +gCThVeYh8d6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD379F3ED54
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591765368.13098.3188929999870047567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b729012c04b3650dc26f2b413a86b1421e663fcc8909f518b1d9690fedebd5d1
Date: Sat, 11 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775917653
