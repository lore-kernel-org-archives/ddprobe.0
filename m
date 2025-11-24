Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293A440855
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763946114; cv=none; b=OpJg1RLJg2vi9J/pjZYGws7/8VA+LUjC1wE0wOAUrHV+L+w42HPfI9HbGXAmx6s014R20wlTWs3NN4rAwjbp9VC5PSicuYpaBiDTieCTRpcfOBAZiN7Z1RUC4XzUxWW3qzW/00E6I60/Yo2lzHf/qbp/s11qtb9pel5/8HLr0VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763946114; c=relaxed/simple;
	bh=+f8kkNi9qJRb4RHC007gEJ7wkS/B8inqTeqRGzN7fzQ=;
	h=To:Subject:From:Message-Id:Date; b=qkQYKf6qcScZ8vS67clWLqhNgXJSfjTMAVJSqKKQvDJbowGAGNed4La+87GAf7EoAsomfu3R9udLgeqfBf5hEqVMGaR+BQ6CiaCrC728s6Q3eVXBcvYFNHX93ISyTdZTkiY+kp+oYhT9T6s1QEYNhNQ0rC69FwiwxFpnQSbZd6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mD9SR1L1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mD9SR1L1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDC6C116B1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763946113;
	bh=+f8kkNi9qJRb4RHC007gEJ7wkS/B8inqTeqRGzN7fzQ=;
	h=To:Subject:From:Date:From;
	b=mD9SR1L1a/ZnH8jeL+kkjHpOl22uHtOOkLRZu1SDfB5xN7z6XW/beTTsU2oxfVGa2
	 Ne15E1bp5Noq4d9RMqo7d0Hqzkx4w8DikVZLRBZUehHLmrE/AOW2u57jVyYKBNVTV2
	 WlGr8EyO1xMAIsvKCXEBo6DgD2RrNJaeITut15DyvU0zJcnC4pL4zfA8OscVrALVXW
	 Hu/iCp/bFDjFGnDUWvcGmD3QSeggIFMc1A8YC9sGWT6IF9/KcsT5zspjp+o4F3UVHp
	 R4jH11BVwASFrR416w42l2JRJk82wUPxeRGR/bHBrPhoImnCP7qT4tJgRFPA2oRCiR
	 WwF+DFl0K50SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A21CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394611359.31378.6164268755015450803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e432373699abdce0a35cc482ed1d5593530132876a84cb3076a12e06d8e7ccf
Date: Mon, 24 Nov 2025 01:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763946113
