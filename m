Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF4B36CE0C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755718793; cv=none; b=DINCOWt3/QzflAZDWP3FCPuf3MjImQ6LUku2ZJZZHslHesbv5tpNXXalalrEjrHGkNxkMP7/YCE2h/zYLLNOigb40rSH+9MLUv5BgBFnFVO96ZwaS4Tb7riFMZbgz2iLMcH6uT1MEpUL3O9VSM3qilCt4ixyE6CbOGPEKEXFgbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755718793; c=relaxed/simple;
	bh=QOL0GU43B3gJEGUtvWNmdZvyJF7eOc6YEW3rH7F4jpc=;
	h=To:Subject:From:Message-Id:Date; b=ZagDThlqhGgZBXhEHVHU4mLCBH8QzsoY4CZzh8PWCATTLX1g6KOvjt6w6RysZe29iICD20ZyEO71tIGmrDG0haWAqZiofKmdC7K+dyUo5e6zY2FatUIoZXngV25iLYPaYQx2TZvIynWVAP+nT6qxq2tqLhnWnVT61Z3z7d0oBro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkM2ndlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkM2ndlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0170C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755718793;
	bh=QOL0GU43B3gJEGUtvWNmdZvyJF7eOc6YEW3rH7F4jpc=;
	h=To:Subject:From:Date:From;
	b=IkM2ndlKCQo3xX4/BHDssUiPOSNN8wdGI1ju6wjPzFFvnUeRUFSz6lFEyEsfRa5IU
	 bEiFuCnEt8b/V5v5qMW2QfcPE7pNkfBkTaIZ559uqS3NThuXZdz5klPNK+IP9/asrv
	 /L/7wXJn9Ebwjo9YIlSO08pp82DaqMWIK+2erjhTdT/7xTLjZeQ6/qwS+7Y5mHt7C/
	 e77E3KrCY1r6zYqnfCsBmaBtYq6q3BYBHp55vAlYwycXb3sWSn/hgXAzOgTzR2njUK
	 EEPQwcpTujoAfyINVM4FvVXsoX8DdrVwg76D10cqEI7Hd3JRKmd0ZMQSHqgQQC2AO8
	 zGN7xcmzqrOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A9CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571879357.27306.6517940145115120658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd9a8877b29777f435d57b394ab3b2023cc83cb8a18cf7620a4a0f0093ee1b0
Date: Wed, 20 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755718793
