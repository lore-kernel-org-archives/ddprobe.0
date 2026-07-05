Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350D4357D08
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783237714; cv=none; b=OKmkfF7ZRPBpu1R/H3L78ns9I0jxlJ7+4DjdBtXb4rwCvU5tvmJATpW82Rq1sa4loEirzNWNug/CLPRtfi1sHHWYCu5fTx77lnP9rFLFhTM038c0SrkjMhX9zcmxyGXiRk2mgxCCEHs0qgGEYWL+yxAPABJqBvuBhJCAsBgUDS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783237714; c=relaxed/simple;
	bh=Lg55nzB07iY0enIvkvtR1PbYejf/COUAblV1Hz+13sQ=;
	h=To:Subject:From:Message-Id:Date; b=dL146G62M8b+KVjRA45Y7CYUXPgTV0e7OT4dHU5VVJQklqLas9aK5kPfAWzmUbgQIuKRa2rfqw1DUltJvf2JTYznFANass6I9mq+hjS6zatg0mCN3dgh6G8evDLuuPeKh6MdCYCrUbPkdKoCSt4ZiKLs84IFGbWgbrPItyWW6Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYXyVmXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYXyVmXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5F8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783237713;
	bh=Lg55nzB07iY0enIvkvtR1PbYejf/COUAblV1Hz+13sQ=;
	h=To:Subject:From:Date:From;
	b=tYXyVmXEa+HpGvNnTkkWAxtaG1jbOnX2RK/rE7QqfsushaUEuCY05PTbr6/VR9lH1
	 7kG600ylXSFNBV1cqOplk+/s/uFvy8pRPbAwlDkqJjCrjgE5C85Ie/eqc+c2egHIdE
	 GE4GbpReNsYDSReqD0KvTltR3xKKQbl1V16JUtY+4dHVfzjaBmJ+CcljAWzirTp+sl
	 ZqYCnD00vZphaTpgLoB1iC828uJDM/1mp8S8ZPjGTTQl3f38KC6wvZE5IunVAz8ITG
	 ++4vzP2d/niP4UdpibSpaU4kSx4cBUM/sC5/4hEa7skUirW9R2D7d4bZggQo3JQ98k
	 fDyFgJFBl982w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A17C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323771368.29637.18118571023926109466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1d998c9eb4dfd318c62a624665135f45341c2dc8cb03c483562eb520917784
Date: Sun, 05 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783237713
