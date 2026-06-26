Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABD03EB112
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782469054; cv=none; b=MTsK6OEouHbysKQ0ZN79koANRROIiIpvxdhf3+UBMCQHvsrrV6iySxxYUdX8QClCH3Ear4WgiJU3ZzlKSpBjfg1XkzPGx6+mTgsxyb/QfAl3nsKoGRk7KrtqmRPYwUPXame4mp192s1D8csjVCZso+pbqNUnsWTti63amXRT7Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782469054; c=relaxed/simple;
	bh=mSNQL7gscCpZ+4PjC5wzme2UTIBNlf6GJyA6A2W3KIE=;
	h=To:Subject:From:Message-Id:Date; b=eLfIfd6cPF85X6yT7O91rFk6PQ4pX3OQIh38JFlO3CujlbrLgxIggarvrwa9eZqgLZF4BwVacemBVblNbmydLzZd/sluWBKSLojhS1zQpGhtUXJlzdpI5dVBfDwVCUt5BbCXq2EV8eH5LhckGvMDByApa94TdNlWEwDxf+c+SUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vrp8Yjvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vrp8Yjvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73B5C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782469053;
	bh=mSNQL7gscCpZ+4PjC5wzme2UTIBNlf6GJyA6A2W3KIE=;
	h=To:Subject:From:Date:From;
	b=Vrp8YjvkSXumBt1juClY6k6mtxiBwLprz91AWPmbTZqhN3cWWVOyeX0NCxhMbrRpY
	 YZlc/iVU073T9H41ExeopWgOZ4UDKJL5d4sE7yYWzKEcKDq5MaHw+FBE5T7czc/RXk
	 ZODbUia4yZrGx1yATm8WY2hiKnvqGTvg2deAtRvP07tPLUmbpWJcve/Jm1oOYSk+QY
	 YicSzvDwjM8jn+OHZ9ElkTRXkmlsR2eg6joRE9DBDk8/07OPq2/X3eLGzil0KFoqRN
	 BPCymwxX68+/pX/0P2mTm+lEG7kWweI4QU5TH5o4Glv/vnqfkOO9VNS8a+N1JoDjLx
	 ytwI1lG2Ct0qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDD3CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246905370.19661.13191716644772940040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af94031a2b1bbb1637134a1a5e2c3c8627047da8abf2bd878822f93ae4d53a03
Date: Fri, 26 Jun 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782469053
