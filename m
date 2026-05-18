Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B75A2EFD9B
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779126634; cv=none; b=JaixZgykimaig+gn5tXu0+SEv7QYIIITPtSwPct+wcjxHLBwTnFKQSJKJUerjInGk8kjLCX7p18jZjMV9xNqSwxOeqaacF9rhmCkf8zUSrMOYiYgBmeuFkSNNPT4kO4PQVqNLxhs54fHFJs0w42imQ7CjtwWnWz1lqKNjwSm2Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779126634; c=relaxed/simple;
	bh=3PrdvGAWh1SSk5DCVhqE83HAhGjhQ7688iS/MF9w0aw=;
	h=To:Subject:From:Message-Id:Date; b=f5p24miF9RhSqTRUnTI81MmX9rDSMimz5t2gaVmIqIX9c264eXa3AKW3tNs2CU0nkNhOiD0c1TVUj+AZP6jEcJub1GSTSBvfHTkHT+hDy0XQ36EDPctCA3eJPuPTR7+ZxnkvC5XYx7l1C2GArhgopAAzktjzrpSEnA3KL6Sic4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pD2//jVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pD2//jVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FD0C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779126633;
	bh=3PrdvGAWh1SSk5DCVhqE83HAhGjhQ7688iS/MF9w0aw=;
	h=To:Subject:From:Date:From;
	b=pD2//jVyl1yRUxQTVL+MOzaISSNKJOYBKUp2bPm6XqGMlR1Ph8BSgFUqMv0OLPrhM
	 CnxWzM+rXWx3gzLDz65HeDd82giIxdZAIbV3E6phEii5wjNC8ivjvdQKyeFna6SNE1
	 ObsvzDUVppD35oH40aSGqSr52EHe2vO6nGlc5U9/YJhsip8qSNODP4jqQOX73mZTWK
	 9eD515OkPB8mLI1r2Z9sMmi4DAoo9lub/HZdkSi+ReTUzewV33CQWw9LsdS3TeX3Fk
	 soCD5XHHc4I81/nPKzm3A3CV9UjC7VQcs0gRet0IbcBKuwNyxSFInHS0CzNx1GiRXx
	 Q8yzq7Vc0+Qmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8216CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912663374.31139.8383749968296360416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4e4acac6cc53d495cbe924853175ce828c2c30d73bea0ba932d0a7a3b9d552
Date: Mon, 18 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779126633
