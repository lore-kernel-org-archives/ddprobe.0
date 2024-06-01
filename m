Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E377A29
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717205663; cv=none; b=dOFohJfpwBSpEWxhfLkwEj4Wfp1suTZxrsJL9Ly0aZOaOGUoHDufrwhCUGGQHrAflW6eNBFZU8tkvsJ8k9PF21Pu+5XCakA5IX45aOqGbvL4Yri47eZUs+1k6fEphUoEmb8yUvLXNyKZBHrSXZhYATNANUT/Ka+V6a81Gex1HDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717205663; c=relaxed/simple;
	bh=cInCCNnQj7HWX+2OyKcj9J8lJxK9Geu184nPbGlqhoU=;
	h=To:Subject:From:Message-Id:Date; b=tIwZEt99PvkOXyRyrWoo6/5gE0i8DyRmjMfa707JKfH5hNBlVTHwezo71TC61WXKGiBWpeyaPwsITxVxIMo/rQNyaOccUebmKCqq8iQHjbVLkjZkoHgtSqk01yjGxk3Sntnb7uYUUB07GpIGh+yYXD7BH6dF7tCBz78dL+PvpWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxyxeP7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxyxeP7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC01C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717205662;
	bh=cInCCNnQj7HWX+2OyKcj9J8lJxK9Geu184nPbGlqhoU=;
	h=To:Subject:From:Date:From;
	b=YxyxeP7eeX8mQnkid0rkcUnUypR7f7uR5AtJrRe4F3MstDCpOKlK46dkMsF6x6TCi
	 4Dq1UaD6SKlnnOlYFU+RuVR5DjGN0OL27ON848pP/zgR+mGx40biqVAB0QfDpsVLe4
	 0eKguRBEf1pBnI6ApeXqycAc8S5STG16ohZrKzMp45c8XRrNW72Iuhhf2zli9xNz+X
	 7pMS0pkVn+e2PfXTLxq9za4rz2BMG1IQtlhADEDN0Xh2BB8SdlTfQtT3Anf2xbxgwn
	 FVJ/BK4MHyVN9p+tqyaoRQnk9AkcyJzt9WZHSzDrPdemyyAHck2Lo+whSlFVgEZW5c
	 a7HcTUO5ky50A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C06C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720566278.14824.9278148653221959976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4113ed875c42304da01d2e16683fde14f710ef2786704e5314c19ac0f84e80f5
Date: Sat, 01 Jun 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717205662
