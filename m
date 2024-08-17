Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619A2256E
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723895754; cv=none; b=VvDAIM/V9wzG8IEdwyeEkl7XFU/axI5ArymhSeEyxZ1p/QDzh+LWz1GKdHq+Vzn1Sp9Kjm7H1rmxdF9Zy0lrwyBZZAeWBu4pAWG4/+4Iho6/GCyP+LKqCDZowigbBbNrdpOrXpKH10KQEUiicxOUYvZ0o92B3Sd7hxy07vcfmMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723895754; c=relaxed/simple;
	bh=tNduVY7YNOA2ZC7m0FYytY87pFf+VBXmzMrAZRNKwVw=;
	h=To:Subject:From:Message-Id:Date; b=hqXs63rU+q99X18ruhlpx8hnpsPyozy4PZXehxrMDeXheacEs/ihaHNErEw6HPqfr5ppJNwU8tzxojfTvI6W0f5WLljNV8h6bRKlqpqi5J9yRnIkUQBRMucKIiKWN9CjWA+o1c0bgCRYXjDIpUKtmltoNGYxuzCNJUH8X7cIsRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syIfaZO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syIfaZO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4385C4AF12
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723895753;
	bh=tNduVY7YNOA2ZC7m0FYytY87pFf+VBXmzMrAZRNKwVw=;
	h=To:Subject:From:Date:From;
	b=syIfaZO/BRZNGlunsuO+qNhotX8t7T4Oy/JIFKZwZImPjoEMZKKtZtlvHeB6Y1oXG
	 LtFR0MxIFOcZ2kD94igPJIr4gIN2fsgpnJcFotodkt4dYzZ7FKqziUTpBoddRYqWHg
	 h8zVBHg6/99NhtWI6CVKf0G4b/n4E9i/H9a4dbt6ZfmEZTpOqWVdgOoFAJKm+u750x
	 Xyrbx2UYNYsXlXJdpLajlpLkYRUW6iya6BJHUF3BZRy64xsQ94HD4M8NGCbIwyh+vn
	 aCnMjpf6j9jvtq30bQdelFd0GwFsvmCJSUY68aQFC/0qiXT0B8aSrA6OBmoU7ywS3r
	 O5caMGjtMT0LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C3FC52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172389575361.2634.18003115481427979296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792367468775a96476ac995a5d1a4777816a3f3f15d8d90642ac13e32a3456f7
Date: Sat, 17 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723895753
