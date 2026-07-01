Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE93C7263B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782872314; cv=none; b=pIaY4qxjU8VSAeO0qGVUToOrLgrFrzHt+MefQzRv9JMg9QGuYcBfOpAEFEW6tqok3GVWiCwwpUCp90fmEZiIS60Hl4wjGBpqH7lFQ3Ixzru8IiIcKPggzwLcZjvCmITMnStI4SeExNiPLR91+MqM8ivuex1oyHzqxKACcB/SP2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782872314; c=relaxed/simple;
	bh=wa1Nk1IDgHxx4Zkgl7TcOgaxRcbjfiNQHHtwamfZMJk=;
	h=To:Subject:From:Message-Id:Date; b=WDrWgQZWBgYjs3Bo1JNbEXJo0UsB2qunyaglWpXop8ytq/UngEv8inGT24nplQcfdoGwG9cqX2mPzlJHx5A3IdZKqgLP2m7EAM8U5aHgbwSBB4jubPDctPU4LA6+Z8CaTIrxP7xeRIf7CZp3pduEh25XzNaIPd/PetTn4Suh9fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ap2fj2F7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ap2fj2F7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC538C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782872313;
	bh=wa1Nk1IDgHxx4Zkgl7TcOgaxRcbjfiNQHHtwamfZMJk=;
	h=To:Subject:From:Date:From;
	b=Ap2fj2F7gpLIJ6vi4D/sfVjBqp6MJKg7jQs03rHosy0fEdEWTHcnYjhpmI0PepgAB
	 zP+ZwsQ2fkJuQB7b5Pqfj6UDuwb7bxDTP4/vy5Lobq/biYk8uSA1c6uyqzgcx3gdo0
	 5WhfMijYvCBnLPjEtAZn2+spjQuMpPhy1WB1cM3Obbb/OpHERCTJCdacmAGqcL4q4+
	 uOqiZ5bB807lDvBWKZwn/sgDU1hGsgkSQTk6wH6EfAEmTJeDx8m6xdfVNKwDxeCuZG
	 rr9bO238Ud1SUniSi/FvHZeklXgn7gRe+mkWuwG4Ny+VFhnAWyeAAFjrBNLadvdgTa
	 6DU7h4nmlwA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C9C43327
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287231368.23016.3274260306268278876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e082826197ddcf84ae396a89aaebc81645b173d1db80a3235e97da2605d7edf
Date: Wed, 01 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782872313
