Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE73655FD
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780224274; cv=none; b=pP8hjYkC1ZrPypXuk9cKiZuBkbjmjixJ04tytrnZogdrjTuZInvtwDUMaY0NpsPhNMsdnnZ3pOnY0cgvZKueySgfG26ch+KrBBZgZ0HNKnOPFh3/tcDABJfE8+tdYkPhy82uNzjgnbM+pnkXRSl8wwSctd6ciMEHm3scauYEEfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780224274; c=relaxed/simple;
	bh=Ca1AX+acZGS/K2pXKKTWBGF518uznRI5AcZBaYzC1/Y=;
	h=To:Subject:From:Message-Id:Date; b=WB9B306v1evyudTWbPnYHBRZFR6Sx37f0RonbDiQ1N/qTobXQTYumYLn8tOzokoUsjIUVeo0TF8xVQfuOEsoYHqTj+cq4lJcgbNb7svqjUPRruBH/qKUp0qTrsg4QX++1N9o5SyEyT42xB73nF+nIJoVYCYbD7cZJmrZjou87hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIxsGGRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIxsGGRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B0EC2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780224273;
	bh=Ca1AX+acZGS/K2pXKKTWBGF518uznRI5AcZBaYzC1/Y=;
	h=To:Subject:From:Date:From;
	b=gIxsGGROlPxk2wLVSQ7zxSAO2gW8dVoj2B6XwcKeiqnllklXC5ml4vyJINWGexIPV
	 B4qsxQflH139iFbhayof0KfrcJlvQrzIPdaAUphd1KrMWzAFiDUlx3w06kqpzQvMIM
	 AjLV37Yg3YkX3GNYKRrTanBXXwec/Msh88T8Bq1Sb6sIttzRWUXC+39oSsAWCn6J4f
	 nor+IILXk/wPHfKByujA5ZQTRPRdlXTHYj21maCfrDJcMRMWTJSKMwIDoMGNsg/UdP
	 4BraZF1LjpePGU65q6GJWDTihkcLEPB1tcG41TR0jq9Sx2/MNxGBUqQqovjk1Jk8EV
	 nsyD9RqFmjIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A950DCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022427368.21413.9405829966418198999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3b77d560969f2f7420903fbc8475868b5a697f0141a7a168723d7200d97cc2
Date: Sun, 31 May 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780224273
