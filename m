Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDFF3BB109
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779780754; cv=none; b=gxcZEKyM2QxXG1qGj+Eijlp6Ix4ufhMMIxQ/cqRF/3IAEU3rVIxhY4ueg4yicSuopr5dqFGhvoKGz2PiMTsC5zXcQqcd9p04dAZuFhUBYgg/5erdwPhGqS69OkYjmPcwLK9aCby0FOGy8HdhDvLT7Gs1QHpcmg0UZa+OOZvTsCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779780754; c=relaxed/simple;
	bh=OLHh6vS3/JVqdnjcCyTdYaCVPW85PHuVVZpiAO9qzGU=;
	h=To:Subject:From:Message-Id:Date; b=p+LFZttV4aJg3Mp3097+6e5v8tM4RBhkwtPdvsKf3rZGR2Ttb3qNVi+bRUy9r8gcy064/phOpwaSNmSSlSHezkyL99FDmbNhFG9ybAyjCmwLFxnNMJj0+zZnVCN120RbtD33oX/mIyK1eVbh5AeM/v/95KhTnOqcvsA64oF8pAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucIMOoGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucIMOoGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FCFC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779780753;
	bh=OLHh6vS3/JVqdnjcCyTdYaCVPW85PHuVVZpiAO9qzGU=;
	h=To:Subject:From:Date:From;
	b=ucIMOoGV+t6LP8FeG90GmZy8GazarxeyBOAJ85/9BWMcmKDXMfG/QP8Qiy92tuLiU
	 YzGOZzzRb0m3mcNTs108345kYddoyZ4Gh+EkgyzHRqjB9qIl1LREBSp4NHBZWwNq/R
	 7Emrtlms3/m6hyibcpKZR9vD92vqr6msKwAqvT9w2/VJ2pEnrGc/wElADw0v7vjTjv
	 m+ZD4G3ZrpE36VkyNEgxyn9qm9URewZZUIGyjws7ObuI1l0XBBq77PTBpRdkipjXqq
	 s8GfUR3dNqc4Hn4znnvbTY8bzsiUVAVphooMaWZ7ESyispF3yP/ilD+4dkvPSYoltW
	 bdP5+vFkjfcmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AC7CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978075368.24173.3319467676633283378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555fde0ebd7bfa2491d57e142935ba00968b3bee5081756e76b0d3ee7f2c7575
Date: Tue, 26 May 2026 07:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779780753
