Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CEF202F9E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745009394; cv=none; b=ku4Ps8u0DugPB3tkKmR4GBqRkkzdH/GHFwfOqL4sErbmOkSaMcdO4in6j6CCJh81ys6bxEjIspZ9XYm/nW0S+4zpTo5RMBcTLkdduN6GyEfAYt7Wz/929bjJ90Te6G75YlIl86dgHot/sJ+aoYkAF82eYy7jCx6drmy1R0+sivk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745009394; c=relaxed/simple;
	bh=7QjFB6C2BW1JmWIr41MgVjG31xbPHBzifbW6KP0trW8=;
	h=To:Subject:From:Message-Id:Date; b=ElNY4EgmDtqafu6S+PTVFuU8UHKJFKdPnzNNAAdH5oIK36LFeaz2Zzsgfk2GN4OK4JCBXxw5wVJ7T3YxHjGDPK1t0qIk7T50mDoKRNFTsX/LnqGntyERRbYno28q7ombU180Gojk994LKTc3ZnzBnT0tvcDfaac6mWESNwvgutA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQqgWplp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQqgWplp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D04C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745009393;
	bh=7QjFB6C2BW1JmWIr41MgVjG31xbPHBzifbW6KP0trW8=;
	h=To:Subject:From:Date:From;
	b=YQqgWplpGnwNAszONRutytEJ1/UlgIyRj9w5Vkxoq9+hKj1XjBs5EWCiV5ka8S6OI
	 yyh/li4hVC7jQ2M0u9dbCKkl5hU2At2sJNff0uAShEcEQYefpLBQh2g23x3a5xIOt0
	 sNTch3IafbGmJ5YxuQovpJSsDfTa/yHUvsxV+oCFk8wIXqQY/oH9/1nuBu8od9Ow+9
	 FWgv+4CFcO9iJAgZw/NOGDcd8FgSnows9vaTlEeR7eEO0IHJpX4g5Cz0pn2EzYTa6g
	 O7fIbZ3GONebclVYDGVgIygyDwouoGRWrlAlbDMtt4o1nc/s87uRLCGOlrzrBHQIhJ
	 vNqJCL0FhAvPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99040C369C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500939361.17138.14524583427805023118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c2b5db26eec2de17636396e8403de27f0589fc21050827bb0dbfcad80a00b1
Date: Fri, 18 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745009393
