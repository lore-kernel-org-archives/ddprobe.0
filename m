Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9E81B4257
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772794493; cv=none; b=Zt6nmqtvOS/wx4Ymh5E7I5XbWY4993AN5DTLGcfZ+HKGGXlad3QUcd1Hu4AfP36QtAht4czcZaQ//gi+MsI+k70FM+fWV+wS3zu77xMLCtqvRNKEmDV3QSERe43wdtdbMXi9sEKd1dZxx7oce/V0ju5RFvWM6j3VYElztE+cETU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772794493; c=relaxed/simple;
	bh=uI0CUYGjpKQmVE4FEdCeq/0dEIF38yMFOgfa2HTiVDs=;
	h=To:Subject:From:Message-Id:Date; b=hCBVtninXQCMM/aOcsqSsvHZbjYwUPEdBbB2vZhbSa70CBh6oAVQxKCp+xBeEwu7zZN9LoW9jwv7hl0LMt/gCxuD+OqvFxdazOeDTTZBWG5YoLMawSG/MXLMQ+nDG526mf/qvpdx4afSt4X8BFTDsGBaX6724ST0hEtReYwnbQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldu8xuKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldu8xuKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE865C19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772794493;
	bh=uI0CUYGjpKQmVE4FEdCeq/0dEIF38yMFOgfa2HTiVDs=;
	h=To:Subject:From:Date:From;
	b=ldu8xuKU+3ADiE01WNZiD0YgSSvITGs0rOQSZydMcCtqgFA7EEdrdip/fnXz1hatI
	 0CWZ+2rospi4YrU+/xVv4JukUkPfLbiznLojmsT4QpSy5Rif4k8OiRBaathQOCD2iW
	 NU47Kpfu1NHgw7Rs/VJcKfBcAuLX2ljVdz8hPUjAeQ3E9PdUd9tNNf0J0sjKWcXewC
	 056VLNaU2D6GkECtJ5l4r51XjhvBjDR6mb1lHecnE53rFoyRJgCsoeBnHz7lXvLnua
	 gxNYhL6gyHDKCIYHiXOKtJMHuODWKnwqTwOEUITCTInl3aqf0YCtxs5cUwBOP4z2wv
	 w7bxqNf8LIXZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D357F01827
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279449363.9602.10086028577765169289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f4a58c761da441a23586ca840762249e024de527b4ac1e06931e962102cfad
Date: Fri, 06 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772794493
