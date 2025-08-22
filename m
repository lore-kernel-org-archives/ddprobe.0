Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261B7393DF3
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755841794; cv=none; b=FcRuy+AehFF/jXHpg5uVIfS3nfk2VSPJulmpMpxqCoR14wTmc29yI4MVpuOYnUnhBpE9U9i3Fq9Dw6EAV/PM4bZb4YR6gZe+9biSZCSMs1SbgGNHOOPhQcOWjzMZzHblevmfm6wpYtXgXxVYHm2XPLItwkS5K8UcMNo9yqSTBIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755841794; c=relaxed/simple;
	bh=KZkIaaaMFGM8Ky0Fb1p53XOktDEA/WpnDyRMO+FS3sI=;
	h=To:Subject:From:Message-Id:Date; b=JXSvdnimQxTsdvUgqBpvONAY11+Em7jnllDqzuqh8tbtbV4Uu8yNDYmczEExhKynS5+jywg+j8hUwS/R4WYbymwI336murX+dR9tV5ZYBjTGtPSZSZjddLNiIFCkOMd/QouR81nFXJpJk1cqFClxekh11n2gfyw0A0jqtVq3X5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbhCp5+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbhCp5+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD3EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755841793;
	bh=KZkIaaaMFGM8Ky0Fb1p53XOktDEA/WpnDyRMO+FS3sI=;
	h=To:Subject:From:Date:From;
	b=dbhCp5+7D/yjw4CYmP/FT+h0BWtnqeMvhSOLmd46ZGM6+i0JYR0tARgbGzPuQL0L8
	 FQj9z17xMFCJlpPOr/YSuGhc9LQB3r5/7uJ3A25XPOiyuYhDWqSkF6tunxAswTp90D
	 evPcyNLoaF09ynyOtRQ9D6wCxoalw101e496orVFIx5ktOvcvGfvXU7fyy+23qcS2w
	 tN+WkdD4f1Pt3iybDkE9/5eAd6rQoUlJdcdXqGMYnCfsBbJoL6f7GOF7RRpEVCp8vT
	 VoI6vaX2MRWduaSqwVzonFBKEW/LfnhPPzrtJtzcXB8nfW4DF035nKpUm8QWCEXi8d
	 SnN95ufBTssfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A6CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584179357.21308.2084291782495663562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8515a24e5ebcfd97ce0b902513c79a663a1b7fcae55b3d780d07948bf9310a1f
Date: Fri, 22 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755841793
