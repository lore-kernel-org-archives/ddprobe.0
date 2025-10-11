Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CDB18A6D4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760205594; cv=none; b=rgqcFuFto1Ex5gSUzPGhbESpDvBWxb8fFSVMkgfhgW6cM8+00Zb+My8yMAYCJUeK+2FPrpEw27mEC/MlV9Zzd3JXj3LhJ9x6Qe7FZz1RmBSVMvjw89QqPAwEcsYb3eVRvEfeezUBG4+VeDaikk8j5HgJh618G/tM62D3/ICKjQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760205594; c=relaxed/simple;
	bh=Kqp9IKUIqOy1PBz8GylF9BzfQvha43gWlo7lshzu1kc=;
	h=To:Subject:From:Message-Id:Date; b=VD6dsX+ZC2eK5REX6C4LaDDAc5IGctb2sKapOf8oSgNBbe2DEaRwOqBJ2GW//OlHbz1Urj85daijj3ooFCCETL1hDvoYzyr+T1ks+ctHBvzLTh/aGkt0qbenw6HJDlhAvkQi1Wy38OtmtqYcQoAtth6tcCv7QjcOPkiAxel0WOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvHZ9xAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvHZ9xAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B87C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760205593;
	bh=Kqp9IKUIqOy1PBz8GylF9BzfQvha43gWlo7lshzu1kc=;
	h=To:Subject:From:Date:From;
	b=qvHZ9xAlPxaNHYRjKch0vs4GFMD6Ii5vmtZc+dxA0m9U5eTWMSrUthsvoTokgthyS
	 J9wY3f4ubaeuBYqpShpIbeHy5GcW56ndpP9h4Fm7l0ypwrP9iX/L+3ECwn14ZSNgyP
	 fhQYbWYI1weI+9bP/P1B6rScaNXktRKVk9YpZaBGmYc5XLM7tk1h3E3Y1I82St86fC
	 QFn3eHPo6q1/awXAozhfhWRwezgHqYHyXy9FlYst+7FGDBNNit9CK5G49rigTBfJdF
	 wRPGZMnBGNBCCXzsL1O0qWqg5iuE3yEHzzrXh4BZC6cCkMSep9fuJT2i901aHDTTOd
	 9UJyV7t1MJbfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91661CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020559357.7692.4196459463939676171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faae51d84089ae6e43c2c7ae389521f6d47dbf7e6295d877fe30239d0280228c
Date: Sat, 11 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760205593
