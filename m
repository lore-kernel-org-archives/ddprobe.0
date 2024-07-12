Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9BE282E1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720772243; cv=none; b=qsIrizNDgxFFvF11C3yPbbjCCFI+xtCC8eX/My6whWkV6IJqKOYtFPaIem/U5ne/nG3yXz8vQpbuC2NMH14P9DmCs9JBRLUF/n9W5sWJ6rd7uvD1F6FWOtUjvgMTwdGqXzxeqHDh5UxRIZLpSNoXgdwn93V5dExdBeuQ4DlsQ8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720772243; c=relaxed/simple;
	bh=QPHSTGlmrZjDWWLPETRy7gdvAobl0UZbryJoERyCJnU=;
	h=To:Subject:From:Message-Id:Date; b=cQa0p0V5uKTqRcNgwhrkVTk2yDqIkh7hP0DtJLn9cUXlUAQyI+u0Mlbb4+pOslOLXb6f7EpWSC8mb3fay9szwYdBXXRmIDldD8IIVx9C1iunoJzNIACd2Vcddgabp+Pg8RKtq0+F9merhVjdpk8OXtHq63gev2lqSBFLHEn7bV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ3VYGE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ3VYGE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB0FC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720772242;
	bh=QPHSTGlmrZjDWWLPETRy7gdvAobl0UZbryJoERyCJnU=;
	h=To:Subject:From:Date:From;
	b=dQ3VYGE0boc2/DvFJ6jnwjeCQkGeVGqn/4O3V6/vjcmERsYM3Wcd6HT6IaM0Cldyy
	 ew+hvnpDVzdclua4/F/CRtKEDAALrbeDu7CU28kra/Sd0iV4zDUKsDvUmECQUb99C4
	 ES5QKmb+ty3tZyWElLI0Ao3lFPeaPgyC+o51YZcOcTe1QFGg4mCi88Iy7D0wWP8w8n
	 O+nWAeEWPFeAbUndqdq+2GKIxaN1mS7oTPOEH7IPDSdzKwN4nOsXeH4u3lOZZJQul0
	 XzmJD4nh40Y/NCDkhWIooP32U0TVMKpCyJDYPeWmIsX0qIwHcijMfnn63JEvuKmaSn
	 RbcckNVsDfGKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD81CC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077224276.27967.16573339957254685353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fd5bf7a19c44d8effebd457f8861999075565c7efe9696c8e6c9fbef4cb2b3
Date: Fri, 12 Jul 2024 08:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720772242
