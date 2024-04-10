Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCF016E88A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712755097; cv=none; b=CsA9q4pTKpVyqBMjiIjyXBCa4eulB27Ec5uyJDYVLhoS6j2SCANfcZ7C+CHjc87behphNRaCelxFrhssk7lJlyrToGkwSU7NZh1AbUw89AKgoSBaQIK/ucV3BitzZTx31W2YrIWLPLoyqnszjjoumslFhT/pPN6052IUTn5AM7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712755097; c=relaxed/simple;
	bh=RjgL7P9LXwFq5gYQ4ZWGkeZdRtL6JJPMvO5S4Z1mt4k=;
	h=To:Subject:From:Message-Id:Date; b=mv7EHEkW7ZJHQVPGQoq1V6XVgn9eNNqggyAZ1ofESd9tWwg/HjugYbgX5Ong+qD8LMuQakAtsMxf7fSugRFVpdjIvxgqvCW3PDFduZslaohgTq/1w0KQzhyDs7lhIEYxnDGh31Wn9NU8j76TMy2h7ctawQVO1ww7MkREx5Hujo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLruUn+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLruUn+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F3D8C43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712755096;
	bh=RjgL7P9LXwFq5gYQ4ZWGkeZdRtL6JJPMvO5S4Z1mt4k=;
	h=To:Subject:From:Date:From;
	b=FLruUn+c5xDZTg/50GFMzsJD52L1UCuZ/0mYw3BfmyYYg64cJTsEBApBM9SHR1H8z
	 QKb7QquEtseOooVR9PLDywBlq+4t7045Riw87RXAcTCNBx7ABRqMZ002gmn/RnVLcT
	 lVFJhiL/wIJ50EofwqlQGQnRWKvegDYGYMAhZjsVdPwkBG1AspGWxVtX4dKFDA1VK5
	 vDsHdBSrIwzQ1qaa5qUXsTn2oOi7F9P2BWlaoVWmuL9klh5d0gIoLtzqAS8QdHx2oj
	 eSRf5nV/6qJEjK2na8DCG6NgyQzV3XzzQgBFvrhQ0laIuCMK8QnpBDHEGgwVKRFetD
	 VACUAIh2sh6ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73154CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171275509645.9634.10990775305433667227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70df32d952c657e0436bea407be4f051d014ab3ed5b249ce703e2f936f3df40c
Date: Wed, 10 Apr 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712755096
