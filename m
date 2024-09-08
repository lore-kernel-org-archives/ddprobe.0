Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6744918C22
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 06:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725777955; cv=none; b=kOL2h2Wo2SSHlsAXvCC4KeuPLl22pbYjG6G1Zij3hup4lLqxc7eDoXFyJJGU6yCdBN3hr4gWJigPvg3zBUzhuT8If0Y0otANwDF9X2QkeMoUysqA89zc4eN2FRz88WVG78GWBkoR0bKutB8CYmZeKbKPKD07hRO8IqtOe7XM1jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725777955; c=relaxed/simple;
	bh=dB+KS8mAZyhGet6ye9csH6gAI4Ziy3FyL7ut+Ft/ldk=;
	h=To:Subject:From:Message-Id:Date; b=jU6TGLzT6yKl2CEsu5qOb1CaylJHhAfKequ/u9Sp5bQEdU8Dk7RSxErQsyRU3CmE9MdkJQcKceV4ud1dlG4ediA0TOH9+c19McV29LOrlFkufdFdJYS+amPWjQKK5P9pRYwz5eEiWiUQmPUo54Ww2tyLaRWmnbaplFIFRdazHxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFYOZYAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFYOZYAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06C0C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725777954;
	bh=dB+KS8mAZyhGet6ye9csH6gAI4Ziy3FyL7ut+Ft/ldk=;
	h=To:Subject:From:Date:From;
	b=hFYOZYAJ5t1dxp3n7s2sDXv61NcFyHm5jAOeK4b1+jUi9BysGrspPpAO26C6lPDIa
	 9tq5U/2V9uG6t2TqYFkb1bWn4xaF6RHEoLw7uFxzsAX+TdtXhpmPgOHvUywz1dh6yr
	 bpCgED5nWW/wYf0Aom8hAlbN5mS9aCznl6T4a9bIwklWv/TDtu9J8btocGQfmZLsyY
	 ogyg7A6d3Ovxv75tsNqs/CCJqF5miOiTe8F05rY1ROUQvd8vblcNSEYqwg2SEw4E+P
	 tDggJEeznF0OEgowAahkX7I50mJIGGXQLDoYGqvkMwUN28AF+EA6sm3upePxVRqSPx
	 mqsHGz7Oi652g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0800CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172577795361.3622.476043090884959722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79b861878f3c715cf0c1e8546702f5965ecd7ffaa12ba41f542b81beaefb55d
Date: Sun, 08 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725777953
