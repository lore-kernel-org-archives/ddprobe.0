Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5332B1E4A9
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739117154; cv=none; b=LyxWakid3bYQ7sdiJm8kXppbCwL7HYV05ZMPOdYeyy7FWEN23AS68td1EaPbIcLCv+iHkAlbNk+GzwEeuMACffeXEqNL0Pk2tjHbAxx0LAVe2eyBQzFgnF2ILLV2vX7Y/ABWkA7z4uNRTQqsrrsuXa+kfo17yuqf9xW5RBIS14w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739117154; c=relaxed/simple;
	bh=vV0qCIwA1ryOqnOfi0NsSLR9VE58YcjXkzE8l2HRe9k=;
	h=To:Subject:From:Message-Id:Date; b=tsbWE8TpE0eVyRkF/q5Jvk4rc336gLdIrpdHRcaTJuFAMlUFKjI/esdGZESUEa7O/o0J72wFAgVsbhukhspuJ+vbQ4JQRnrMXoH7X5CWfNZxB7ZEeNQFCLvv2y8K08LHp9dUv9t29SmEB0IbNHqMHoBCQpk1lrsKVKIm7yDV79g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTPhVtU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTPhVtU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B070CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739117153;
	bh=vV0qCIwA1ryOqnOfi0NsSLR9VE58YcjXkzE8l2HRe9k=;
	h=To:Subject:From:Date:From;
	b=BTPhVtU1jaWFXOWwWzMzig1ZUthq1Q2r1vn5ALDrID/hgZTWXU8pzG46ims2/cN+r
	 hvIuOfhop36Fb6n3ew0jW6iVillLMZirLeiBsav5OMHfnFN3/4Cpd9oPlzijjfYt/G
	 +YvXklhGX6srLS1t4HBaD8Lfyby531cdk861/U/MbH+Di+CaBjW6XeqKK6gXZ0a5Ki
	 9d2Uy81LNnM0TGo1U3/YCOmysqslLOeUyJPBITi0BlWZQBEFEiX52steP2zmmPE7CW
	 oViXv908S+gPcZ5pZjK9Qfvsto1l6xfFBWakl4Rkajl6tVNGdylvcowj2pkVPv7wj6
	 Osxj7T/BQ7HPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BA3C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173911715361.6068.7469704043872675132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7eee4ad8ef3920551c510c5d7443827462aa5d5738fc1643f2b65761e18116
Date: Sun, 09 Feb 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739117153
