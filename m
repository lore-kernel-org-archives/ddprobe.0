Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5852779FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719064943; cv=none; b=k22TK7biWXWHK3k/+uZMATmcXoLngxC/ivsOjo03CiFIjm1+hFdXvSufrbl+06kqu8tFpkxaFVlsAR6UH6T7yy+em6JFd7EWBRb5+E2pdDf5aZV5upF9CzyMwTvyYsIq7w/F7jFHuDdaFk7phoEmt5oHQjzVzupOZuXJ8Vnr3+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719064943; c=relaxed/simple;
	bh=1uXDOelzLiJytsyu73+JeuBvlU699j3ok+gozoH6o1o=;
	h=To:Subject:From:Message-Id:Date; b=VFA/hcFO/MOKUjWARHVqcFxynL1ISISuM9q+vQQ4uRH/hvpus67kqBBfoTYrn7TumwzOv8gBtUgyb+NGRkEabVpBLvGdPrkWZxjuNbUKdmoVJyBh1oP7Pypzy9B/NmR/XyNuzadU8nJy1iVSu1f7z6LYPVtFXd8bkVxkVX2xoAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsJHfLFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsJHfLFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA0DC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719064942;
	bh=1uXDOelzLiJytsyu73+JeuBvlU699j3ok+gozoH6o1o=;
	h=To:Subject:From:Date:From;
	b=hsJHfLFYccQj1zmXeeKXIBzbC9gt8BTkT6TptFAkHOHkbMEBMJ1BZZpB88eyJWUFC
	 KMBqpn1ecT20zM8zZszeXtA9wMQRpFx65gyTN35dO/BbNilvR0nwRXGsyyw5RzdYqK
	 q/wN2HVKSuka19CKGGyIIN7XPBl0gORwVJ4suO44I6h94UW9fR+raOtb5gbMh50Qo9
	 +qQXdPDN+xTkADGh2JBOwsORnWYQtHD1874KWSwycXLCMH2HCxQg9hPFEQ+Gkg4//X
	 zvLs+4LftBXbtJDifzbj5zS5597u90iiTdMBOX6XfxQH53oA5dSRNdob6UA2XPcRJ4
	 AYlOznwmUwTzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2680C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906494278.11497.11358591655747059675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653b6d5f28dfb46bd257ec1b2bd6d46926eb0e0a43d4738ddb43d9e194f3c472
Date: Sat, 22 Jun 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719064942
