Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3E53597E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750581595; cv=none; b=VDFUR8cTvf3t9kKdXXbC1/Dg+4n1Ibc0NfITng6P/EvBhOHmEUxiXtmhAmkxzejRDGvjakB45Tz+ECQsot4njFxbzEz2u7ILUQuMR2v8gA52m3DF9bSfcUlo8f2f4sqDvRY3sV9m/3+5X/haaOglgWTFi0z/SoaJbjWfwsxEXmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750581595; c=relaxed/simple;
	bh=LAzfFKi5XnvXAboE6p41fkoeHsKaYVZL2C3hfTpM0LA=;
	h=To:Subject:From:Message-Id:Date; b=sEOYAVCDtrpUZ2SCkbCNHBb3V1rA0MO6oVa9mxwLajEZkfDdacT2OULsPpt+ucgNYuMEPoLq1wyPrC/F5YSQYZ4f7T8ng6RMT4jIvcLyUwUc1WBSw83p0PDhKYF/Tg0qGFN3ze5UFhXVb3OvQOzPSC7GZOMPVcdjh7VHjMzC36Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb7tfvoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb7tfvoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750581593;
	bh=LAzfFKi5XnvXAboE6p41fkoeHsKaYVZL2C3hfTpM0LA=;
	h=To:Subject:From:Date:From;
	b=Fb7tfvocSbMoEZQfWRadDubK4YiA0jQew7UYvEGo7b1JPdokvYKVrpgY9xT4nwzoU
	 /9m4uYrm7ELLoYBKwSjOXuowAF6SH+083+oOsVCwvogsXKk476N+6+NAD1l2MGQwbS
	 2X8VOJY1XZK9z7SPpt0zQg/EhLCenobwsAroX7zfq8dtRhyVhNW3hITtQNI7Ty++O/
	 qE0T2yBD0MoYWFmwQdRnlf7e6/wLHpLs2v0/oHqL6cOxLRB6Uu3CiCfU1cGMv0ayPh
	 neC1f0kjOqmnvVx4U83zstIoYZMs+cDa/a1YOd6twUyBpozNIGWKDBOLKeanRnCFrg
	 TMtzFsyZcJC6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92000C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058159357.24681.5876213324013947385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3ca471add7fcc443a94e0166cf1a7ffa90add6de33b2264ed807ce1df40d1a
Date: Sun, 22 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750581593
