Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4392D38DF2
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728375354; cv=none; b=GQSnf9SQuTJnwVG4+ynW5AhW5qacIEjnbn0YPqKosCuRCZJoIhhge2ejJtDUJML04TO2PdapebBN5B2RZX5ypzcIgauoCQpxNaXrBC9dLLkwnYyTNJjx/Vbacs8mFLS8YWaFX7cXj4rf2+YPVdbOkLm54UEW1U+Gt7V39yY/PMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728375354; c=relaxed/simple;
	bh=t7GKwPz+TvmSlm5r/yD+yFkYgxpHEbOwfHDFx92V/xc=;
	h=To:Subject:From:Message-Id:Date; b=liH4v759/nKUUHb4rZR+1GOg3MpuQ/tjCAUC1Nq6CxhtjGFFFMe9FmVk8imFQpinbpvo6UjdiBrFUdWNBndZJ6m/r996IdU4J8J3cXJgxBfMxPEbq40lOSlM18pju48kuvD8Tqgsrgvm9TKdImSwD/9cY85GNJCCzOFX1JRHqQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s80Dhu6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s80Dhu6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC83C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728375353;
	bh=t7GKwPz+TvmSlm5r/yD+yFkYgxpHEbOwfHDFx92V/xc=;
	h=To:Subject:From:Date:From;
	b=s80Dhu6LbFhBvTHojL6Oa5H/1tc27r1iQ+PxzGslHYaA0W95yhoXSfOF/IxCMRkaq
	 Q6AvORtPDFeQoAvbF6NVFJbtnhPOXInsxCo8W60Z41jSJkDrRmwSuhFGe0am2ZBABh
	 f5fdmxNup4LK5Wn9Z/Q+h3OIjEbjM3wRbprpsZrLUhW/wzfDgULsLbs31koT0oXamS
	 pHI+DIYyjH9GZ2txIbrS8PVpVdoTfp6smH3PAIDqwFPua3JOQuVYQro6xeNYwnoR/+
	 VyY1mqVoXlYXDCoall054PxClyvj405jbwhkT7g8Zws0fyxbb7BHh2+NYbQWKQZfM8
	 DNY00+fyNsLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A51CED274
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837535359.20001.9488131875490836330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d0786443c73460ce0471da46f9b9b8b741839b7779aa35384021afa7bb867f
Date: Tue, 08 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728375353
