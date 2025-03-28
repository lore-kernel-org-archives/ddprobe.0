Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7FB14A4E7
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743121795; cv=none; b=NUA49OnyNT/QHg8De4apycpnBx6UqytImEgzCGNE7sxTVlCdvrX2wt5+8lr836NdbTeux5ZRh8jT8swsedZ4/Pxu7GCocneB2ZUI0g0YAKq8Y1VPAl+vaeLVHXwHPyPjWTt3XyJV6A+aoleEMxL1cT4sDhZhTBd3GF2t4KJToM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743121795; c=relaxed/simple;
	bh=9RvKtm+kBnVnUY88JGmWdt7pXtFwq6Cpf99DJkIDrWE=;
	h=To:Subject:From:Message-Id:Date; b=XdMD6Os2IP1m4uMN4YjnGQVOyJkIhd4TIofWsZ7KpDV4w3Q5jVl4HPEIYx8TMqQXc6zDdqvlfDq6jEZ/FoHy/XtRBywhOhnGkd7qVuSHQmUlwf2qmxRO+ayh92L+zd/wnHkh4Z2w6WCbRABUkmCd6uRY3BxUmIfmwLZx613coe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPfBaKWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPfBaKWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A936FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743121793;
	bh=9RvKtm+kBnVnUY88JGmWdt7pXtFwq6Cpf99DJkIDrWE=;
	h=To:Subject:From:Date:From;
	b=nPfBaKWpHss+uPTbnzHEzKijOsDzGQQUGv2mC5kbllqw/APTAuU4e4QynlZeMJE0c
	 av/dC/p5aCtvRVKW72einBEiGIyW3VcZlrI41CJ1nPPkelpM2VgUGNIM4bYwAcrlXY
	 Z2m//brBpxYnAL4q5BNHHe/S4tJzGYdb/NqX0L5Sh/ojdHOaJ6PVafDqG2GgcumUMR
	 0qbUGYJMQfsFgqKhKwyrGn5HFbpA+PSbVBxNuv2yR+4faXHVDj+KGSVJAM3QwuCa6/
	 UanWhqHDPBdoAzswEq+Z5MwsApqx+fivzWYGd+JDweoQZz8EQ9n9RSodulnJMnzh1s
	 msIKplhrXcpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586FC3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312179360.31211.2172176762017300083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f8827cf0f89bdbeaca6cb959c1d8e3cd958bddc571f9b0ae2e6cdb6e0ce725
Date: Fri, 28 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743121793
