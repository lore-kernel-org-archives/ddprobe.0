Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E77363097
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790013634; cv=none; b=q1af3EeWAqOW/uHMe1BsHJKPHQNHF5ZqCjjJHQgiWW2vkuIGN4oZPGszKfWVvy/c35gCS80XlnuGJFd227kyo09EQ7S8jgijgZodnivcjU7D9497cDfTwFmG3tjAdP18Sdk3BtI7f1v3TKa55IThDmG0gzwZw9BUTJoYtE4DJ3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790013634; c=relaxed/simple;
	bh=L/jgaWNTnwPuKpJExgbnJo+QxqDaAYYcQCZVL/E8usU=;
	h=To:Subject:From:Message-Id:Date; b=dRpCOxNhvH9ouHj3klZI749A4UR/cfkCJB04cnnwD7eHw/L3VsPgpqOYx6BYTMlGb2XEspYsVz1zV+0mTdIOOvnpumwFpwrap6q86Tm+b0B2yQHydhL0jokdo7Gzzqpsb1AgpQ4uyV3/28sQN131kOQHTK20ryzhetsL5va8u9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2lHAZPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2lHAZPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC87FC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790013633;
	bh=L/jgaWNTnwPuKpJExgbnJo+QxqDaAYYcQCZVL/E8usU=;
	h=To:Subject:From:Date:From;
	b=R2lHAZPIAj0WLWeZqgPpi1LkqHJfr+fDDS+1uCxtCviP6OrOk/lkpkiIus+Ba1Joq
	 aei4LBHotBipyjOLbB2pOH2eAfDnA3eN89T1Cx8W5LfBKTgL3Z/00+3Y8Ntkwpj4Od
	 7HKrrGzo+ou3Vgg8pbWd1OR3VBbOXPbqs89NauLN4iWwZfb4nQ/s3LzQUmATxuKi6A
	 Qmk7j9VJD8Au+zCEFTWdp4q4S7lGcTxX/bucpbCRIrqlIfkxyf2L1cR0DMdBUkLJsq
	 6I+g6FNcqgnAOAURvobLIC5sVVsB2DqfMXSQt8ycECe8Hh+rn1VmXOyptKh/w4TmmO
	 jSX4DLq+XVPTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FD2C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001363373.4213.5938647111872108631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43a5cf69227159d2988fb83219400ad935cf74e7e747493ebc7436bf630a3c5
Date: Mon, 21 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790013633
