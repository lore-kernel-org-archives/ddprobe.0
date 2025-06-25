Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3248F307498
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750831794; cv=none; b=dWaAyZ1K3z4A4AAyhN6MQVZdGNW8IFEnoghsqEj6SNnYv00iR45k00HjY8eh7nDK3nfjuSQHFPQyePRV/6H6oFDdM6VjASoeRkf0t07z0KeHRLkuQKuSxdzbALi62Z1hPCyM+qX7JbVQZTl04uJUo84J44CMKTfKXsQ4CVU6bW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750831794; c=relaxed/simple;
	bh=58OiwwOhXUJrksY6YyhJcvAOc2x/rwWEF9FRn3BQDV0=;
	h=To:Subject:From:Message-Id:Date; b=GI3itdoSS6io+dtaXrnb6VBZoN9h/2r/ybztjua0WtY4IKxmVPJBGYvpeGE8eLYUc2YVRVwgnGypqIVgolJfiwhTybJPNJG1QdJycSCSI4TKKVhEb6G1EbQnl1jDbbePS4hkvMS6RZw6QtxBJW5UEyvO4RvyPCt5nOWcMIhA/X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYGkO1fM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYGkO1fM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD5C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750831793;
	bh=58OiwwOhXUJrksY6YyhJcvAOc2x/rwWEF9FRn3BQDV0=;
	h=To:Subject:From:Date:From;
	b=pYGkO1fMP423V2o4xVwGMLfTlBbrDcydh8pAVgdsQOnMEoXMyWrsqlNjgamgeObMn
	 MouSaNGz4rbJL3xV2ANQyIOn9dyWvun9xN7RUjvY+axtGZjjrKT02PVnQYP6o6mhKy
	 73pM90n9kMwfHXqew8OHCby5xsXXZtBBWfMxpTz0GLomb+VpCwbNHVcAsh+ubnn7Xc
	 SGWBaL05qhHrqAxpIEAZuhjKwhZLPi/e4MSXE3utjFvkA5H165n+OMICgIPHL7kHtX
	 gW9Jvm5U9MsK3Jmg7dPOwS3WliH2bobwxWrwei08DWvxYhIRY0UMHXDWdBX67tq8Ks
	 4VoV21UwNa/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F049C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083179357.20702.5496441799508112023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5d7ceeeb9d78424d3e4aa79f2ab048caa6de6fb803e3d1026876abcda19a4a
Date: Wed, 25 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750831793
