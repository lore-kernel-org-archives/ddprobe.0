Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312A52CCC5
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748558394; cv=none; b=qUh1oER3+AzrUydC2Z9CbMIvM1fNkzSgsnfjuxzHXQw3qupKHGnJOITdwBKPlMQfUFTb5/3PLMZVmAS7CerlC06SiUd7kF77CARtH8lA2sjWlyca+9zKbFArZfrmosmobqDliu64WarVZCHqvnH4Bn+6L4Je83cWrdLPAB0SD9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748558394; c=relaxed/simple;
	bh=4Tr16M6nKVQKWkw4Jm1bgENwQtv6p8jhwDWPsQJqAOg=;
	h=To:Subject:From:Message-Id:Date; b=VSqmLTAd9afSylDtt5vZ/enO49lwK/ijHut4tSdfG6KQUdAuO/Ai5rCXfyoyRU05kaz1u1s3eAdljdhYuhUqAybrgdF8cY1IF9ZcrWanEmQOF4gzXBBARdsNXWMP4R21pYHgQXK/r6+It25D8DBgwVRmk41NvQQKYFO34uM/bio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPDe7W1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPDe7W1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E52C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748558393;
	bh=4Tr16M6nKVQKWkw4Jm1bgENwQtv6p8jhwDWPsQJqAOg=;
	h=To:Subject:From:Date:From;
	b=UPDe7W1EpwtJ/aRqVu4LpONhSzu86Snq8fWGDuKSSftSe+N6v+w0b3reewqrG+HtA
	 8gjZt3XkYjlMMEcwo20qHFR/kznjeZyjwZvtqEidD4eNd5FQRXT2X3p0pwYwJvOSQa
	 BxIb23OcyR4BUqZPccO8fM8CBd8TnXuc1Y66bDAtPzXwPt6680u5Ycq2U3yWqrHWMF
	 12s4xZ4sRmfDyNqkLOz9JStKQS5seBQHamUBiGVcJQUZpA2ZKegG2+aqHxiHsuk4Qj
	 oFkK4zJfqfc/81h03ynbPcT4jOlux8c4OBsxUktSbi74llxe1z1/JnsrrAPYngnDow
	 D57EjfXDiOAtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED74C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855839357.12816.6489317734917436579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31293ceb7ab4cc9b5999c69ccdc6ab98b63397ff645b2f1840b9a2daea4ccb5c
Date: Thu, 29 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748558393
