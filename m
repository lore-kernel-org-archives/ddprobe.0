Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A9C5733E
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768871034; cv=none; b=k40Gicxiw2SPtGOxq9uN+ivsSMlW9TNmbj2PdJyZKrIJmZ1ATX/l7F0QKOM52VR3Whg4XCmWeHokGZk0io1w1Qe5nE4eFfI1gYuOPKCwJEqhVknI4ly50tirI1xqitcSA4YO5OCcL5cQ+pWTToO5B8cQTG6SIuOxT7oODvilaoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768871034; c=relaxed/simple;
	bh=Mp9diwWTRQwWKijBQWm9pfua3j7CMCOG8EAf8GMYl/4=;
	h=To:Subject:From:Message-Id:Date; b=LoBkVktrrSR1Idyc2j10PPNrJeQI1LDJW5MTR4LT0OGS3QTfN7JN2E9VoZTPZWHGRC3iuwCr/X9jqKiXf79zwcgh5x1tYKfiSfXb7FcpEJUYPHVO/GQHB4PD0HSY8G8FoesAGjd2SzDXn2mKZQb22DqE0QMssR0cGmqu+dg1d/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqiQwREV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqiQwREV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D98C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768871033;
	bh=Mp9diwWTRQwWKijBQWm9pfua3j7CMCOG8EAf8GMYl/4=;
	h=To:Subject:From:Date:From;
	b=PqiQwREVVOPkX3X2dd+e946RIng3/uYMLmLUVDdQJbooeG7QRs5bXlByxX06G13RU
	 Qbrxhk857gvz8iTktqMqPFevY+SFdjDN+kqtcVxewfqElcA5oLNspRKep9SRwu43KE
	 Aul8pvwA0qVrPM0Ft9bJ0yrhGc2ynfVv1c9sdPOVs2i3UXSKmKyIDBGEFxRpx+sG10
	 POUcRUBPaMPSC3f2i1ItAVjJIFJrZPydUozJY9Rs0TX6Vq0niX3RLSeXAYkqqSPuNe
	 XUEkDxVPqzx/LSfKUiCIXA2U8NS0znpmDQGJVnBevBPRvs8ZhMIoV59YADbN47SQbW
	 Q64kPR8mDrdow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A48D2ECEF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887103359.25844.17353961185995784912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156359dfec6031f0dae389781d7f854431b0df35461bc241b1260d5d2e2123e1
Date: Tue, 20 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768871033
