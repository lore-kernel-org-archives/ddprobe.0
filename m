Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0528D23817E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761697194; cv=none; b=Qe1k5FxqHnl9QBPipH0+AR6pb5+Ekm18+FWcIJiP2vNOyWtqc8lXEUoUr3x0sKWfaCQOD5Kt+pRIeQV+1mJw6o89hUEaE8WNkVkh5k0jdmbQjBem5kiiU/mAyW3T3VrBqHBjZ6PYfUELzBAeYDFvonCL7VUak4YPzq29vNgB5ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761697194; c=relaxed/simple;
	bh=cI9OLQNLC21cniNMbLUdUG6/mWqDkq+cAiq/3R5Mgpo=;
	h=To:Subject:From:Message-Id:Date; b=qcc+6WI1ntMmn6CyJyDizD701B9OBiDBTrmcKMMrARmJO8R6GWRL8guJ4Q9rz+FhC+DMEvZ0t8QwjOWZn2GRDJjtvly3pGT0U4JgdOtonr0Zd7KSFUmrcsNXf28zS8afOc2SNVNB7hGOFw8Ygl5Tb4VaqraXtts2uXfOhLmkcPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlaYhprV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlaYhprV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BECC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761697193;
	bh=cI9OLQNLC21cniNMbLUdUG6/mWqDkq+cAiq/3R5Mgpo=;
	h=To:Subject:From:Date:From;
	b=TlaYhprV0a+ayTCB5FRMG9yUUWSwGuZLex9rckrqXVnJroKkh5KpDDo8tzqYOabAO
	 SULE1kOMW9DOrVuEYfAvSICDYnzFb4ZEQealDv/uIuSWYC19Yu4uc2X7rMQK1Unq/6
	 tSRkWLxgEL/JDA0LIj0IGj4F1VnW3qFl8yrdv00DdmaQI/1QZnauEnA+e/xLcYg1PD
	 aWNF6CjMyfGihiXpiDWX2aKpCYpN+HLwxk6cQHX6CvuWzu692+jVSwsFk6eJKnn5ui
	 0bren3IdElitnRVUkH2TeTlxAVS2+S74ziLkEqth6qZk6DRk+DA3+yX28n/AKGzFcP
	 NddgbugycCv+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9626ACCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169719358.14969.1366765828984931807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7589c317330c838adc49970a3c1c43aafcc2a9026cbd68310ce838f7baf03bfe
Date: Wed, 29 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761697193
