Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F4637F74C
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778530234; cv=none; b=lRBNozGg75wEKzHZvDRSEq0MXJZ521pKrt+JOVz/B4AEFtWI7bHIP/igNl/Db/h6R1P//4Beja3Yz3EW4gJRkYHoFURazPF/IAmnq4B9YXDJ7hAuq/noL1fij2ToqE1jAcjYAkcgE219+uRXZSCJudfvjsJjHmuxw67/V0fcJIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778530234; c=relaxed/simple;
	bh=lWcHUKj+lU5OWas95tJfw1uJMWZ/1PupmSOQBlr0lBU=;
	h=To:Subject:From:Message-Id:Date; b=TFGUbGD8ALR2FOMUc5OZ9n82JHyQTaRr+o6brQJOoUEW93y5w7YIh83ADP7e6Y63WTwjEuW5UGnT2JL+7RsN4Fah/N743GO8kGNe5GzX/vCfp/FhEVAqba2Nw+nXhg7KeCBEXIJf4VbXJ2n6i7hQG6+xrmtjIcXYs5+M6l8Fv/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0C4h+R5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0C4h+R5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECEDC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778530233;
	bh=lWcHUKj+lU5OWas95tJfw1uJMWZ/1PupmSOQBlr0lBU=;
	h=To:Subject:From:Date:From;
	b=h0C4h+R57UqmugKFACTuAEN27BxAymAUX+zwtGCOZlWnUfRhkNiuv2kPdoUdrUr94
	 0SuY36XvdR3RRXi0MWwWIjJsva3TAUSBpGYT6PUymU5ubHmqfMH6Zz5r8QAVXTG2sV
	 6fDV/cWzOWm9bE9ImC8Eys/eOEfFGZITuHvweBqnbcx/+GGOdJs86Bqz7/6Kno4BdG
	 PWlXFxWFUQgcrgrHOBz2FvZ65VbGvfk2Vq9dJxBM9BVu0tuNwcUu4+2JCXLXCer8d4
	 /SK+Lwpy6hok6tLGvsUAS8qx2Mb4lU1IjMbOoXSb7Qo3NSTfCrTZia5K7pzZzd0hXo
	 PPG+nWjmZISbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE85CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853023368.4615.17937831687809414445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b5198c399591b0e3f0df23c6b44725ba10c68a046823de1e0eb4ae9df96d01
Date: Mon, 11 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778530233
