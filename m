Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198883C2785
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778793034; cv=none; b=RbuQifNVwO0eNkh2VGD+GiztkwEL8x/wocpC6OGjYa3gzG23UApXsD1qlMFP8lAYjnNrd7UpE3CcyZPGQiA0eMmWmZkbu2oUVwB7pzsVibjJr57JC/OK27/gXVj2chow4o6yKWoK7vkCU6uzdO/IsBTexKvfDYFGcqdwr7eYPaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778793034; c=relaxed/simple;
	bh=OkIYtZFK5YKfNxxeWYNpxsZAk/74tyaaQBNlKC1mHaQ=;
	h=To:Subject:From:Message-Id:Date; b=Q8/8dsvyoVw6Eg3/Galh172jNLlrLW9ztBLxE7uoATEZgsi2hZVeeh+QdL1D/M71b8liZIRh4jZwqQwLXnWMMCGdnA+RFOlbtPh7Ww5Or5PH6MB46b7F3nZ6nJJwuYMhJa/nv9S9D7AYiX0Ozy58SNSRXtcRJCQCx+7wH5Sl7bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqkPoFVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqkPoFVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6111C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778793033;
	bh=OkIYtZFK5YKfNxxeWYNpxsZAk/74tyaaQBNlKC1mHaQ=;
	h=To:Subject:From:Date:From;
	b=cqkPoFVhlEXoiHt87CjC2qn0iSIRfvRwaC/M0mpIAckzCCo5aIcm3Hz+N+fLR/kKP
	 H/c/+sTAbzzEhrrVRYN4WbPBZKN5dcoOJ7KGlyJ1LbIu/cy2jsThVEyx5yAPGOtNK/
	 rIfY5IF/V6H6UUm9A5GXsppbDK/xh6Wj4CQZlTVO9HE2O6/gjB4zs5PWdlGoALW4pZ
	 2OMUuZsmuUocf1uYs84UHcgz+AbMpb48hyn6aVo+N5aDx752jdHvddMU8f7ke1ANQq
	 xzaESeqtE2T7rh3BHVbMLAr3Z/De/bHoNmBjkid9Rpl0DcM+gGFlcJaw7R8JlNfDiT
	 VfdVSsbkggcbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FA8CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879303369.4692.15321603100725967443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88aef4633669642f8fa8f1db3ace603051e7ffe79b0b25bdcbb583c919f2ae0f
Date: Thu, 14 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778793033
