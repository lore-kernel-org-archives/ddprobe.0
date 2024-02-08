Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6C578B44
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707399497; cv=none; b=GQUc1TpBy0BxoA9Dtc4PbSBbcjYalQlvpxMCnfKnZu/lit0CHlwFkv/VzCZMCKk1Hi8dXw4H/v7d+cdfqM1/b0w3qsB8xJ6EfDGRwQbD0gdTVTPz7V9W0C0noQ1dnxkdbBbrMxFGlPOI1YW/71fDvUePEG6VZmE7g8BrCT1W7Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707399497; c=relaxed/simple;
	bh=mfHFSMOmJOH8Z4ybp8vVzNPjTnoaViAo+Ofp4Dc/z68=;
	h=To:Subject:From:Message-Id:Date; b=jR8IeTJU2rPEMC3Q8ZN3ncWDaa1F682YmYUc/8ZWfhNQ2QIIEAxTlgNVmPE61PgXyxPbed7ioci42BfhvfeXKoppKj4uKDltaFO4B2l2AKwSdP6MQfnS6dYe7w1PtjDoOqyf4mFG1xLjrSnfmCEnZoVdtbDe0YMbZkrvhzJaOkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsaDxxnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsaDxxnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86786C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707399496;
	bh=mfHFSMOmJOH8Z4ybp8vVzNPjTnoaViAo+Ofp4Dc/z68=;
	h=To:Subject:From:Date:From;
	b=UsaDxxnd1YnnmYK48iLHcXQIvQicO6y8GVAtuumtDzJTEp2zWCpSzTvvyNJ03aBJN
	 m6sS+ZIB6Rcy+zn35KI7in+TrwGk58NFdETSJpawgFZ0kDTB1BCpwcugOfgwaoRMF+
	 GHTUWcrWY+uG6EYZxjhIhgFJbblcWVa/IjiRrLFe5JZ2rM40/WoJMfes1p4cPiQ8Nl
	 85L6mSNjPm9oAuO38rcfgYUga5WqnmpFKRbirL5ShYb0KLSzKMsoqg6NqSxoTEI5tp
	 2mMmJtp+WbhPgsr37aCxgGLHx6HXyMQcfg34A1tA7ZWkQA2RyNj39SJeeX1vAql0AL
	 Wi38TPBNhkE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6680FC4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170739949641.8879.5175517348630724368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64f79e24666e64f63ddfffb53b45fa6623c6a7b5f4c0f995f01dadee016bb54
Date: Thu, 08 Feb 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707399496
