Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB201292D2
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715701943; cv=none; b=ZHCRJXgYX5w/bjSIo2WpGj4WNegbCPtSeeVfICbBT3te7Zdfyho8zk7ivzIxlB4Z4YyTD4l3Scgh+50UO+z0eDX0LC8I7iyAnVuZHEoP/KzBPJoQPmPS+IxIFC/Uvtf0ZskpYMzC1JRwXhnizqpncha2m4Uscg+ABHY2wRHW8ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715701943; c=relaxed/simple;
	bh=gztgsnJID6X844eSthWMvy04ItvbOZEIo6Yed/sJGcY=;
	h=To:Subject:From:Message-Id:Date; b=u9qp/8bunTdqfTBraU6kDEhsD+KBcAS5JNypP2g5m8u/Tox90e0IQdfTVtrLTFAMlfrXf3dwYrWvcdwv1sDoyb9kjtYKxMJq5TEenEuGObHy7zPagE6pa0gQ/lv5Nk2nFJQc2jmlg1uU+TEXFQXsBNDlVPeFNpTrCsW7C7HeYjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXnRh0pi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXnRh0pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC94C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715701942;
	bh=gztgsnJID6X844eSthWMvy04ItvbOZEIo6Yed/sJGcY=;
	h=To:Subject:From:Date:From;
	b=NXnRh0piYie9HK/3N524QG7LmMbJN26spqmUNx+ggvrLf94SXIXAbTI7DD7CX9VwS
	 +K1Vu6kiy0cygD8IeuZTIWJZIlbrW28p8bEoFoVChPlTX6fPn8XBOf7d1DfvEcU+x0
	 qAmPdZGgs9KBhwaMZ3ANy8nCSJdtRVg3XNjY/WAM85P8hOyo17+RKnwg7j9/dynpje
	 0Q4xWBfp7NTmdaDDZfHtdNB52l2r6HkTEN/cRxkb6xVTTZmRd6c3UvWulMn8sXdZL5
	 4PfR2Qmn3GyM0GnASTdEv8IPy2cl3P7U6IP84/hGe+Nb+SlrJ23LJOhZKwQu3Za1d0
	 YQhbw3p06EepA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC754C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171570194276.9274.10712675146836962738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa47f110b70ca3f50659ade249749f3ee3f020947e5b063986f5cbf444e52182
Date: Tue, 14 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715701942
