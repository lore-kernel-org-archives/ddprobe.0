Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7BBDDC1
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713645023; cv=none; b=gyXFZ8TruyWzyk7SHajXP5odaLRprLxJdl2xN4Wv3GUN+pRu2qr8DTvpQWsQDgYfhLpeWz8csrv7ZCAj/uIsQCLhEjEpEltFEJ5SOrNKwpdOqxnH55jA1rnHLS4yBabuOoz8z3Depr/vMKGq4+I0GM+OVngdPQcSEzD/zIQe4YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713645023; c=relaxed/simple;
	bh=aO631LMYpM3BRlbLDQ4tQOmQY4qDx9g4obl9OdlraAM=;
	h=To:Subject:From:Message-Id:Date; b=roUFYAGNGvEPLvZoFFS33WaShzpWk9/MrC5Cs4pmoCkFtKoJWp10QsW1n7+kGg19/OceSL9hlyqrOB/vpIjIXqBfkRUygi3bUT7lgW7i1A2Agm8QnX+YU/MYG4fkPpyPFJckAJTFB1gtJ0dokvVlT9bDoYiNQdHdaP0EiJujkR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FddbxTZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FddbxTZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F3DC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713645022;
	bh=aO631LMYpM3BRlbLDQ4tQOmQY4qDx9g4obl9OdlraAM=;
	h=To:Subject:From:Date:From;
	b=FddbxTZQXyoA508LemKM0DmhAa9TvS8uVo7hqAjFYr4d/2i8MEnoSWIBbOp9lAfu8
	 QVUJXnh4NGDi53jFVrf2azkv+CSGHjjN6fqBbUxuJBchm6piPFfYD69l6YBUZ08RB5
	 1tzVKBqqrVADLoDgtJa7TIY7f8DwVxRjALL26/zxxRZRaMEBxtEaNdeB3iukbN/Cuw
	 UipxnSfT0reqkSMbEt4Dfp54QhWeztsMp2ZXFUGzFsZraXRxgUDnddKtyRhyUrATQH
	 f2YsT+kGP2kiQKKjbkRwNOCBk4PyHztXUl2i52pInVumMccRswM4umZPprCClz+XWe
	 v+DyHwExyXgPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE3CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364502280.20401.3372054303118825010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0aaf67949d018904b87f38fac45287f7f1cdcffef7fa9d34eb4b581e9dd29da
Date: Sat, 20 Apr 2024 20:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713645022
