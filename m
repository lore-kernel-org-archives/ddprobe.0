Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E651BC46
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722006954; cv=none; b=G6RYofy7q6C+Aq3aFcDRJAFZauW1zRf5mOlvOJAsBKCAf/+MtZAJs4W9p5I6hcpskS9uvKJXEwKTzj9IbeGEbsXFxVOSC+7wVUSquohrlILegrYZdHmQ38RzUMVovTcQvfFtU8rBrWaMz1fZ09Mujo44Pur3hrXGZTfOdCmrVzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722006954; c=relaxed/simple;
	bh=XPyo8bvPyu6yFwCRKyr0Mk1OWqXp5wZvoT7k7aB/GNU=;
	h=To:Subject:From:Message-Id:Date; b=drEtf64WHRirYP+8rH5nS0ieRISmYFu7i9ENft1isMCounlFSPL+ABTrPXI+HHuRNuYT6dWLKjrIp/z2685b2hGaUGLe9aW14ARovfJIf54V/OY0aum3hcoMM7+lDY6IZqDdQrvRDVD//JAP+ZyL7U3rZUiFyy9zGDGddsiKygk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtgtmFvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtgtmFvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB305C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722006953;
	bh=XPyo8bvPyu6yFwCRKyr0Mk1OWqXp5wZvoT7k7aB/GNU=;
	h=To:Subject:From:Date:From;
	b=VtgtmFvkSy3OY3CkoYHyrukhHRyokdEQA3//4MsjFz/dIoDGf0VgqcHseu8KmL89a
	 eNENfB4ro6HRP3pAZ2LtLAJDozVSs5o12m9SwajQ8yo8eZmNu82OeIAZZtomLbYWSS
	 A5tMrrnUc0qi7Balf8oYYXGHk6sxeSKwr4Df8tcwoOtQtNfGA/nomduqojicvUCKGF
	 wJtJPliyaIYg57G4WTwEft0HAxZbvObKdRGFImFSs8UdFKld6pKzHWcRfhlEQUqr0i
	 yQmpJVUFUYZKKuzvDMCCAah5ozo3EfwRiz4u+5ubcCT9ycCPX4+4Qd5RNthFkwmt0E
	 13plt+SNHQDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6F8C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172200695367.15889.10242461075150510753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844460a553a57955e9f8875bea33390811fa5e228fa55e9acadf54449ccb571a
Date: Fri, 26 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722006953
