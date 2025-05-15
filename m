Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3935C7260C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747319994; cv=none; b=lJaenrHJgWd+3CQtKAiRBqWcrj+5IQZn+PEbQrex8E1OgXeKXMhe5r+aDnyhlNjoe6DSdW5H1aHD4KjkWYgY3YDItYXJnnapgCqM2ABg9kP7ag3Fd5a9QormiSad5+xiQ1xp/uUbol5ZHLTBS55p3CAn4YUvINJfskVGpMztLAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747319994; c=relaxed/simple;
	bh=izVFKizWW7divQbsLmPVNqbznWPABktzinrgOPnduLE=;
	h=To:Subject:From:Message-Id:Date; b=qMCazqgPVD2ki3TqOiJBxwWp39hOOLs/0KF8dHPgnCYz6oS6/aMTZG8EXJn0duy9IXoCTI/vVsZ3tAShpk038Z0WilJ7B1h7qEcVF2kuRGMoJLeZynnUMVLCpZpIzzfuvakBDIPW4ZbMeKElYnzUEgFwUhymHTE2/yRQOLRPQyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqGFK23t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqGFK23t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0841C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747319993;
	bh=izVFKizWW7divQbsLmPVNqbznWPABktzinrgOPnduLE=;
	h=To:Subject:From:Date:From;
	b=DqGFK23tUu/zpLeT//iaJXGQh8KrZLwav1Cid/dxN1S/urmcAsInS7+9dPWioZ0KV
	 B/UMn7fYqDvXYPAB426FZUxCo2YoG9b6PEb+lSiLwvXouoHC8OGcB+30bNh6FJ5wMd
	 N1NworatK5WV0u5JZJYQE3+FeMb8orEe4p6W6PrffyEhVIc2SxiwTrdegMYfNmSbR6
	 Xz3vgZdf4WNjkuANkg6Z3iRbIHbL1OzesFXkVxDKnPA7hIqGVmAEHRYs0191B0VGRD
	 GCVRctCBr7J8UlLshj3rVw6mJuOituNEPbJ4bTnoZ2tyOYlMqPWyHA/nuNIOfB+7N8
	 5/A3XHjzyW92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2DC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731999357.24749.5271052572523971891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b320cebd46f427bc853b921cf5e34691307d8b654fee527f335c9472178adb7
Date: Thu, 15 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747319993
