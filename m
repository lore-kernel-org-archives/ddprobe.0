Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260EE2E0921
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756132194; cv=none; b=SO/VQP3Ikme3H/jV3azJn20n/20KENKtr1sKqkqFwcku/9s8ORRcXEqJ6kHXaCvpC3UZrjOnPZm81ghmIntdPETynf/5g8GLXUtbST5f+dCG/h7e0LHaRbUjmPVM/YmWeV58Ny5ZJtczSjJxgOo5OfRTyZC5Pqrs6HL6og2iN7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756132194; c=relaxed/simple;
	bh=VLz7TbnFppj9gGQpciwrl4gn9NVY84HO944vxBQy+1Q=;
	h=To:Subject:From:Message-Id:Date; b=GBCQXz07x6X1PtFbGsvE4sJjKYm/+lSZtgEmBO/nNBAVmBNj1EZcWjd5W4zLle0WbRufrYdlP+I1sa/ZlU1oHUSD+9JFhdyZQ3B4/zZ1PV1dKExLCb4mkLEhy1oo8zNqD7thvmximASg1Nrev74zLk/dlL4wtajd/sbPW2DgK8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJOeLCXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJOeLCXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6053C116C6
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756132193;
	bh=VLz7TbnFppj9gGQpciwrl4gn9NVY84HO944vxBQy+1Q=;
	h=To:Subject:From:Date:From;
	b=FJOeLCXvdlC2b9VOQhp/9izZLa1p4XQKs/BYNbQNYrd8BElfbzOALAMfFgW9xyW5W
	 2TeTf6Kgk4tHJpmWJPVwP2W8c2nBq4e1wJRb6x3OWQLXibcJJR7GLESTFl9lOQ6hb/
	 271xvOHhpBEhJcuLvCKKV2ATiNkvSk39cWS/wLM6XzlFFsKBjcPq2ibUa0YQhqrQVV
	 CBDAmbQbn+BsSSUTvZPB5VrumO0mXimMpgcDsNAc7HvHqnLz5lyq6GNx+TWfzQjGH7
	 WsrUE5qb/MiZhELUHRQ/1dEBpvQ3vBvHVVURANfveOC3nMkrTQa9jNGH5AgIeDHTQR
	 o9vtmiCc+Du1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90467CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613219358.25367.931598406995688086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f691a9c12222b89ac42a07738f4a0b32961c1d88e44b00b51402967b04c86a5f
Date: Mon, 25 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756132193
