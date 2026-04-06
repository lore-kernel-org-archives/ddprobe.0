Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7FE31B83B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775471134; cv=none; b=Jn0q5SEg/cB2AhwciVzG8ME+BJOPUg8BbQSh0zfWQEJfiF33OB9RwgqMPRc0xZP0CV/COKkG6BFqXQfU5/sgPBLqCfmvDykD7mB/Fhx4UFbGZ0xh8ma5Xdxg99Uop8ZTkhziFV67zIoH0Peyze9lh7I5djCMrZmnfpACnNrN1v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775471134; c=relaxed/simple;
	bh=ZvJho/y5Cf2leI/iDzvjAotxN1oynLVQi6pKqPDhXbM=;
	h=To:Subject:From:Message-Id:Date; b=FBxQ1Vdb3siVmIYLK3i5FrzvJ54PVxMdN2xE3MxQvhYrch9b+sAJKRD6nxLja8EIJVTePcEGtIh0kLM85eBICtmSE8VntGLp+aT5RnRRVUquzGft0wI/bAQMCYaxJx5JIqMCmWddzFFgD14v4Id4zRGvXtnHIxcqDstKbqD93oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+rW7+wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+rW7+wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDEBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775471133;
	bh=ZvJho/y5Cf2leI/iDzvjAotxN1oynLVQi6pKqPDhXbM=;
	h=To:Subject:From:Date:From;
	b=u+rW7+wYtaZpi/+5zosDhEbbcnFvAp4zlFszK8BM3T9ck/yQVmC3l6+7G3hoLAvyV
	 Aa5FmnUrK8pVfh2prUtzkeLocrFIhvuB1LSaxln06+lXxASLn8mXd95QW+gL4PG41g
	 TwTNsmhRS6UzQs3lP/TC4bWIwRZkHAUsDBsbhq8NE6geV5+c12FAhBHZmNgCT/1Rr4
	 OdtcOBwk28VkGLZ3ucXHHrGL7tEsvkLZnRKSEWvXUipylnUPN0aJyUEW5WnWe6zVLN
	 z/lcPAMnVuo+LUF8mz0ToWghtTw8XZdBILgmRtACUtwj/i81U+8umjHOwUXIUBVbGH
	 Jx+DoCUmPp3xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45FEF4ECA
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547113369.25159.7974385923466278792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9e913f2a10914f37704e363151018b52c3230fac44b7f2c60cda6eda0f3f5c
Date: Mon, 06 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775471133
