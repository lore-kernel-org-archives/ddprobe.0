Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA23C13C
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715233343; cv=none; b=FipyzQL058paRTB8mqDw7o+ZjXv5cJ20nYKFBcEUi2J7EyjsGSI4Xq6YawlqGFoo+W0Hfd9jjnCI3MmGkI/5uFDsxbhMhNK4KQOIDWDiyaz6tLfwCQilyfODnQHy1RH4m6/wankm7XJLI+v+SSviMPvjmF9ZrEFPqVJhKby4DLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715233343; c=relaxed/simple;
	bh=JVZqgKBNrK3R8BZ12jIJR4dWPk6pRjNf7XDwybrT8/E=;
	h=To:Subject:From:Message-Id:Date; b=gzAkrJ+LjZswygonASfvRLIY5/vVXxs9rmPLI4pmXtNfXa07pLlpakCn++bqsy2j3ro904z+5N/z6BwV65X7USXaSayZQj7py9yT9PAKZ0Xpug5PUVioNCMq69nnTgDY9v2/kAt4sFxe9DzfL+3VHoruIO0n/nAYHGDvABTM4ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMxgHOKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMxgHOKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD111C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715233342;
	bh=JVZqgKBNrK3R8BZ12jIJR4dWPk6pRjNf7XDwybrT8/E=;
	h=To:Subject:From:Date:From;
	b=QMxgHOKcoUpBd4w/37YhSrz6Feup1F7/jMdMzt+7aHMTUf49AQbvvBt3fTK81o2CC
	 Z0SOgoKp+BnepFnJJNz71qayL0jLybGqK6t7dITFThHSnwTFgnpuKlQ0K7sD2flTFI
	 S5UgmZDpgOPJ06d9u3lyYKAELXVokYZvK9aX3PPHCXqYOUVpS5MvmIDrJAfoh/xJBk
	 5/nu+jrAM+PRAnHKxe1YNDG/dK6qN7NfvZWIVBaN4A5xUvRCbog0C22csqsTL13pol
	 vdGelVG5Ir9eIb6+BfwHFC5N7gHE6ZTMxVeRezmEO4yfgWADdPS8W4Ax75NOLaj0F+
	 jNZMr2BG7AelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69CCC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171523334280.19344.5899770139138402896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0169eea48f03d44ef0e27d069e7482c6278d5ad43bdee1a99498e1bc15348451
Date: Thu, 09 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715233342
