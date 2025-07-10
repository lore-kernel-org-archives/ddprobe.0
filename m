Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E9E27AC50
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752163194; cv=none; b=XDYPbaVIkXrJaWhXLubjtNeoJsnCpLxDmMbAnSyEMalRB6KSqmTgAcPuTd1PYYE9dzUJ4YOPFJtpJnWPTCsgILk6m1ftd1oq0D3JudXgB7wowchxb5sOzhjNPHLReHqkrgfDOhjFHFTBpb9BLo66yvbW0bTspJyMgFJvo7V95iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752163194; c=relaxed/simple;
	bh=l1vTfNpiNAFNuzxdQdfozTsO4Z6v3X/vds+MlZcyyfE=;
	h=To:Subject:From:Message-Id:Date; b=SQ25BZC0kNFpHAcmYHenXf6phxjjXB1gprHASXDnGmqWLA0Nw0XiyV1b0OEXSEpsWziuW3uqKm+dw8eoxL3f1qo/F/Y4Q/A+mZKBuRKQ4bgjksb7Qb9RSacf3K9Um1RrJvXaJEdoabCFDru1vwcXm5ZQryUhQzvBzhi5aICZBAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGTmi8Gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGTmi8Gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2731C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752163193;
	bh=l1vTfNpiNAFNuzxdQdfozTsO4Z6v3X/vds+MlZcyyfE=;
	h=To:Subject:From:Date:From;
	b=BGTmi8GitNFWNaTHrxn/FE13MPbXZQiFrtM9kmSN+IeMZ9tVZf5VV2x8Kc3NY9kj5
	 mVUBfU9CEms5PFbLd0G/vmuKy+N97V7FRf9I4lppP/+cQDMNwSWsVFynDRnFP0QkBD
	 kh6wP8aOleOsHcK4177Xq281bXtJ0+EkPTUPwqbR5qqg+8SHI3sPhA632KLUMUbgRQ
	 CZYT33JEE6bK1Nys18wVkh08bAeasf8ctAo6HqmyYj1NKxZAKDKKLuTHdJjGM72KRC
	 1O1oIK/fU2EVejcNNnZcTpUPDxlqXGKbYRXMM+M9Qe6cdhfg79mx2QBS5w8yewII6B
	 iGt4id/KHtXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE48C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216319357.24813.9919581164594672379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8397ae317788efd92a976c0ad932fa2483562fa8882408397fa1b5a1adabd3
Date: Thu, 10 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752163193
