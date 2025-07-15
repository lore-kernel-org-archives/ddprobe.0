Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295EF185B67
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752539994; cv=none; b=ofejpztI+ZVAkB+ui2wtnpOBt4ZSJ/c0KEazQ2bWLP2YjU9UPnePNMjd6QrfAFFgH8L9tzFbX9KJ4Ik8H1w7PUS9A9w9k++xG8ECKSTuFqP46Z+xQk9HidIUAieDo6cHsviAtrhgT2JoN5lZrUNrhY7BXrTDvezB4nLa5QFFydg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752539994; c=relaxed/simple;
	bh=YJaw6C2EiO971YuEq77fh8cVq6eaL0Nr1Yz2gdDVLlc=;
	h=To:Subject:From:Message-Id:Date; b=UX6KEwVtkevIVA3Vo/5pxbikL+fxiKODUMEhZzN55orIGbPi6MQrF3PFFtqUt1PUplYG7qsoVgYm8xVdlgq/yIaV3LgwwileJfwQ547nKqRl3b2druHrMqQZVcoPQ2kdIKqAaI8VJpeakpWhKYBodWXANqYIxqYFKt0DGuQ+5o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPCQ4jmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPCQ4jmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5B4C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752539993;
	bh=YJaw6C2EiO971YuEq77fh8cVq6eaL0Nr1Yz2gdDVLlc=;
	h=To:Subject:From:Date:From;
	b=rPCQ4jmLdP9refeBMOAkUDT0ecFdQ/wXg00NFL62SN6N5W4KevlcieqxxLM6D4I6F
	 POGt6s/497aZJgZAHHiPx8ILNFvtST5IaloRzpqiN/PBVW+6K0z0z4gD/DbZT6pbwf
	 Mg1y5kPdqS7JbS2TTx+1jbvvipibGKa60QG8QvLg9r+or6bincLyMIPJ7vmmIxIu6B
	 9ZnXrVjXIdcaHPPfllcuMHyo2tF3QoEUatmkvTQwdFDY4mEyKxAkvQdTKnkSElv8/S
	 uFMIXnm6HfosVRDyKWqZ/EulVcwJnh62p1whu/65HRC4gnyBa+OfnUAEyX3A2ZCCid
	 CclT1jpfBVaiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBC8C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253999362.21085.45321764931250879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f110801e78b3d3e656082a0078ec87c1a90b268a90c37bc4fd6c307cd03ba354
Date: Tue, 15 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752539993
