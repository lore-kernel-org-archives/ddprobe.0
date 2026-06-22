Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0CB36495F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782161794; cv=none; b=OulTai7puKBoZD5Vu64buVQpr9Z4SCqAtH0HBypgjvArxfPU65F8Gyru9ccvny10kE24o72oCc4G7y+BBFAwM93crwduEqMHlhA8Z0NbWYHAOpt8woAB01fdX4HLxxTj08CAgalVaHKCIZc30oc8k5uoAfpwgmsx7/mQnZWxIhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782161794; c=relaxed/simple;
	bh=qhvQm8x/HVvjvHh6CnMDY1KwAppWdQcOkElyCwtYWqQ=;
	h=To:Subject:From:Message-Id:Date; b=lkcBhIbDAm7L3ZCdiIRn1nSx1rK5Sp+ZYCuZ53/fBpSerSgNHRNTKrRGFtzIFrVK1qmjvZPQRLKIkB8ZYsxaTALOe28Ks8zdz5/98g8Zz+lfR1m18TuTRpE3+aK5hwF2F49XgsYVH4fCu8HznOf1BeTZz4NOks3Ja9ZEhjtcxKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6o1Rr4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6o1Rr4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90E6C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782161793;
	bh=qhvQm8x/HVvjvHh6CnMDY1KwAppWdQcOkElyCwtYWqQ=;
	h=To:Subject:From:Date:From;
	b=K6o1Rr4qMHHDHGFhY28oUUQm6KfUx31zAnBLNI26+LbXuXfRaQCrYC2TMmj9Qivdj
	 /PycVaNTdKiz4iesIXRIYpOV+r+56alMVGa5VR2MowW+KDz2nkMsVHLcaYkTd2hACw
	 8M3Np/SBHmDvYkFP6VW/NZChffDdG9OM2AojjmVPBIHqyDNFrF+CYUmr7DF99lRFGZ
	 ARAJ9t3HF5aUzNXKJWMddMLSv/IT+4FgneprGa/9qLPSomQU/kqpuV0wlrG1sm5Ymo
	 Y0TSTSJeqD27xmrDqLFwoAT3pKz4bm9RzPuhIh1H8BN26HAmO+mqo0QDd6ITEG43E+
	 kbXwFHcdzO3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC1CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216179368.16623.2647410160561437444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbc2aaa11ea2a9a9dc10668504c0f3860c4d8b4d6a8bf38302f2452647e9bfe
Date: Mon, 22 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782161793
