Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA0D288DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752974994; cv=none; b=ow9xlgiyNkXzlrrtzy6D6HjGuGzAfxrjcLo0OH02JhYRu4LwO0ZPfBSUOwiMWb6V08522QY6+mfd9i551aITMZTKl/hlQqvTyx55wxt5a8m8De5+KOpUnQ/ZKTfFAS7RRc3m2dHt/kqSHr7eQOP6U4VHOKhoXb5T6g2J41+CCC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752974994; c=relaxed/simple;
	bh=N8FSlm8YX0xwrofE+4bIpEXQwwQmtB5cac0bDUxPiiM=;
	h=To:Subject:From:Message-Id:Date; b=sljge+H+EH/iNcMR63FZUu5D3RmpCZjFXrdpyidY3pGSsBFknC69UsSqrqh03tkAE7Y37xT5WBTkxrFq3hX2YYj6zkUG5S8UjT6xIW/XoZyA7xzgofGl/1YI47f5ltDVFO7SWyoqQ/8wXRXHKCmOBYFytgdrKt4VWkyQW+raDs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPGJXFRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPGJXFRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E46C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752974993;
	bh=N8FSlm8YX0xwrofE+4bIpEXQwwQmtB5cac0bDUxPiiM=;
	h=To:Subject:From:Date:From;
	b=TPGJXFRydAJrEMFFgCJDN8EfoOoIBV7faN8vrtsCCCmNo4ZaXIlCkR6WU576x/cfW
	 FjCMRB0aBXRHdGu6vmzoL/suznFe1VJin6eAtqPe7NFxFHSYmP9efBmsjHa06l5Umx
	 rbdFi+SdEzTCkZ/aNE/y+KzwQWkSnSna3ULowCkrMLOxSlqlEZBOcxMkKdJLroz1S2
	 5iETiD2S3dJa4B5q6jmHhuxLw9QvPvRxQa5zLY4fmNEVrWmsKqG3PO3pqUDjRoijAP
	 IQ9LBdS6LoUJ+YSUGX6Wlk1WN3rzchNiBfbMVccYOPD7WPq80sGy5ck2EJwu6tq8ed
	 ZDiL3cnAkcc7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975FEC83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297499358.5576.13752517212863240165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbc81ffb2b2007f3c49c1a1b9e55b3b2ac2dd99dab00a77d868a7b2f0701308
Date: Sun, 20 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752974993
