Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C95433C192
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779613954; cv=none; b=aDPg8eRM/NzNNiQ7KKsw78lARH9yef9Wur86T/RIQAxrxFhc7vVeGwm9PhhbPurvbCkYkuUNd5suNbQW5+v1P+UWt86InhrdcSrNMEMFimF6lOZepipaKZPrIu5z+Tk9WTURjY73jR1z4u7ShPIRzVpXGoEAonziCUvz/MJdVZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779613954; c=relaxed/simple;
	bh=nWckQ25/i7aCyeN1VFV2V3Er+L62A9cvuxOI+V54UDs=;
	h=To:Subject:From:Message-Id:Date; b=hzbcc7F5BtE538L3q03x5eWRBCHtq0NH72hxhEscyvCMqOzk+geUXVd4I1+CNdAIvMg942oX8xP4Ml99UpJF3W8YfFHmIECx/RHb2PFYv66dq/Eg79eQBGRwX8rdOhHQC4rTar5I4HwtULnEf876ZmoMnPHfzInUOUdCKePAfmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSnoEqxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSnoEqxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1C4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779613953;
	bh=nWckQ25/i7aCyeN1VFV2V3Er+L62A9cvuxOI+V54UDs=;
	h=To:Subject:From:Date:From;
	b=RSnoEqxnlzja1auWKPJEsdyZVSNGWzevSP8+f7oZHAidRD0junw52T2j1Ul90oA+w
	 YqGwD4QHG8NT7ADM7svAxhsdnyd2ZLVc+4/XSIp5PtAqnimDsZvjW5b+xowc3sD67I
	 cyCXHp6IWTl8CtblXeMouxV0SLLKYOpu4/ULmDi2c+JFzOtmSJmK4iQpcdDnjPkdP9
	 +KtwrFTWa4RkwZBgtTQj+5K2qG+eOEzv4JUiylmA1X/jb5MZCNOUVQn9Bo9DinQ7ke
	 OB9TjEeQPO9Dv3TlSgF+GaUiCi7ow87RuqP/rnuhdvF1z6NabfxyHhru6zgvo4oKBN
	 sIMPOfqthnteg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC7CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961395368.17862.8431612562182745946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023de81ba0007374ad9d6ce715b591e83b849e1011bec013d68e008d197df563
Date: Sun, 24 May 2026 09:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779613953
