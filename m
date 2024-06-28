Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D32374F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719615263; cv=none; b=W7pVkcIkODisIf4fXtVGQgPIRR6DYt0AZV8+t37r0B8MlHWwxU8vbuQsgU4+p0DeDrKfZR2ORBvYP8rEBmzZobpp5LyFEQcs9/i/xRaYYYbPeGcKOWW2/AAplEsN1QGDxtJFmdpJdYh6/pKoLlal1Qw39Xo89/vQkQyy06TQZkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719615263; c=relaxed/simple;
	bh=Q9zzzNer292VmKAFr38cRZhLTQ6LdI/bD3dUd2yU0BA=;
	h=To:Subject:From:Message-Id:Date; b=deOFG5O1sXy471KUKf5/hbuZrEwO+FA6NsGrWL5Xagn0Sqx3lCk4qTYtdUXSSsQsmDtDh2WG4fkjsdBjSe6Vkfn/xx/TslhikQRuu05an5e8WEiwYDtrCnbKWiXsJePq/HmaSQHpFTLtfvB2VWfzyvzt3PBqLvEHofNvnECMdaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVfJUS7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVfJUS7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73D6C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719615262;
	bh=Q9zzzNer292VmKAFr38cRZhLTQ6LdI/bD3dUd2yU0BA=;
	h=To:Subject:From:Date:From;
	b=bVfJUS7fJFeRzefH2kilyyoDHjd0eezL4aZofcANwtvZSBLmrkBwh5Y9ZMY7mO7M/
	 /zwLIZdvxfN6cuCmnBygcgxh0sy5gdQuaH8+iILNk4aPQuobWhuFQJAPekyLuOo8zU
	 xLwmjW672rJCJcszCgLW+aJn7f7vPG240raWRdQj/D8DVSU52d4PJFeZGkaE8/KeSr
	 SJngCIVBA8oV1mUkVRwFTXwufImpew2f5hJE8VSJa3GcVKP1XOrqjiq0LTrNsSnNXp
	 tn9ywN8taXtd/YSDvWQZHYfUHbfRz08Bu62DEpMd4avsl28nf34YkphMX6NOZE9N9y
	 vjtAIEuzD71Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35C2C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961526279.9711.16516048596176635990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86606a5f3b5486b9508a4ea4414656fd42b0d090d1253be3412d4b0bf0c63ad6
Date: Fri, 28 Jun 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719615262
