Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F512F23
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720842563; cv=none; b=iULh3cIRnO8+Jp9+GCT7z3LwGgxfH1X4zfp8wvkKBeiO09Gh/AvrqAuAyA8A9xNeMDeEPXthXLJsI8FT8IPMU0T0CGRb/laqnVQpKgSRQFctONHWUt4+aj7h88hJoNAWKWxvriJGMpGGsRA2uNJK4iBaJ7BtW1YiflLqZJ9wZ7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720842563; c=relaxed/simple;
	bh=99jJ25sNBgkBVTAotNk4R8YUwqWOGC3r8s97sMjHgqg=;
	h=To:Subject:From:Message-Id:Date; b=rxu4V4DL8NPWRDDPaa3dF4v2wcnZ0kojj61q8YnV1vNeJbbDW9h6sAo4GZMYk+Wmg9AJdLJr/CTWjkR9SzWmEqxo0R3JkTtw+4wPS8OUDJ96hwK5MUP5YmasJj2xf70PpdL2xHjnheZqQ90T2J74JVmPCc4Ae6L3DIabmsDi/VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8H7bF3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8H7bF3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E0FC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720842562;
	bh=99jJ25sNBgkBVTAotNk4R8YUwqWOGC3r8s97sMjHgqg=;
	h=To:Subject:From:Date:From;
	b=t8H7bF3JSUF08YCsb6y/AzLSS2KWUF0QlzP+HhU0vceO+GHCcAP54iWxemAR522i9
	 d2B+3jJ1G3SzgRGEeW3rHpDkPlL7r8Sh6SdnA9EW+cd8OmS07PfCdYcLgk8/Xdrmor
	 45IC0vdJ4WCrDITnMC0KcJkAC3SmrSuvynocnXh0/ACfXHOQ6goNywgQ76cSRgyM+p
	 K7x3NtByfUxexKgGUR/ykEBKyc/JPZiMwLI/RF7dEb+/5VAN37ZY4CYDdQ4THr42Vh
	 OrZOqDRksiPeeUcUyBBdhWk1S4uxaQVKxAe8GjXhLEl3gMvQ6aPa/z8QqpGDW8eE2D
	 bxtYRyCNw25MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A58C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084256277.31413.10086606320656018299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65261f77b71e4a50cae37c47411ff4421c5c90dd8fbe4d2eab8e7d5603f094d
Date: Sat, 13 Jul 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720842562
