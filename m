Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D956FC6
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709006897; cv=none; b=mg8nRNZjElSm6AdVzqlm8oAg0WLvyXGwPt3eVNWxvqcETHpaZCkg/5lhF8WYv9OSktw3reRHg3D6AG7FiAU4aSwUfZfpgahJMELsKC8qdlGhjWPIjKioPFSJCOeMJSmOJY93qVlzOxgjFKpNvdIhfNUo0Uf+9A6UB1Igfp9ub4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709006897; c=relaxed/simple;
	bh=0uhrOBHUHDsTPvuhy+ksd3t0IkIRHnq98yN6rWWRZjw=;
	h=To:Subject:From:Message-Id:Date; b=oJbKS0qJqWogFr7/w27cnwk/Fs1loWNqL/H7dtiksCq6NI8fzSzOomG9XGU4K1FraaKBOHDAvn4L0QUYTqfaKRMmq6j3IsF+pUTmH6dHoBfM71fifV9p8fKZqa6gGxRFYFzTY+n2KBnBuVM+2gmaj43yZQvYrtpFdHhbWMJ8K28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AI1SMm4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AI1SMm4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 855E0C433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709006896;
	bh=0uhrOBHUHDsTPvuhy+ksd3t0IkIRHnq98yN6rWWRZjw=;
	h=To:Subject:From:Date:From;
	b=AI1SMm4w6gYHbMvCfyRr4pc+giioUahiOFhVNxQvMwOYX5Zd3Dy8N4bc9CWBUPa/r
	 siN3cs2paBg78pt5GpumudBSnXCJOPWkFBri9LO7ltMeMkVRUHuB/apdOHLLwIgjZV
	 Ssp6Ye94j2pGZxEJgVIwVlwQAULCmRk3c3Mh1wqwOHGKHUv1qoRkApJ2PiHDTu/P/Y
	 CrVVUgn+rXDLAOofdJXLfwGKCh4dL+X9uyoAnnXMY2xY3L8k4SFftYSQ7epWcyq0nv
	 S1+vjZxZBn2TZc0GmUBsGOsayLyN6E1ZpVXpWn828/YasM6VyCUDXCXxWv3lj/FFqG
	 AHe2el/ukb6EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF1CC5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170900689639.2125.8395905073046959358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dc56ab6afe0d08ee0434053b20a38fe1448828f6c54d17c2ec3d78e73870fc
Date: Tue, 27 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709006896
