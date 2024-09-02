Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3613B2AEFE
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725266754; cv=none; b=l/k+OsGDCLJnjLWcAlZCHYNlX4/R3pgP2+IEXPG5FemMqfdp+X6FjSCSaHNiHxc3wwyI+Uuraloxc03U4Bxm6pYL46mvUCIIiLYJEOqIs1tonKGfJPskNQwGKMQ6dajPKb0a49WkU7JfGL6y3Q3Df8BFbKi+YJADfJ22/8PcYH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725266754; c=relaxed/simple;
	bh=eQjIGaSV9+cAmL6IXeydZpoD5xPZ3RFcKruU/24oU6c=;
	h=To:Subject:From:Message-Id:Date; b=UyY9zbh5UHBjFe6KScDnIhrgVVRSJj6dCJdjzHJTJSPLjjV4+oAHCS+giIs68nWJO0WnTOlNLTSam1M9mnETj/o9+XBFRO67gOBHxqxxLMqR9w4SLTeFFD+OHY6/jhO2P6Mtn0Jr+UMPCYZNRz/2ShKo94GEDN44HKlniYsicWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5RiNNz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5RiNNz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE80C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725266753;
	bh=eQjIGaSV9+cAmL6IXeydZpoD5xPZ3RFcKruU/24oU6c=;
	h=To:Subject:From:Date:From;
	b=Y5RiNNz5U2CimqUCuIlymzPzm2oOh7m9GBQkAbQ4PF11ph65F/hMBWf3seGLqW4ra
	 /DlpYbyMn9RdN3owRvb5ZP/AxyisSEVcXJPtbmkPd69AOQwAQVKA1pgW6IDwh4m4Ek
	 xdDOjh9gSJR8zeUbUkn8Z6xaLHHjA959tUrdFN8j8sKl8vxtzp3quMG9En254gWIhj
	 eVvSv4zNI41XyjB5Z51DGnXTgOC9SudniAvQW+NcZB+SCdOwxzp0i2s1h7B1/8Nx6F
	 b31VAqDBFFIdS3LtbpUdTb5Prm30ZMfEbzXRhYHR7hPVtJICeFAdbUDZBDZ49+e0aD
	 nT51P1QtYsC0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EE8CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526675360.26546.3537016762689321715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd20ea568ebce6535d1dfc080758b4b4fedc0d7754a6a6e452edb45bd1a56bb
Date: Mon, 02 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725266753
