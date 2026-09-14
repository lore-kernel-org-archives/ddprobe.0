Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BA9483BD0
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789404035; cv=none; b=J5xKzGyKHFJMeMdJC65wOKtGb9gudfE92ARmtBWUXupS3PqASeKPeMI3EwckheaZIFHZmeOvBjd5jTN7iCadbozYD2Q7UJWlsm3UxUotVDwwanUe648HndVGaXptegWFtDZSXjQG+D4vOHvplX0NCHliCToa/dPX6yMlJ06vFCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789404035; c=relaxed/simple;
	bh=YCCqFLwis/ylG8Za4L8GcUmng1XzkaxLZXp8SEHS0CY=;
	h=To:Subject:From:Message-Id:Date; b=XIgWR53gxewvXxDii0+ZIoOKLS1uEMlotNIMzY09c1T76/2q9C9f0rlZgzUHZcDLj2m2o0BRe0EppNrArHPizXuJzqVgUH0wWAKVdZUpp70VoYm3Phm7/um2U79Mx4T1mRrjPfnHP8vqxR1dZTTiOQswb9CgN6HS0eYzO1mbdHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzSY6boo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzSY6boo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C10C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789404033;
	bh=YCCqFLwis/ylG8Za4L8GcUmng1XzkaxLZXp8SEHS0CY=;
	h=To:Subject:From:Date:From;
	b=WzSY6boo4MKPUO7fd4DfEwFZucPutudV55XtPImPgmFbR9wgP89NDeJlbrAQpE5kB
	 azqj1QGm7/z0ULu53mWTfmIZpFjPixkNR0+5hQgxhkCbIdkOZ0yRBOh1UcEY0+5HS+
	 ITUFujxC+OuAuqI3qLV+alTGarPiHkAYe6Gu9WoWqrbWdPMVWkcy5XDBfg8+rU9AH/
	 uKofTVrJ8SiXBvWY5hw2DSWAQnvI4gDySuH4bnySSk0TAOJyEltKGirqvvDp6la0iL
	 GXoHruNFOfREQFkdH08I8AKpEydyABAtoMD+i2QA3MDptELyD9F9i046BptN0ZBu3+
	 DfGt+AyOY5+zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACD8C88E6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940403374.19391.3208852457212169992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7774a6251812b1314e2cc97e3f4e9d2fb827fec2d3e912833550d40fc26eb95a
Date: Mon, 14 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789404033
