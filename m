Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44E5418A33
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790112034; cv=none; b=Gu65t9U5mRvEvej/Rms535qATSq3p0Kq1UidgL8cNpJz9pZnx0Qxbqgk7hekjOF9rLToQ7PieslvPIrytL+Fwma/YtPT8e35G3E4G4fblY4aKOgAwS277Bkw6y7x1aXTWc6VeqtVoFtsaBcwxhkwZSsZtpNxW5MDComc1xwqlJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790112034; c=relaxed/simple;
	bh=2FBCT2lesgAfSDClEgjoAGftsaKULvhHaGtLycLke/w=;
	h=To:Subject:From:Message-Id:Date; b=t4P7pMITPorIkeu5VYEVFkAFZoadJaX5yOGWYrFpS77D4/aOrryfNaLga7zMjFFb2ihycse3qznv+QfqvFSXlfyqCopw3eahwCScD5mMdZr+VB7d/A7/4kDkjDRm5akK63q7SggDvQ4f+Z9hFsYp9BuDS+ty/+UM3HARK8yf5+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOjEs8CQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOjEs8CQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E68A6C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790112033;
	bh=2FBCT2lesgAfSDClEgjoAGftsaKULvhHaGtLycLke/w=;
	h=To:Subject:From:Date:From;
	b=JOjEs8CQ+TWLohjpZPEHGnpEd2GWeU1DxTXL1ekhZXxCnq5D5nWpJQdRfcZmmJEjX
	 zJD06wAACzpK3LThLsucdLaHxlISArwNTMJURH8lQP/DUuQvUhHLYp8wibPPeTyHYs
	 ZPp3y8OBUMlDY86+6jfr51ZH0k6mpgeSpVe8RIOA6nQVi0Eb/OrJ4Ot+sljQPcmKtI
	 scy0fBCIcW6FQHo0e+BsxMHylLa86Sy5KcHIcfFs85RdCncF1YSSAMkMGNrDxo8phi
	 sX8/4Vdi3MqcJ/DPdxVQlL8itbP0k64BcadfY3r+iqqKRHUUpYEddv2LblOVprgOeE
	 ehTq0NhdR/umg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD89C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011203375.6149.1680177872380728681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2412e7e1c81b4f39f59796afb6e218f14205a7322c0975a76be997411b2aa998
Date: Tue, 22 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790112033
