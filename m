Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB89D266
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719879923; cv=none; b=VIzXOicZjxMDz45ybtg3hfW7Ove3xHQZXa6BjPHr14xRYlZBttRKbytxP2QgBy93Ezo01+phLw+hRLB9uDGu6vjVpHZlor3zPcEtsbAtXyyVcb9umLYfgH/sK5s+bgg8KposeppvbohlveZxgzCVJx7fswv8XjVyymuQ5NaaKIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719879923; c=relaxed/simple;
	bh=zhkfuxPrcuFhCBAWY0AV3hZeydTn2aksGuap3Fd6Kd0=;
	h=To:Subject:From:Message-Id:Date; b=nhy6SffByqhnFj7A6rvadOVIjctoTrhZt3RoQVY7iO5J6Yso6iUn+xBNI0NUEJh7L+PVJ+TEvj5oDQmLCbIMcoUy8jLz4HSazXtxbCIrHB2ScgUSYIIdppdmOPuRls7JAD/2mbzM2kzAjB53U7UZNqK+KqSljKBmrUQeX5SZ/DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epYV/nwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epYV/nwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47DCC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719879922;
	bh=zhkfuxPrcuFhCBAWY0AV3hZeydTn2aksGuap3Fd6Kd0=;
	h=To:Subject:From:Date:From;
	b=epYV/nwbKKKnFVCPmEpCJKkri/nFaoNvpH0hkK8vyOrrrSOc7E5TUy3kU9gxU/E6p
	 fMolope7sBlL8JIjYzING4LLmepZLTUyD3COWk8PEhRlz6LsBQPsn7LJR2zVbo5sGR
	 Bgnte2JrbqZG+Z0Gkbr0fTpy0nhrKcZ6ieXY3KehEaW1Rn3R/wLR7ztD3LIwK2KeKv
	 W/CRl3dai/D4onbcXqK/XIBiC9xYDK+vdyNKkeU2RKAkBc1DmPQJp1wbJ0ZAIShyCc
	 FHh6ZYrFAn/gcSdgIQ9ggFxDIScmLmu6xeLrUjrT6XcrSxjy0hmWqdM9mzCbGbLMS6
	 VfAuJk5vxTNAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA1EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987992278.24419.3071344019509839762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95a5cbf4b29dd2f72ddb49bf82314ac433c57a71cf8a812578de634de7a3f0a
Date: Tue, 02 Jul 2024 00:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719879922
