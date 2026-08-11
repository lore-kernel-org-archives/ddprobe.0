Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4677C2D060D
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786420234; cv=none; b=hEk/+DR+gieEOCmCEynhntlpIgHlO8tKPZ7KPLsIQFUeaVRHRqGHfQytV6RdUg0PUZ49WqqZGTQH9DPAkh45rzdAEfMZXqDOyE4NT8tUbL7yD/5hewbzharOb8PdIFUtGhV5GqO/+YGgea92qKhj1EWzzD75nHnyHLW1zaZ126Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786420234; c=relaxed/simple;
	bh=CsXeqSchmdcBV8AlPVcYqi+sWlJe0RBxojeMy9Pycvw=;
	h=To:Subject:From:Message-Id:Date; b=bwP6xUmZGC35fiOyzKNjLdLvILWsDOqmPcoiJmJNqLBfoBvypRc2RfCa69r4Xa9vbVhOqdYg6R508QJm6q135yz8VVgWeoQbqvS/sP80pZ59kDOvzgGUGp79uolb+1cggB9bXOMzMJ3Ai3RuXM5/ujLKvzR8OxIAcCog3eD38Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHINykct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHINykct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9778C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786420233;
	bh=CsXeqSchmdcBV8AlPVcYqi+sWlJe0RBxojeMy9Pycvw=;
	h=To:Subject:From:Date:From;
	b=uHINykctakIzB71rfMbjPdVVdy5tLqGHogrePVZG2Nfq0HbKrH9YT4NjoJGnEubs8
	 H4k3rwgWNN3O6HAWT2xlgwcfLduKceHH/0TyQUu5Toy5VB2JDAiLR8mnrq2/kQHJxk
	 vyVZJ8l24mtSIwraIp2hDpFKx9pJFLU7TqTkzt75nJO8dzvNOfve/S8nAcdmln25II
	 xkD6VnGs2Tm8MFNOEZI5rpVQqEPB4MeM5Koq1HtE1Vvsfbo1GBfHXe5z0HILFZ1tYP
	 V5orXXGvL+XbR4X3J//8hI2axfW394yOr7arjSfZo5K76NejLynHXsq72rI0iz2A1G
	 fm6XJ5rW3uR/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82B0C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642023368.32273.6924785066360045552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b706374cab72820b1a3a0c7df4e76bbcc6dcb505a19d202dd4ea5603d1ea0471
Date: Tue, 11 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786420233
