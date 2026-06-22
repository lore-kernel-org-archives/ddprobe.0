Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A7A399352
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782138994; cv=none; b=uRnDvSMs7rV6AMwHnRGCpzdowlrMM6KT7GVFbrLvbHAgWkBwZgdu6bTWvkLMtbmGjscXUSXxkCpMuapJNHSWDrsertMriGeA4RsTiGqW8f/ezrAZ8AN3rWHXyaX4YLWC86wvCAFdQi9S8bYRUzRmAMpNiPMgthAbYsKE3mKT5dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782138994; c=relaxed/simple;
	bh=kCkdf4sx7sQzpef0zaclFwUo+xoIwCJ7uRMPIAZemgA=;
	h=To:Subject:From:Message-Id:Date; b=SYUwO1y5l7V+x5ct7GOgC5uVQFeAgWu5IWC8xvhfFP9hIP97ISw8144iWpXn2fmuuU3EqEh1HrsWpgT0TVB0P2p17N4aPS7rIT87agnSVye4HrWmiR5zl1enyJoGiTkeztv4vqS6/cIRh90M1uFXYIwzICCCX8WcX3DCJ7GgleM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVyu9/so; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVyu9/so"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37EBC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782138993;
	bh=kCkdf4sx7sQzpef0zaclFwUo+xoIwCJ7uRMPIAZemgA=;
	h=To:Subject:From:Date:From;
	b=pVyu9/soNozXzrn9soA3amPJ5F4VtZf4F1nucTdwXu25GUL9HFYgx1c/0OJAS/dST
	 8B7CpHA3PZJH1UztO1yuaOVn3ahESD/XD7UJx+MvJ6KJxGc4FMOOo6+MVOfgmOGoMi
	 bbubgYZ9f9HUUpnJbhLcaUHnZz638CWwrVsrwho3YXUWpvO5ZzoX251z7nL/BcM/Wm
	 muICclbDGu5J77vAo4HMrqj4cS7k29SWOn4aAZAY5rHeWmoYo5gU57O3x6rWe2a055
	 emhbRWjwdRyALY2cicNReO7x7Yh6WcXakCHc/2iEqoh341YYp0MVvQtOC6LbBWZ+vI
	 dxmTRsFoMidOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0E1CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213899369.22865.16975634441036552688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a024a55358a5da3c753b039a07e7efbfe7409fd181fc4909be6a347d23e39df1
Date: Mon, 22 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782138993
