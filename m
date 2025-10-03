Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196D01A2387
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759465794; cv=none; b=PjNKKL6dPxcE0tS33cyjvc1G8gt4P6I2/+WTn/mNR9sY7N4j/PAwWf6hknWGh9mjC9camYMBtTsfqYLyAp+aYMY6lxMI/mopYox4paklKqpLzpDk1h3T7mNatxpZFG8Ek3rUCpaLPQ81GM3KvGsTD0iUh8hk24AzQVa9deXLmhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759465794; c=relaxed/simple;
	bh=zRv3UsVDejgn7RExPNzFxDoT5owK117THHgjoomypyk=;
	h=To:Subject:From:Message-Id:Date; b=OJ1VM//ENgJ9JmJ2NAIaShHOQ8+YEXd0uq4LARLXLWAwohLNlx4IjGdWHYEcxqFm8O+7Ic1D42A6jW8QEwDPyv0U6vAtpTMZuSwimgMoWF3q3kbJqvwoIfpsXMepqTPhkLASpuSe5ZnHYxo+HrfHCthhnHNk//bnQ5zXidbsTWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAolNvMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAolNvMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D54C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759465793;
	bh=zRv3UsVDejgn7RExPNzFxDoT5owK117THHgjoomypyk=;
	h=To:Subject:From:Date:From;
	b=aAolNvMSOXubPN0DjlD2j+4zvyFJOgqZSem2NbnN0Ftb2AdczywXi0JL+aJFctAaa
	 PF6JKNM5BbeuMnesaC41AQChrQdAJta0SN7HPDfGpsCE48mrcBz+NuLFroGXz6z9o+
	 BhmL9rIuBZxd85FyZi2MuqE+nJlnF6XPXMEdRWMLjhrt+RUecmakF8rlR7cQea0ofl
	 IJGVt8ZBpx1qnKTJA38JrVbMpOq9yEGVqpCL5RJXlDBZWVFAwVCEHFvcB83/asnHhA
	 L/mKaFx5xjcv7TbRet4HJptN5XCxjcXmU1s10AQC6l5yQXJrCNzwwL+qd5BMUbh+Ti
	 e1cvBhUa4zbIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93103CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946579358.23529.3186537035143684781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca737bd54fc4edf614767ba1939ce1fbb3a3205a5caa016ec173903a9dac1c7
Date: Fri, 03 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759465793
