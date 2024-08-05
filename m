Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B441148FE3
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722849354; cv=none; b=HxpoIQYRa899pivagX2JrkoSZIfjQAGmgd2V9sI6Q+6PEebe0g6lwaisEb7xFzo2cKMXLYqRyKOChNY33aZ2eAATKSyO8L0NgJiKhomyEHx/4FaJDTuUQsY/AZKaVWGMQe66199j+eAExa39if7kOKQWVDpa+AdpSzhtIiAO3Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722849354; c=relaxed/simple;
	bh=nQoUXeUR5iaKiJvh9AxT6m6jHbThD46gY9hmkOqnOuA=;
	h=To:Subject:From:Message-Id:Date; b=BtDxbUH/Q1P8cYazWdP+1wErrtcs65B7KhD3jWLawIoCaAGQISuex+f+pUd1zw8zk0AXhz4QeXzO8rseBMNsAWOtvUQchUlTCBYHj2mqhizoaX8pIcaWoyIHGT7ZYzFof2P0BCEevSWlzIORzxG1ZBOw8TDBA7hJgaiJNrpgclM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJs88oGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJs88oGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1981C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722849353;
	bh=nQoUXeUR5iaKiJvh9AxT6m6jHbThD46gY9hmkOqnOuA=;
	h=To:Subject:From:Date:From;
	b=GJs88oGvTGBtR1ybpDzjXgHLBcwXJWM2xC6F9JUycZX/5SQQwLhJ5f1MxW+H3v02a
	 MAxXWcuVITpxb6aQ9ha42kdyp9YdVSstVD+gfCCyTAgrWSPFhJGegjh3Tg2D1U3PZN
	 G/qy9HjiPEEgbVTWceQXrtYCSgj/W54Pfp3Eec+EhpWt6CQ8XerpBkA9KpZEg4U8v2
	 aIDAIJdsnUnCth3GH8fN+8MMG9efex3ywL4M0vK5l5MU87WXDLsGd074BaYu4M2HXV
	 D7jFaJFargxjPAsSEX3A9ltjwFc99c5fK9OUzN9/wXiYhPwMl1rW9u75r2hmRuZiO+
	 C8GrprGZoCLVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983E3C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172284935361.22004.6794813212234033744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d652a066cadfe21b275068aa64bc13505a18ada6618750576166e8da88afa383
Date: Mon, 05 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722849353
