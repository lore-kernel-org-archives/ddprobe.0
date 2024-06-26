Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D69C171AD
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719384203; cv=none; b=IzqCFYt8Bg88vZDCSmtPHa0C9I6UFc7gKEp82DgvmzyOXBvZVlGWxTzSnmCXLZB+oLNoUfY47M5IMRGckH9DJNupTGmfQPKRTYgheqo3lL/6yQqwYmCWgUJCsBuvNMQnfl6xX4ecThM9B2docox/XGzeJFh3HwWwH2Qy3y4TEGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719384203; c=relaxed/simple;
	bh=2/ERL8SLMR7d92lPpos20640FLAHbF/tsuccNOy0T8A=;
	h=To:Subject:From:Message-Id:Date; b=YOPycrjZRL/D2zjzpf5wtJqmPGtUkVOR7QUjLQcA24PnOzoucS+QEeB852NW9ZTBrV8p5dt6tGxbH6Q2xPINzQA25aL9zxy/0XL0b0VLZDtxYdr8GSnNZkaOOgILtzwgCnArVNna1tWTJd6Lx61kD6iZSJhTHV1zNDnZFLjwR1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptBRBgIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptBRBgIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE222C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719384202;
	bh=2/ERL8SLMR7d92lPpos20640FLAHbF/tsuccNOy0T8A=;
	h=To:Subject:From:Date:From;
	b=ptBRBgIxvYRGlUSNkFr9KUsQYA7oYI1Etjn4dLFgyTJdWO1Q//ws7HOxDYwdRt9iH
	 uExxBvRazS9VAhJFzDRxHMWPMKERnFy8PxhwyCSw5ugld5AExjooGFyrWbg2i/myjQ
	 8bQxH3fmar4VeQVE1jCvDXvOZtujUwHJlSOdkI2Ga1cXjRS7iEbuJIF4WnnieHcGrB
	 6Z6r5yQRhg/+ZK4QSk1YpjKPM7uXN/8hapAGAkhFXz8dR6BpvZyYtMtzYnl/6iDFIP
	 ebunFZ9K6NzryrGfJ+rr7FkbYjEzNqOR158Dn+juW+3R2kXXDkZTgQ6gFMU2EwjutL
	 EDphwY2FPbD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A2BC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938420279.12460.9068527173945762156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558bfd83d06b34e0459af8b8ae8e3d20700201551dca6dab1d7b4a591cd5403d
Date: Wed, 26 Jun 2024 06:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719384202
