Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407923F20E2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775043334; cv=none; b=rgYTBfHMNqFZ186K9hwCJiU4mlZwaf95bil9LwBbvPte6iflEc20vO4FKj5QN8xKtNvOpr4KP5EDFxNjUYHrWjnPqQXEXInY185nE7Tu1yChHEKJpQY/3THRG0/a/jge+ZMbY1y6nnNHUVQUNGmiw0Lo8vNyCILunxLBTszdL4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775043334; c=relaxed/simple;
	bh=hUGj+lStqADluqhFc2+j6toZEazyO0WIiFicN9bJqZk=;
	h=To:Subject:From:Message-Id:Date; b=N1sjR8DhVQSKW13Y9XljuOQaUBDDTqvcixqcEmpVqvJqD80BIp7xw9jBQLnMRyWsxFnXE93F/qcw7hmHab+wxY9Hgbhvbr1qDKVPAjwfx1kIdxJdW7Ev/jqPM+pPGCxFtg24XhvcovDDZEt3l7w7rP65iGdAiUPu+xqYeNzfLoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDkg75Bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDkg75Bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C607FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775043333;
	bh=hUGj+lStqADluqhFc2+j6toZEazyO0WIiFicN9bJqZk=;
	h=To:Subject:From:Date:From;
	b=pDkg75BqSd8hlDETz8XGsOpCzlRd+0PsKuLTQD9G+7GZQaPsiIskmc0x+o4ybEmO9
	 8jxAVMzQdu6cPXZmqJaeGiXnOtjMbA5wvi7uAvBCPdVjSb99QeixidIlmB692eFgdd
	 NMIUBuVQ4R5M2+kpTdEeeK/6j7Mt1y7ig9gqUOb3nJbQZ3FcXCaafyneaPFRUWg8SM
	 cwtY5AyYjkKG7e5L6eMVEFUT3y4u0tPNTWuha7m56L9+0FtbfMd7crb0j3OEdJVyOU
	 nzMAm/KV9DraciwF09tKvoWShhrWmIIKlewT72jl/zuCetwSM0RkFaRLqmD31uB2aK
	 tcF85GF9FsTdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F9D35176
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504333370.12475.16141255816233385948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af7475cad49de4b450b71a5b0230e4c7b47a3b5698aa7af95bffd4bec33f02d
Date: Wed, 01 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775043333
