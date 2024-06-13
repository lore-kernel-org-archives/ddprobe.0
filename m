Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521076F07A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718315303; cv=none; b=i2A1VSHOpVJ3EGkJqFLPF1LpsH2MU1EMVUoTfoa3Ja48Kt4+HUtRPYN+gnx33VMNR/8rOq+p1t+K37j5kuBkH2KCEXvkaN1L+/RGY0vF4r2CxAEt6Vo0rw71LpqUY0/T58nxlgBdPMbtFTXl3YwK7gmFaX8iNpBgcbGMBSsAo7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718315303; c=relaxed/simple;
	bh=uk5gGu3Lm3O58lgUr1n6v34RDd5WGaQqonwE91et2Lg=;
	h=To:Subject:From:Message-Id:Date; b=nYolvCkJqNnHPMeM4ME+q6viHb7e78ItRBE1ZQi9on73QPSvLXgQ0irs4neHMhbU757voAgPglxCFPVJcMaOCtnP3Cr3sBdsmQjPADCh1XvKtgAebztfJaw0q52/0jvWQMEUy4xlKoUxMDbxWb/1VASK3WoreAfjGDCyDtGzlpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pr5++Fzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pr5++Fzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2DBC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718315302;
	bh=uk5gGu3Lm3O58lgUr1n6v34RDd5WGaQqonwE91et2Lg=;
	h=To:Subject:From:Date:From;
	b=Pr5++FzsEQOfMOqxAWofvZtE3UGXJojFJBTY5E8kOMWLFedC6TQy1qjO4ryrcSzJf
	 iyLJ4BksW1LOefki253DK11u6Qu5j4iG1BYMg2GOP+bB+1CPXusCQn2dzs+wdyX4Ah
	 DP+3B1UgbTePu1pQfRAftO4Hoj/Jqp743jZBXNNcSbNhtoqtTzaG7vDOeicFnHS3SV
	 HAS3Lt6Jp2WswseWUAQFkkERHApgLUdj7QCp+XfZYnRvxbQuqq1+zK4AZnyMkrsddV
	 LITtYE/7N8zJRc02ieCZZkall4wfCpP+UfBMXoyt8nc3W9qb4qbF11OfYQ9sispjwE
	 98nSfj3TxxSvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59CDC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831530279.17845.7879074656716943288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9646f400ae6be3dd6517af7636fd8008e7b6473cc3249772bf1fe1faf9ad076d
Date: Thu, 13 Jun 2024 21:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718315302
