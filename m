Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6C7EEAA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751206794; cv=none; b=obcmTkJCABDEYUwJOpVw77rQwnKpcAejG4UuJ20C2Pzsri0c+5u0rXmTcybDfmEXj6xNhfHOg2UIU7UBKPUvTt2FL16BopNmMK2jleKc7qZDcPxQE/Xz+BzXTDsABWxtAZtZQ0pgh0bjIh4IPyBezF39494YTI3TIMN8sNpmBuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751206794; c=relaxed/simple;
	bh=JWooC7/NzF/PovueinVoK6EFvKABZi53/tNF1RJefPw=;
	h=To:Subject:From:Message-Id:Date; b=ae/8lrwelaT8ni4XWooiARKMaAAHh34OlkL9f0KEcUUbpr8Qg1MU7ZykPD64lR9U3h++9PZHKPX6nrze25nlGj/WwnPwHvzIXhxXJBF6ZWIJzM4LRQ4n0DNLCeHniHL8ffdWYm9/un4IO6O/tvKaqrt07Lqm1MOpCxWmh9FCO2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h00ygNaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h00ygNaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E49C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751206793;
	bh=JWooC7/NzF/PovueinVoK6EFvKABZi53/tNF1RJefPw=;
	h=To:Subject:From:Date:From;
	b=h00ygNaOqDaZcEwdV5aJTfwsUZnSOKPdcriZ04xj1UrHAFY5YbPaRhzfyGiJy0gii
	 auD0lvQHl5ReqmxrKhsaGm9az+l27VxzzMJaKqvJtOvXHtPjFuM2SEGKrUVuhOJHqp
	 TO8UGNo18q7k7eWkZZKj3hbXkyElFvnZoqUyFVIz/Zj2GSCoUt2/0qIaVe6/c48gM9
	 mbjfSgFIyMHuNtzmFAD13pAwXHXJQ6BDmgOxdB8pUiAhEL3RjbdMBMX9Ywc8gu4Rew
	 ib2kmHTj54l52z+TWgBWtyu7dtkJFID/P0urvAWPFFGh0z72DRmlZApo8bB40zfILm
	 +kiXholxWc4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFFC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120679357.18633.16025038979920828712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc37ac00470a1c33a90594c0e963f41da7d753d20d067a8019ed89a4207c88d7
Date: Sun, 29 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751206793
