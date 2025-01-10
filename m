Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3092320E6F6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736514954; cv=none; b=trJ4p3PYQ39tMsLV12wO/XBw7j45p8/gKTNadKHI5qa36JxWvueE3b4rIfz7XecL8Ah88wpcSgOBJM4aqtXQs5VOgGseDeqfmtkOXmM8HBhSyV5m8mc+CM46RXFqRt9KjLUpT5tBTd2PPrTWkUsf5vrlfpb7wquczodiwpgffbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736514954; c=relaxed/simple;
	bh=Hz6XtnLZWRdZFGF27DfpALtAz7Ne4oElp51B4DIWt7E=;
	h=To:Subject:From:Message-Id:Date; b=qpf4LcAvdV/YD5swFAnDps9kT8IkA5ja5V00O3hkHYyCCIBH+UuhBCYTbz3gPqNJ6hiVV3Bbmz6x7C7iaCWpvuIQYpCqXaGMUWEZSIDIyxLrCMUBzjUoMBLD11wSbuTnSiCPmmVXjV1nwLcACnF0TyaQbpuYJ5E6lY4EjkAqcFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZz/Lgda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZz/Lgda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF378C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736514953;
	bh=Hz6XtnLZWRdZFGF27DfpALtAz7Ne4oElp51B4DIWt7E=;
	h=To:Subject:From:Date:From;
	b=lZz/LgdaZI2F3fj/rflOzmjiP46OLvtOykZYCjyLHIt0GQV9IXJ5j1KeCSMjeFHEA
	 W6BKu6k80rI4Tcwv5gMxgTj1IhhaUjOpT+MJXYbZtSKfrUhPYUoHpjWBQUerlBy/0o
	 MzbFdkI6flbaaoBjo9G1gmGp1iele5dthCaC9KKe8tUEOofMEvbi0AlNxOgIl4VBnH
	 zwpLhxtKDG15zxU1qqozgfKyRqBhF7teJ5xEILBuFJZV9/z20EYXw0133LmMSZwT9U
	 lMOOZmuJKq5+No6/dPt4Rv96sXmSHEwHTbyXo/dHVb5wP2DyGVk2wkHvDGDkOSbXYf
	 /1GlJJUklBeYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEA9E7719D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651495362.15094.443275550780233353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e69a166bf5b90d152ae6451546d3e10c78926e01cad2d10244c0258ccc14a7a
Date: Fri, 10 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736514953
