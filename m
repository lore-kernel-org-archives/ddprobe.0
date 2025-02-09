Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED671487FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739093154; cv=none; b=Dvk7W4i7b+MuACbiggRexbQY1N0R0gVlcxeEWgoyEysOVTTy0ajJpXEzgyYuXyXjmrdZdwaJj+GTg70tqXstBLZl+xblWp2SEw320odgqKz83+MWiBDrpew1A5YFzNndtY/yHuiVdnLKgc/McU7o9GrM3/nx9TiQDsWt17sxPB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739093154; c=relaxed/simple;
	bh=K/UAZAAR6QqmsmCh9XX4F+b94NyMnaWzxlAlBTZGJS8=;
	h=To:Subject:From:Message-Id:Date; b=HfP9ubfQS1mOlVedcMVSlz6SfcJz+0qPyC9uNGPwEYwG5ofjmYCNdW7xTDgLapOJzImH0jPs1Cb9n+9sCQtzgeOPVH5qzRumDSsXxpI4FKbcJCVgMaAZ/RXhdGOynQSGoGz+hplDul83Mln1pWzd6Ij8wrMAqHtV+9crZ6R+GTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhwK+9ud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhwK+9ud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B906BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739093153;
	bh=K/UAZAAR6QqmsmCh9XX4F+b94NyMnaWzxlAlBTZGJS8=;
	h=To:Subject:From:Date:From;
	b=WhwK+9udQcfhSw/SzuJdvuLB7wbhUdhiA5j+I7XmUDukUm7jvjTxvbbVDbEetyZzt
	 ZQjog+J2zB4lSgZDJqe3BOOZlvJOU3ysJNb/t52AcXI3CXfocHPccVNGfgzfZKau47
	 iC2eC2+FCHJ2Fchff23da8FuIvZF9KVyuJPTmhJ2ykKtSGHmfeIvN04+rXCw1enZHw
	 MpNKISdk4U35a2bKap9T3DyVDvIhX/W1yubAJz1s3JCC4sjsEkoVhRfJLD8Ja2iSz3
	 b/ZncGbUVrKwVXyC88JuRh1+/6KgG/4sqaxvhPvb35TRsgZn4Eegut7vlfCs46rynY
	 CutnQeeDsEjFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6ECFC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909315364.31441.4306737664144080530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0b6a398444552d2f26e2dcebeb91f487e5e254fda5aabd1024a148897e2522
Date: Sun, 09 Feb 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739093153
