Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD98393DE4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775559334; cv=none; b=hZRjSkLMNmS6zMcd9MqYWgqJGl0bLs3U8L82wcfJ//akC3n0lCvVJD2key98TPJ7N4tzyhUyNObKXmqxqVEqrkUWsKmVtkMBCQB+4p/x1VSCTPqRX3T+SySaEIXuiUebrL57wTx8hFb8WageN1BKzJjQqh/foDQYb5F8jX96RRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775559334; c=relaxed/simple;
	bh=Ced+O94b8Iik0RL3H90+4wVB0BUZJXdfG5amhdhH/EU=;
	h=To:Subject:From:Message-Id:Date; b=JtLz1n1PEBfPSw439ekC65fZcIvWdw+HJXslPvEJ+C6OXax3zV5Hfz97g8rvaeIPNWjNDZgWH6+dSVmTLX0NvkBDcsvHRkYJQ2tpHxbfH//SO6tFdOy6Ga6mw1datTLRz7yHrLK/umF9agZdB33ZmaeovBksETZtrzTVHyoWe20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V82GKTqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V82GKTqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8B5C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775559333;
	bh=Ced+O94b8Iik0RL3H90+4wVB0BUZJXdfG5amhdhH/EU=;
	h=To:Subject:From:Date:From;
	b=V82GKTqqBX07zCJDgYvLEfqNxkfjULjXDVQh3Ok9n63YdeT69pJhiQm9w9DytkROA
	 UaAznGmadzbZdx+KL269P82KIEolucqr0gQrhqACDuqSKFgcMEFdVK5JdtICfkaW8/
	 rwA6eyit42gKUaSlMRrJXiojJnA9E12vCd4qax3BaARvGADCf98Ts6FGYxXogAPGfZ
	 0aYjJ6W4j3cawPIyeuK6nq5V1dTyH8AJNGazF/vuTfk1H9eetf2JJYvlRb4CDpBpWI
	 3NHAxFJ7DMypVOCshdXoAL2pt0e4PoU6nz0dza8uD0FeZgZTQ9GJiR0uwU9t4C2ktK
	 LvvUaDyc3TG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8E3EDB7F6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555933369.6311.7650431655465085145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b218208591389588cc641b4730fedd8c59a8a9c2798e0967b142bc3ad10ca8a
Date: Tue, 07 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775559333
