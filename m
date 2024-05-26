Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3E3622
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716686063; cv=none; b=rejABtLXACQnA9tdGu2w+J0UYoOEYPZCD6iy7I1nLuy5j+eKUb90D5rE7/h3BypyaCB9LcciUHidIEP6gyicgcAaQQFTUVquMXSTEIEBmMLOZPcrbb0k9mNRVWT4SO+Z0GKMPrLpUyxyLMiR7RddoydomFxOwQuAXp1ZvE3t9s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716686063; c=relaxed/simple;
	bh=rJkcnfsEY58hyjNw5g5fQFPJrKrWqfkc0l1YhfEo+9E=;
	h=To:Subject:From:Message-Id:Date; b=cBL+vdSzTvGJfqciOf3tSOCpk2HAjfX9qg0Qu8LP6zExQv41BkUlC2Ebd00h3iXrc4NJUup76Ee2OHSUMTq3drdnVY8ipFJudDyJIfw/VHBcfVMNXykEotuZe4FqfdBHLWaduwR43Yd5mM7h03//K6s8mn6LGJhMqvLar9y8AJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xd4uPLQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xd4uPLQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75B3C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716686062;
	bh=rJkcnfsEY58hyjNw5g5fQFPJrKrWqfkc0l1YhfEo+9E=;
	h=To:Subject:From:Date:From;
	b=Xd4uPLQOjmoG9oehOJu5bvBAK7ofOAB8mNHwyRGEcAvrsuul/wlGvF7J+VFwWX8u4
	 c+VWY1pD22XC3P6JsimfJSVOLmqqRXXjQtq7rAqdHDNg5pFjF6N/J6KYBygT65Ltfl
	 UHXfU9jXBITKr9PZb+qzxQ2R17UGizUJcdwki/JHO+oJEzJi92kzmukQBHdhzOD2uB
	 V/s039YBIAhBbhevwud3pPMs2tsSNfQBiqwloFpxNZwtHgX+JBYnaxQc61SLm21MZS
	 ia/2fkTY0HXdM+hmpjOWCRtRcqd5z0476AScglELt4dPmJM8IDtxkwOpoWHgm1cg9s
	 dHr1DBN3iEn5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE76C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668606281.8630.13563291267121448678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4319a31beaaaa378f030061c2efccd384bd4dc3c29fab703e3fb718a88dd39b7
Date: Sun, 26 May 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716686062
