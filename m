Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348C9156CA
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732933554; cv=none; b=h47ZNJoJ3phvxzv1RGkVo4vXnbbeNzLBEVhx+aHcdR7Oy5OGFkUq1Pgw3ipGTUYWR/4/XDBLeQ0WQFFeaVRiiIk57/p+hCbauDmA/wXwEk3+qpSD3gdwVlCZsbD3GZpnec/AtrmEtgJUwKQD808grhVI45XDestchjsN8oLyit4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732933554; c=relaxed/simple;
	bh=Y3EFEmv6g9iyORQJ7pDR7AZaKjZ6RNFejm14W+dcSJQ=;
	h=To:Subject:From:Message-Id:Date; b=aEo28rcaS6UFHT/a/n7zP9TutFK6FgzjmxwR0NrlVdC3QoX9h5O+S59DrhH+fcnDZMrjacD1KxrjOlrhK24WNbsqTluCW6yqY1wkNQChSAto0XYtPaHGuESAc0pi3K8Us5HyckMdemSFe4N0xhrpRq3aaWnpa79l6cqWcy2KLx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSi3/IBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSi3/IBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38CEC4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732933553;
	bh=Y3EFEmv6g9iyORQJ7pDR7AZaKjZ6RNFejm14W+dcSJQ=;
	h=To:Subject:From:Date:From;
	b=jSi3/IBk1Ec9L9FfKhkXJH3vrAWrZkfkdwkY1dsE6UfClmpcuFz7MDN1oUaIPtNDy
	 Z1/Ac4ou3pSKHejvBQ1A7QUYf1N/+KIC/QzMKMjmmGe9Z8PbUMPrP3ejnP5KOFLqVM
	 oo7vnEW6nFbq8CxVkfj50hVQ9LJo6hDSOn4GMvp3u1plT9pFB9sucgUSuLjjx+kIW9
	 cZvMynnS4TwitxXa++hnDJJp908N1CqdjGyEwQbXk4x9PmHFtn6jkGUvgkyKSX+irY
	 XTw7cRx4LemXq3uTbgGy97mC6gcW3UjblbEbC4EdfXvurhyPHHc5YeeJ3YahNym1B0
	 MPjzpCJyNKQJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A046CD735EA
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293355361.30547.2091875358278604757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebd2e99af7bbcbf394ab5182786688de796465459cb8217771d32230e68b841
Date: Sat, 30 Nov 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732933553
