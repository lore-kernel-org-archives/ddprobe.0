Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2781F1F19A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749445794; cv=none; b=FXrIjMBkuJ/co0jJlsZYP1gJYt0ZSLjeRGMMhPq5GgGytG7ku8ijE0BWyelEUI2GTRlA9RZ42uS0ujRXF0nu3qDqTKPgO0POo6QWQ40CRTUbdujNB6C0zPJFCmRg6cwmAe1goZsIxpJy8oiQomVbUaXwqgOpb6FrxBpmbWf39DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749445794; c=relaxed/simple;
	bh=Wz1brqF0joCosmxAG0bQ8V1JsIHDYzoh/cHMtfTrkDg=;
	h=To:Subject:From:Message-Id:Date; b=VV5gbRXq2Zj7DNj46hfxv6ZDk18WLfIgnYNF6aglJ+V8Amt6JMkpK9XqpUSBznRUanprGxfvCSrW0hBeYPckco3kf+j+lV7m8OYZ7mrmGglRetginD3CGzp4LLSxL21D0ZYFmVv3KZmf166fR134iIKq478olGL/hnakN0UaxsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKRZqsum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKRZqsum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E5BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749445793;
	bh=Wz1brqF0joCosmxAG0bQ8V1JsIHDYzoh/cHMtfTrkDg=;
	h=To:Subject:From:Date:From;
	b=oKRZqsumyFEtmv+zTuZ3STt5A+/wbu2pdqhKVK8S0cOvjwydIk8ODfQ0hh080UjN1
	 enxFjZufn3zKBWZCbYC6lSQI6RTki0d8ePHVbvKbmvLo7vDqCJCJArP4ve+6EYDm+q
	 PrYQfZ2V/sUri8gMyKXMmU/sxmQN90uq9SgL9aTJIeydnbch1tabcVMlD/jLaKWhbi
	 kZZ8ggb4Df+VszIPlEpw4hDL7LGWhpsgVYZZUfGBo0gapqDFr0E/6CaHnbX/SEMBCG
	 5zSPMJ4NX3MPPDgVIKjRN3FB8VoWkhnU04G3PqNbkWmw2bKdD3xztlKnYh/ejueD+0
	 CtEKa9cTNJEMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94979C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944579357.1142.18051461571658135786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf5762c55e3730fd3488c760045e33ddf83b00b167a13022b0a02fef866fa0a
Date: Mon, 09 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749445793
