Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57D17C9E
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726764354; cv=none; b=TfVKfO/vc3q5N75Ufld3O+U/AV2YfAmkkSSmDRpaaX42n5EM8msIEg7ONhP5ezxi3hZ/BJFi1Oba2As5TTMelfvzwJ3w5MU46oN4yOOK+qMIakR5tLO7f6neTaWQSnVFCAvjC/zW9Arp/q2Rd9whn2NG6PZVnvJKZ+48oJY1Ee0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726764354; c=relaxed/simple;
	bh=jLhbscyStNJ01zXAMWY47fyuGZ2VFXflFEs5qjWCVoo=;
	h=To:Subject:From:Message-Id:Date; b=kWcQ5guF6GWzdS30kt3fXC7/kESsFflWp2VtZieNB5UWnksQhUb6i6qXPedBwdx4zdHBgd4o9jsI10Pp5TGNu6urbSSYp6S/q5QbYClSKq4zvDeL/4iAmDMLUDwSqEw5ClRYGCsO0w9u8wxnjIBI2UMjzCeIaMY9p1OJntqhOLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuTeO5rB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuTeO5rB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B99C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726764353;
	bh=jLhbscyStNJ01zXAMWY47fyuGZ2VFXflFEs5qjWCVoo=;
	h=To:Subject:From:Date:From;
	b=QuTeO5rBTS/GfIaIAnUgSHAELCUUn6CP0oll2kEkLxFefSENnD+bir0oVl6Tj7dIz
	 IXIQGRuGd8gR6Ir22KTB25evM7qGg3zAKhj8UvZKIAkyT7Z+MOJzNN8IvmMGXQa/s5
	 A+JUkddbjyq9n5BQQ3jA6Kii3DH074nGZoTx1ATgbKRa13Y1EgPZfWRIrexTyZB36i
	 xlTZlEUgWMAB0GCoQPMRWNlkzvkZmLKlIF5uJKbS6QKgsEgQusNJQrM+ktCV5pfMP+
	 Ur5VXmL8f6iDMc3o22nUinecGOJPeQXfez9aKYjaF0HoXfvUp2QCQjOP3Fny45DT4P
	 DI3VQ1KCZLQzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA87CF3963
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676435362.28727.15151815785669361139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23944186963fd76fd4629d5b81f6346a91998cd4ace3cf9ddba441a52dda974
Date: Thu, 19 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726764353
