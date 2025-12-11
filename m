Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7B1271A9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765476174; cv=none; b=Ri1IbbJ0Hk0w6TfHE6ryTYl0kN/SM0U/XBDCsqZqqwssU5GoSa01gRNxzIbZ/QrLOcweHOO5vWUEBdcz9SLsfK8d28vpJpGUJvYuE5IQd7HOftlrDjJqtnXZ+KkKBnlzkBAo1JzpFxxv7O+ZrLcM/pJMv/VOAFY2puwYRVAPl9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765476174; c=relaxed/simple;
	bh=czuzViSeWlfga69/RWFZ6Af69AOZl1DRJT8/WASSfNM=;
	h=To:Subject:From:Message-Id:Date; b=SMZss/5m8QmvJbQNGwVOt07FMCLvxxkUw0OufTj3mk+KVM/rEPJmTtFQ/3hepxbdJnE9sHjg24DC7c4hxz2zBa4dQpRWPhd3AijAIoLmo79eDNX43t0Pd4F88PetqlAZLvaOWsiA1cSqcDjyLMmFwWLmDTkSJGdDln+LSoib2gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2CNmEBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2CNmEBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5394C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765476173;
	bh=czuzViSeWlfga69/RWFZ6Af69AOZl1DRJT8/WASSfNM=;
	h=To:Subject:From:Date:From;
	b=R2CNmEBIhv9CPx4zLklswmaBTxVZDX/hohX8jnP/6MoXOWgzziomzWXIgQMkp4eS8
	 RhIeq31CDVIqRvucrvC6M3XX8vdPkXKMDzh2S9AzGbH854CIcFP3i+Hg+EOas9LcDH
	 Ocgbyx/TFdEVUqqcgJGVJz5979k+kPaMXumX+qcWmOd6f6vXM0mX9JE+h+DYSp7kxl
	 EQlysYQSYf0GwXnb/n7WfBX95TS0q/oZqyrEQtdNApUtUg9GjFoNLlHBGUYYs98EHS
	 tfDpQ32v7okkNOEPjyC8Egr9MiTKIwXPP178Pu2s59aqYqn65ACIuoyf1A2JI2eW1L
	 PstGgAK/mdbkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A162BD41C24
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547617364.24695.895076257356779778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471bd9d7ad9cc4133b2019d62fcd82c07d4fc5dcc1308cfe4d3615be39d09b42
Date: Thu, 11 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765476173
