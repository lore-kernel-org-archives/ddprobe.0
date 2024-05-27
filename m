Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662C517E8FB
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716830663; cv=none; b=cUlTAgkAEte8HWB7XAY6aAQrDlSxjI5mvLOwiyI/WTqNmg8uYkZ7+8t3llPeeNoMT9ZNRdsWoVEy++OMrnSHkMy7yCGi0YWKifAK0PTqHAcukMcdZo4F/fcnJQ/0NeCvTPGbMIe6IqFpFdUrrB3KLky9V0/XfuULdVIvPbnm/0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716830663; c=relaxed/simple;
	bh=UKIjWyqxXPDHnGK9KY0PIvCdNo2Bz6dQPOBr/xIUhNc=;
	h=To:Subject:From:Message-Id:Date; b=RpL3zT9CZFwpJmDY5V+wrfaIZ+6UCuHk7PiORbea0vpSSg5BaEZmQorkJLMWgHsXIyq0ManuAwlpaAjW9+lV82yznk0WAWpx6PF+z3t4ORMolNsTUTFQIjoBZd8OhTebjsZPoNGiuEKCaJbEsjGX2+q4JwB/QqiS4xSbn8g3720=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5kNAbRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5kNAbRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D645AC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716830662;
	bh=UKIjWyqxXPDHnGK9KY0PIvCdNo2Bz6dQPOBr/xIUhNc=;
	h=To:Subject:From:Date:From;
	b=a5kNAbRMoWOFVT6e+lNdby6a+O3K+YBMWbupoYLoA23/gPFVXTaTyn7pQSI3WD+tr
	 lDGp1+g4+4u2f1CfHt4fcUqkspVOl89EQth6cdaCzV5JaLvgnKHTLUlC/cl8ovuiGE
	 cGSJvLC1EdChw5jSNnIxSxLzSVO9ULUc1t8UOY9+wBjDuWqHr1eiZnt/Pr8gJBptNv
	 ktGks94luI+NDdzNO/1JjTiT5m/jVUQE8E/7s59dBwpgJHN/AVZWwKhe68LprSJiXE
	 /pFzteFJdjaTkMZoMHsjUOch3T3Ow8+f94kty4HiNYUFSEj4+MuvQ0N5p9ecHEpFUi
	 HJLgZoFUcwjfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0744C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683066277.19699.10576471468154711546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d48a2bace57c81e33b6a374a7c3d968f972d9bb845adae0094fc494bea48f07
Date: Mon, 27 May 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716830662
