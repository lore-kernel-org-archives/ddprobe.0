Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8A72107
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732594554; cv=none; b=D6eEOHz/PzqqzbvTguD8aNGS6I5rEMbGMTi/U41giaXu34SbVs8X84Bi7dDDH25JeUUsrZ6eCV0yijAgGcYYI34vLllJNFXxUd0028kEJo/nbnwOrK9H1yUUslOVuxm3Z+WXjeC9HnuNqCkyMdNb02vE+iERxqa+2gLF0s9VapQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732594554; c=relaxed/simple;
	bh=DiW8B5P4+PGkMNx8X9rKA/yO0FYBjHCXW6VQi8DeXBg=;
	h=To:Subject:From:Message-Id:Date; b=giUy+8beQ3sl/WBWOI4C9H51clsNFKjtBKpYNbPz6qRFSsFyYTGKbb0rd109TVNZkw/sUVlVrblym36SFd1ZGQf6M1uAvXqGZuu7KE4u9FM8yfyLekQchZu/g2RxDDDC2L7VCGHE5mDEC9ZidNouJ8gN4GZsEZDbRGkt1wQJvLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3nbEvqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3nbEvqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C106EC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732594553;
	bh=DiW8B5P4+PGkMNx8X9rKA/yO0FYBjHCXW6VQi8DeXBg=;
	h=To:Subject:From:Date:From;
	b=q3nbEvqVYNmNkUtHPHyeyUPH+cLOV1qlVHHRHhD82OLNBV7JwJsszNtBSDuVDpzEO
	 sfssOHPcwSaV8xYNIv3CiEiXDGbbOEU0AMe48st61p/KnGYiMub1gFXZMbOearDL5X
	 rTmRg27BeGArs6GL3bs1J7xqLF4sIpEwU3wdSK5zljXFyXv+l2zq2LE84lzO0XsFWf
	 zjTozlp2ZKhmb/nPS9KUL6qPgNlfPqP1HaoZVnmTO9BqFtZEtpC1o6Qmce/A71wGcz
	 /OVRpiJ4mhZCXc20aG81VCxlE6VcOGc4AeUlLcdFDuDrAg7aNcbjjDOqB4ox61CBw2
	 ZBwDwCONDyfoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9858D5A6D9
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173259455362.30405.7106698710015608913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d9d47d333ce8826f7fbbb92e5f2aa75c986a75484f7484b5f260b709c5d1de
Date: Tue, 26 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732594553
