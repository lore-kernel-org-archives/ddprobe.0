Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6911039E9D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792367434; cv=none; b=kXPlALAu40ZYyBwx4BuKxFzDb3nReHXx+J2py7arFDrO7aj3PKbUG/euhPSqdSvOvI2ZxXemBKL/3Lj+gYE1a9k+WX8vL+yXBxo2NvyGr6cr5lBUjijk60M+UcfSoXBnXAzf8HZLPVOPcHFDBV/6+AuYxOXWt47j5i5pma8i0+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792367434; c=relaxed/simple;
	bh=o5Rcz8aHbIw4F7pYUUjtmmGYINGjQiA9d5MXnT38eUI=;
	h=To:Subject:From:Message-Id:Date; b=h1izBSAy+tDQl1cHqu0ttUxvfoQe+5AnBzHbRF2dkzu/n2Pp4Tfn7cqRGSsipiimXF/ti853SxoZAAYZ/ZxVH31W00UJl1yJMWOdbPDaMk2ilqxyzsxglRmF593MxpPLx9oUrlkmECz327sbhYVadYrhsigMCDYqvO+B742ZJGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWD792gV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWD792gV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6304C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792367433;
	bh=o5Rcz8aHbIw4F7pYUUjtmmGYINGjQiA9d5MXnT38eUI=;
	h=To:Subject:From:Date:From;
	b=CWD792gVoCm6jocMB5VetQF1jnD4sWrP9y+ONjGsLjoUVxOEdl/E3YchQkppfK6Eg
	 0zAHfLfIG+alaYW89n2EtQ8HKrfB/9BlDPbPbn67f+hqG2DE6vbIQr4OYw/2vhhpR/
	 x+3my/GBkamlUPHdEbzn6TRBhi1VvKon/axqSRF+6XWr/3bGtbYYY91hKLWze5ifYI
	 pj2rPlMdolYnHvQiBv3wOvrE9/8H87GY2fSh8HLpL5ws2SrRluPyLwHoxgNwMnPMlN
	 R9GXu870urokq3hYvPPeZ9zMPdad9YsuOT8N4uLsz6VL35Wv5FJeGwpQH+5t2Tj02b
	 +l2rzj3lTQfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC858CCF2D4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236743374.11755.13249291257096480542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8930dbfb132368c9add85266b6ec40dd8ff35da0eba9e0ef4a2e26a67ce6b5
Date: Sun, 18 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792367433
