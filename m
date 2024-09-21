Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408BB154425
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726914354; cv=none; b=Ulw9EZ8piSpAxGUoJYf7xr+BbO7m8OHXAWQWL5p2riSeNxACk43vq1Y5uvRwRK2c2tttILHWlBwzCGCHYvnBkfHvBXlJEZglfpzQPKlpag6PwAHTit4PT7uncMX+FeG6+i7/gAURldJ2EVA6hCmfnlNIlPtXpqoVbwHzj5144GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726914354; c=relaxed/simple;
	bh=b1BfgUkGy+vKRt/iUmolZFpDyjGO949HSi0nSFZLcdA=;
	h=To:Subject:From:Message-Id:Date; b=JXkcpR9l8wpWVuDQxLuCtX/Hb5Q6YHX5T2GZxaztngnWzwXBxMWDdqGhJ4V9AoJ2nkVw4cJz0Ay2T8x7i+kenI4piJrcaNrqiUclCb0ZO89mKT9wjeQXZ0qg1SNXYJiwRSIFrEcY6gEWxyu6PoHEkZ13Z8RLJ/p8o5h/g1v9cnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtvwrOmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtvwrOmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF2DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726914353;
	bh=b1BfgUkGy+vKRt/iUmolZFpDyjGO949HSi0nSFZLcdA=;
	h=To:Subject:From:Date:From;
	b=JtvwrOmkDRYoTDZ0fpURZvJmesK8vpjWnlaSnTTEjazBVw2V1o3mRnNTm1xTsQCTt
	 gjEGowDwBIms/FM0B7IBcbTNRF1Kt9rW3qf3rNrEMSSdnhlOTcP3Ez+JqrOZkLmWIJ
	 v3PgqxDRwye7gF1zv0EBVspJuGu8pSZQFtTt3jVrH3KQTqgQpliKly4A6vPpdNEI46
	 we2t8XTaSLXNo5ZG9VsObyqRPDcWCJibG/aoKUZb6IVyKekuWqxmr0zJOelwCQQvzE
	 Y8JUWfzKkkITSwhBvX8Cy0d1Hwp6/CZ9itctHOaFCk17gR+4rcrtgGWRgnKw90U2Vw
	 kBHKaE1GP5hqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94588CF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691435358.4088.7647955533131566201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0961cf622e9a10285dff7c679d59c50bc9b7826415414afa628bd34e1ae56f
Date: Sat, 21 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726914353
