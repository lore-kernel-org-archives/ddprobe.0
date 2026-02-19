Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F09A28D8FD
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771506294; cv=none; b=aMG8eRTxzdgNQq1wF3EKP+B3Dm7Q1CXY0E17hTbDrdqnYu5Zuw+Q+S/A76cdOxuhbwZa3bsycaB48g8xRLc31VQjLspxHsx3k9HNWwsKn4nkItSRdsKtBkEvbMVcfL7Mr4dvPdocDAmC4+OBjVR3P/LTAYQSZ4XymMSm7JOE++E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771506294; c=relaxed/simple;
	bh=3JqlnV8iCNjzgW4NHhn4cZTNeDATE4qkvKq49sFLNlg=;
	h=To:Subject:From:Message-Id:Date; b=sUGWXWguSEPo025ixnWVpSY/WsRFr+fq5sxqXpVzpZuaznXDeD43but8WLJFSFOqxNDLRHrl2cntBROhUheL14ZwqOxesWBzfNB5xemeLMuq48gjeFiwVKmcjPvHf7WbAh9KhBsBEeBD7NU/4vpdkFn6vkXoWJztfnJXQk276Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5p5x/PI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5p5x/PI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD82CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771506293;
	bh=3JqlnV8iCNjzgW4NHhn4cZTNeDATE4qkvKq49sFLNlg=;
	h=To:Subject:From:Date:From;
	b=W5p5x/PIcjqYSgsLmggddkH024n64+++7xd1WPdNOxHPgMwgkVoNiMCOi0KmOP0JE
	 f0XUmbDwFrvtg3Ye23eXUwJ5ybAyLsUBk67t1nd196fiex/CFWHRySactFatasujmv
	 UDJxzptW1/7kJdVMdmfk9o9NmgNJTJdZhj6aA8sHnEOmGqe5cN4SPUk9Uo4D6uR+le
	 oI1801/yI5es1VbMQjmt1tKjZG2NQdEa+StMj+q70CaoWUwO/sUEj7EoBPUEOa31Bb
	 6ygC2UeWhMO6xP9pUjd7e8qjnPRvbxrZcOIa+fIPWuRpC/sEdApfRyW0LaMPXD/xEA
	 r2ZoiQuII3cGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5D0E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150629374.5182.646126426304446449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dee7a13bb29b85e428de7d26481444ac40cb9b3f7965d7269f312e55fe651f5
Date: Thu, 19 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771506293
