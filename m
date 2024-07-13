Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AEE101C4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720834163; cv=none; b=AhAPQyVs0dCyzey1r7/VuUR1n0EltFh/bA+w8Zw9WEEohhZGNbxyJAdl5OpeH5G/5yee+5eDw+FIYb6PhGQZ8noNDlUo4BXQWKTlBV5elyLtYDaP1LqzMtgiAKpLx+1eier7AZJIpJf/vBznZSzzDlf7ulCpvKjJYeEnjtQjhMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720834163; c=relaxed/simple;
	bh=8WS3DCHTB9hTL90h5s2OQntQ0lTV+ErL/bCnIZtF4KU=;
	h=To:Subject:From:Message-Id:Date; b=CAspzefCXphPjjbjAPO3xOvWDhrbuuDAHJuZb4iQ3rZ/DBP+u35lmgm5YbZFqT/3+rREUDURKREY1h9BhWMrQyQgSPl1CJqeTrkTFvtA+QU6Ja2Vq5Jrn2WR+BU3cCl56qAj5NHfu27YzORNlmse+oWxmJsnlpxnjcOBEmdwOr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDhXvA5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDhXvA5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFB4C32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720834162;
	bh=8WS3DCHTB9hTL90h5s2OQntQ0lTV+ErL/bCnIZtF4KU=;
	h=To:Subject:From:Date:From;
	b=ZDhXvA5wQwB0vhYkNDAWyhIClKWgDymcI+J3A99Zpr5hpViOa9XYOkxJcIcYuvOH6
	 2P4tpg8vpI0uoafpaUotqzhTsBZzO47JfoVshM8sW1FhtiJuVO72I9FOGaHWLFowzT
	 Oap4dESljBBck/XqmmJqi7RfvVLvpelxVQPI2XsGq74GNIdXMKpvXyGzutja8dPbeu
	 dqhhmhQNiuxp0QdB6sZuBQ8aB9ylQ6z1E2W/Ipg70ZAvU4RNUcapc9hxk7f/5ki3ZZ
	 OkZjucOPVvTGm61Ac/4r2grCmn1h2Lfb7Jwq8QXWOhCbFUDdpzmXaZrjmQJ65z+ayO
	 +vF8eGojFGH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C967DC3DA4B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083416278.21017.13099066249576054851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6155d115fb61af592a5fd7912f88abd8c1a94d73e2aa24ea6160e197f77d10
Date: Sat, 13 Jul 2024 01:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720834162
