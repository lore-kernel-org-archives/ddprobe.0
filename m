Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3297CC8CE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762627794; cv=none; b=TJAPDQopX0GYwFif9Wem3brDbaLBR0aEDd4Wu0IPqoTs2vr4S3Qp8RZgbDXH5qASHVCXDZSkp/vyZ2JvN+d0ReEIGkXO4oKH06+PuOoggC2CjA3ejyajEirKFBQK9erHd32U4oFFVUQHLeLvvurcih/poGvQAWI0ykmOqWT+ddw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762627794; c=relaxed/simple;
	bh=PN/ba/nddMlwmaVgVXHEaRtR8Z1UVjf67Yt4I1yWCaE=;
	h=To:Subject:From:Message-Id:Date; b=Oe5iK0Ljt6tgODU5P604cvyKxvL6QXVlOjZLqpSmeqZ4L+WcYaCkP/KWLZyzw9vWO7cRqxeQ4EqEEOb9Bkr6S71bYspO3meYZdZLCSuVpJLYS/8mH+gBC3wI/rIDUyGy6V+Hqydhf55ZD69FJclN17b8qsTOiRRLH0UKBDzN/3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8jnpLxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8jnpLxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C201EC16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762627793;
	bh=PN/ba/nddMlwmaVgVXHEaRtR8Z1UVjf67Yt4I1yWCaE=;
	h=To:Subject:From:Date:From;
	b=N8jnpLxqbjlID3MZtMH4jndIR1MwPMBh7575eOFJYUqmWj0yEA+USv8kf/mx2kJwt
	 8VaqKv8AprdC64XJAzEZvi2XmfjjREEDeQxJ+0GyKmzegn4xPF8qkYb+uX54y0QI6p
	 AEgv/vGFDRoN3Q4vzrrqi9nECsbBqotkyBKLWkhtvOUs8GE2eCmXgsyrMk3m9BvfIj
	 RZ0YoNp3Z3gVJ3Uj0VYRjHZowUt3aHFu/UUTnmCGFf81w+QecdH46cYhMGXbjagJjM
	 /d3WlNkRzjijkAXG5kPOAKYBhV1KjsLlM3+fJqiXzoGssLCvsEL7vteMq6xroAq1gW
	 60pEuS32fioww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F16CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262779359.30536.14991303485884003605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7737946d013d656dbd2347eed5fc466e7441ca0fd7935f898fae2bb1e16934
Date: Sat, 08 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762627793
