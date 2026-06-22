Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30562225A38
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782146194; cv=none; b=Z1vJwDjqLtYoOe7agtdhJOVRIT/cT26vP1rH5AEsSBVoIW96sZOZUKcDndbh77pX9YANoFu6GRHzdWm+A9D+8Va2kKVRrx3hqSmFhhK4x4SqVvVJVqZMIKTVPGSDFppp4HZ6XybgQ3+lS6Swz0HyW40R3q3Fp7X+MC1fcEsfnI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782146194; c=relaxed/simple;
	bh=uX46NDTVJ6Y4Ki9SiW+ZHAfgvNVNJ+qQ4ehcOWxb89c=;
	h=To:Subject:From:Message-Id:Date; b=ITuwnPlwtFa49n3x0a7sq30r1sYoPvoOMZw5RUoUh0rt7z3ZmzTFgHaAOLkSAMqBbs1ejJktptW6ESxsg1S+00x3uLBsp4G+XQryrEkXHjOolHuGxcLE/BlXbyoBq07K+QbMDP90CJQKN+n2kA9T53ViXehbhsMNAefzJDQ/X4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCQFvaF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCQFvaF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54FFC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782146193;
	bh=uX46NDTVJ6Y4Ki9SiW+ZHAfgvNVNJ+qQ4ehcOWxb89c=;
	h=To:Subject:From:Date:From;
	b=SCQFvaF9HFPNje2zaaT4pHPFWg3Xft1dY2T246SbYfzrJigK8bgTs8fAytSwaML+V
	 AE9qmS7fkI29VuXL05gh51W8KZt1rvCyl2mCaPOIAAO7zTXFrkEm2Zyi5T/y8GCsnx
	 1cxeaBILHBj/P9MKtWc8C9jljq+nnoa/8cSkVkpwHDQOZRT6Nc5RLus2XF+i0wkdKr
	 nYa7SktXcD0KSu7uQ13hwbaiJL38KbojmYBQFx3z4d6UCecvdCTdiCPoeVrrbLqotS
	 NGIQSJr4M+YFR6Vk9HA0xP1TgWfZ63J8lQi+p+LdoZ+JD8HKruIhOfHlKuQ+gN545v
	 JlI9kvsZKej5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5005CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214619373.11042.7415175813441415254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14496fb22ca404a278848e80ff1f520052f76ee6743c4097ab3ebbccfb4bab1c
Date: Mon, 22 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782146193
