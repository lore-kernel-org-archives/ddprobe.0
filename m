Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1017B3E1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765815774; cv=none; b=QNCTMGZ5YlsaLoqHDbO4ltm034wWJLtAy9cjWsehCenXV+8ZCRYLSj5GVgEV5ipr1aaOpW+xQs9QeAYj111jo+hE32KcdkK+gO/9JjQlePuDciEOvgJ70TlY1FdFbgPPzwas9jd73zELDVZP3D6GbebhiijMwBLz9SlcdKL3FLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765815774; c=relaxed/simple;
	bh=quCvw3QMeKYZtE+BhSdSQt9McMthINIOyX5CLOVtpm4=;
	h=To:Subject:From:Message-Id:Date; b=o+p92S4zenCsg6iyKtZFqxY9ToOCBuE0Wd/60d9ZJBD4AmnDXFotVYQALa8tbHPvVmtYZDXhkAZ+M3kowfnZ2wRPow2211sE/tV6rnJQMGxVIXcNMO1pd0sdVUZlpKqQ+nvTJ5nLYS8DbGrAIKeFu0BBoJyPCClBIncT3yEhlKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKrqcrMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKrqcrMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF1AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765815773;
	bh=quCvw3QMeKYZtE+BhSdSQt9McMthINIOyX5CLOVtpm4=;
	h=To:Subject:From:Date:From;
	b=rKrqcrMZ9zvPC9flO0fghtyJXrsyIyq52OI7TfYQlv159StFoS0OVI2KI65G1jpmn
	 RUH17f0joJsbIrAkj0bmM4UWbVykC6Oe3O+uR+WBw+mQ7uOU0zn9Eznw0PjLPGXrWf
	 YkHtRITE0EOlcV0kifjGU9Fb2+06loqcFz+BXjOn7wGtdivt4vdLJdIUZEhPOXeh1o
	 4Mth6QCM+AmKU9nTxnnEg1LpU7+Z3qcVy7Gr9k+cMpVQv7XzHjlLogrP9B1Jq+sxKd
	 yjJh9Noo6G40YdaGAJNkt72sUN6FOS60n2ThwtWN7QYxmNQcWxpygt3k17t1KKHXDc
	 SQd8G5S8bRIQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD6DD5B84F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581577362.23939.11514675323337345774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcba147a21c195dc7e378b7803eecf19f4567a45dfa3419b998fbad48c052ca
Date: Mon, 15 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765815773
