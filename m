Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F39A286D62
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750091996; cv=none; b=aHNWfC0sTWyRca9l7sHxN0kvrSkQXD7KGQuI0L0xXUCdtsugdMT4DO9iyr0Y8XI0kLIRj/HRcynwkrSNaerByYHpJiNWGMzVkdRyyJMTFBlM8mj5est+RzuUNx+LiLH8tO4RltWwZ9p4/a8sy39GvabPRchaErmfvyaVt7Worns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750091996; c=relaxed/simple;
	bh=AlNyljUUCCt5H5lq5hII7tnRpFSxoWsA5EAbdJh3OG4=;
	h=To:Subject:From:Message-Id:Date; b=HDP5SyTpbhMomTAUU9SvJs4dQZ4Gn5MIQsBtrGOuK9Q1OpCYVxivxjf0F95Bu8hh+8TSDhoVPiOODzeghY4jUWgoGQPmPT3Egn5jtUmkt2s1KbLYobh+9YrpUMAc2d8tpSLZ797zStZP6glyvOUDMj2IIzelfKqIkw0gd1O3/CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhlqhruk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhlqhruk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA338C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750091993;
	bh=AlNyljUUCCt5H5lq5hII7tnRpFSxoWsA5EAbdJh3OG4=;
	h=To:Subject:From:Date:From;
	b=VhlqhrukBmh07p05LBCMVY10cX4KXKcCkb9C7RGtzFLoGUeqOvDTHqkh5I93xqYoa
	 jJBmcS95jA/8SP4uFbcktEee6HDK/BW5OvR+yWWzFygQWvG1gjhA6gwooqJOG5iUrV
	 xCgPdUdgJqWmY9laxz1y1wxC474ddg2cReVqrMSrLtZpLyiVhXSdQTaW3biEidC8Pr
	 k3ZDL+PPfxZ0mUHim3P2/j18fu2bIiQ91Y4yvCxUp8eOzdu7vIYm2zbA76f+j3A3Qi
	 sa2Oge39qzbEhgZShJReI09yLW63TuaDYBOX7OBZLwx6jfhQ/ahvGOJiKhFSkU6lbM
	 PvQz489sL15+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90944C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009199358.12256.12907078213792110213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94b2780817b2a2606365b0fde98b74035aacdd0764c56dbf120883b7021cf57
Date: Mon, 16 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750091993
