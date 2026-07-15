Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFD2443E4C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784141314; cv=none; b=IImVrhVVh5C6eQMnyHKi23B+N5fpiKmW0yXlhKDcVKI+k9XrV9B9uzApKkV+hoSTxn6KFl+98Tv8QGAipNoujMnOZGKSyPghRssUW8WOttlBYpTQHwMHQOwxWhIbi8+jyt8Q4u09pAQFjZc161dRnnyO64M7IqUhnaDawxp2T3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784141314; c=relaxed/simple;
	bh=GeuKDzAENz5UMd9SQRKnZg3xEbzzFIuh8wgGX4JawSc=;
	h=To:Subject:From:Message-Id:Date; b=qFEIwrIfErnmST2ObjTvrkHILm3ca/qE2iMzqBmAXkTnVAbtD7RFC9viJT9Q6q5247YTisJUICZn16f3LcD0bGGIyImGR1qbW+SbRC4MlcoDR+Nta0DgmZ52ciZ3geCENAaInyh3VjsbA2I8Rx77lXdNo3quZjxYSupRECkJe5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWiSzsKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWiSzsKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9A4C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784141313;
	bh=GeuKDzAENz5UMd9SQRKnZg3xEbzzFIuh8wgGX4JawSc=;
	h=To:Subject:From:Date:From;
	b=pWiSzsKUzMrxEwpbLIMBuQhhWsK4cyprJMU3s8xV7iBZ70zeAMHht+GcOrxepSqL5
	 O7Gl7zaeLXeloVKJugS+QOsdEhSNJ5RaF+/eODEpojsIQN3akb4ur6jL8/ywZ7F+EV
	 REeE+QTC/ueRsXt9GPRJlbsPx8MiT9QoF1e1OWB8XXT7b1AoycgLRoXO0L3VcZ0bEE
	 P1+JYvPr67YXSspDsa+6OX85WH+sV3Q9XTN1dTUnRTCFDgH6lc+MxOEpWwFBepVg0g
	 3U3Jjzyug4OL3wJOyk1L/3zj2F0PwjJxnbyy4cssCALhoI4ttujokfzXKewAinoCfZ
	 nNx4xfSjYI/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA44EC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414131368.12744.8401058095374031079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d942d61a9ffd9cdb2455959afdc7d07aafd860769f4ce3cac04caf9bf1c7ff
Date: Wed, 15 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784141313
