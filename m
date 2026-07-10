Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7A81E515
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783651114; cv=none; b=kd7VP0/6ORp74JXZvQcF42rFomx4uMwfYWJPP7WDv6c/NRYFIwPRE4TqHm+Y6hA2WlxAcWNuEGeW3igXDOE14+reb9cAj07BzrCoDxVR1qgMCEXLc5AS22pATNZxlI1UMxf0smNFGjlWwlQjJhn4bdvoqhGxdR5oVf38+UNsrb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783651114; c=relaxed/simple;
	bh=ySKK2KUfacMJjemHaSR8KScO23GaDxjVP01+8dDJMG8=;
	h=To:Subject:From:Message-Id:Date; b=enAL4jjFc3gOGgxmFhG4EWWKaUNUGRVMTZs/lewC9vEVZTugGoDXS1kB4BPfqw6+cZJLSXk6zzK/O4VJywwHNSPxS/4KUZaoIUuXdM16qGGWvFlTElIU9NK4ZhtapSMg1jae2VV/yJQK9jkUBn64KCzMhhd0S2b/e51EoPeY5NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGE8MHtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGE8MHtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C35C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783651113;
	bh=ySKK2KUfacMJjemHaSR8KScO23GaDxjVP01+8dDJMG8=;
	h=To:Subject:From:Date:From;
	b=tGE8MHtmamuZj+cE6Be/Kny+cDW6c5SdAiunDxAB2uxOPqtwm/yzIxNCIoLlxPuL3
	 W0rDYlNqPCb94XHouuRcr8D4as5z1s6w0jXrAhdj4BWhvMnXjBXJ3CHKbjstX2W3R0
	 rE+rGrC9o1zRTlbxtCgyvzra2RArvso8d1eDey0WeRK/r7106ZViGRmS1i/j7bgchT
	 SvnuRTjhVqlWynbVhx8J2asGU/qM+w+TjaZZ5hqPS5VJhk0ogBFw/8Wh8oJFnQvI9y
	 F5AAiw+H5QUjm706nDlIPOJ5XfhNprpGVvbG7CxC3ih8QDnPQFIUMXJFm9iVDTBcSX
	 L1iTsS+QfOogQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABADFC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365111368.24011.4214743606235518667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a4af840d0195d056a44d27b19717556b4a72a41efc6119cad7206e9b331798
Date: Fri, 10 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783651113
