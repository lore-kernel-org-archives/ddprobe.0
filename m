Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AA4207A20
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760125794; cv=none; b=IMvaA6nhOTYyTlTFZI+QS0kBNI3k9a2Kuc/3nDGep/nwU+CfgsmgK7jaq4u7OSYiVTOn0TweyJtW33sBIwpCbvd3i3aTZDNT4lJAoO1l3RX/iQB0zB1iBlGqwSDMpCTPonCrs9Q6HwFxW6r/vMIoTE6nhSIC8ezhTehVCOUhLIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760125794; c=relaxed/simple;
	bh=pwYFvHEPG+jjmXbkEZ2uRITXPxk9dMbO1WAf6ihjjBg=;
	h=To:Subject:From:Message-Id:Date; b=Wdw1ReaYv6LrP4ehy9TwNmemU+JF1ei2LHWQHLHF3Dz0SPFi0EeepHeoAYhBNNFiITgq2yQel3NOofQtRBykjXYafqSXTiNmwBR1yWspsJ5RmumoyJeLBZ1O96sj0Mykc03mC6E99K3f4r/90GXttuJo+a5BqCpcmF5Pbymdzlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgU0oDu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgU0oDu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3453C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760125793;
	bh=pwYFvHEPG+jjmXbkEZ2uRITXPxk9dMbO1WAf6ihjjBg=;
	h=To:Subject:From:Date:From;
	b=mgU0oDu1T/boxDzzmGv5Z1OpVnio7LSU5PgDQE1g0Phfs8O6IbugbLI1mdj05DJ2C
	 FoeAKRD3b8DqwZqFvO9E/bb/vzlCrqvSamegBfG26qkhGv5Hi0xm+0oEQ5Q9PGTf89
	 He5DGBumnoBK3KRA7bKQs8jun/3yK1cmHNmMUNiDnzEIqYTjm4xGBDCI6XILc39V/u
	 Z17U1F/WbeRAzHFEZtnbF2YCm8HmjZULLu0NmdyUp9hsyD0MnG8Qx8bxJv8OdOqhjF
	 gXELSSLoL7qemk/5nZuHXEhV/bYo0Ar1KgpqrCwW4e8WurdEFXwZHLqigGE0iFn4Vf
	 kQ0xJfGTO8DMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BFFCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012579357.19528.12731889179584175181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b1606d0fcf19a352e7327354665a2687b4bbc2130fb9db8c87734d5a334b47
Date: Fri, 10 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760125793
