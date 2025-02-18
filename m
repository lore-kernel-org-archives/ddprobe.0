Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B58E2343D4
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739873334; cv=none; b=paUCiYMa0vwPmcaRlL/vlEBkoQkXuJDgvC+EFA129gBE6o9cI4CPMxuLhh7pMeHuj0Vs15tX3KVwnCkHmh7fTTUBO/Hckp7wDwRgNuIQGtGz30AA4QJRcRzai7o7r7ZBiZBGZtEoueaLfpZX9fFbO9lEnczEWYKv7CHX63t9gyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739873334; c=relaxed/simple;
	bh=gsUgdOt4ikmuUz7YCHYXI1eXENoVaxDRWGAjM1I6fAg=;
	h=To:Subject:From:Message-Id:Date; b=roJDlXEJFKu493L0Wbr1BrSlPxyC+22J0GCpagjJX/rMD3wJPo9UR6eJr/uF66SLdXxF7uOlCp6e2smRVqa4u/u6FrqvI3Z2pdDqjCEvCgTB5M2a7yohdE7sbX0/Niy1PJ6jp41wCn2voxxJJs0QcUVio7qUiaWj2LkCgHKaYFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGhI7eJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGhI7eJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4274C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739873333;
	bh=gsUgdOt4ikmuUz7YCHYXI1eXENoVaxDRWGAjM1I6fAg=;
	h=To:Subject:From:Date:From;
	b=PGhI7eJKCWj6scwpn8lUeXrNWLRd0D6Mgv9ChkkJ3OP1hqdDHMleZec94CwZ4LfjH
	 eKVVl9mtbI0ItBbNDbgf6VvNXBuEbjY1mbJY+ZOdAhPXQlhftoB5z+6XWP949GnWZx
	 4ClOVTjSQtKhXQ3n2ez3rVkwx2lQNVmqQ1340Dqj/IN2F9UFnJy5ilnvgTlWiXvscP
	 IIyjePMrnCC4WkfB9Wlcpqwk1SD4GlJm+WMWsl1q2Ovq1MS4ErfXLNoLMYicJIDYw/
	 KiR3GaZMbg/QMkphFGXM0u2OX1Ziw+qnNZhYJm92laJT9hC5yvNW8qvtWDr5sq+Nwk
	 XGhFAkwLc0IRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C84C02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173987333361.27367.12825657149303531461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862d1f24ef91c3846d2783578b9feee13fa94ece555970bf5d0aacee39e6d390
Date: Tue, 18 Feb 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739873333
