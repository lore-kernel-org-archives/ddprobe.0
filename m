Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC57125AE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715137343; cv=none; b=OfLF3fyFc5sjBDo4Xhhthf05wue+RCp3MJxXJsg32Sjr+oIwyQT2KY9gyYvtJbwIqVKhuxJ+eQtmxlD1sGrUvbK8dkqLs1UzZqiE04RqDznT2v/fy94VxQkTHnnx0mvIrQ9bln0+rBou8giQa56LkU8x0WoB4JSr8PdwKF09b0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715137343; c=relaxed/simple;
	bh=hNFpM6geQ6QVS0sWuBnGooPpXgHN2shc2RM5erMVgi0=;
	h=To:Subject:From:Message-Id:Date; b=BU5FoQInBpEkfGw04c85Yj2GniLnkC6L5m3J/npBPO5nrus2twtZXCwsXmVjO9pcPRnzZdfIKOTGgcZOhzeTqLfJIqaG/cfQ5NyrHpYVhVGTlXAvKwSmSPUpND0S1I/MHkfJzpBSp4OqC0ENxeapJ4arfe/T9MrqA52kWR/RkVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+uy9+OD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+uy9+OD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBFAC3277B
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715137342;
	bh=hNFpM6geQ6QVS0sWuBnGooPpXgHN2shc2RM5erMVgi0=;
	h=To:Subject:From:Date:From;
	b=C+uy9+ODkLO4JD3qku5MRAWjM+E34WQm9Gp6D0mst6jKy53I7QcJs53cCEoSpny6g
	 P0eWJTJZ7uvO/KKKoskbymJuz4EwGda5EPGqZD1cBNMP1c9Kj6MhBPrmFHlTulc8yF
	 Aazyl87KSxHx7THhMw1oFCyBxrmjkmd0nBnwyxlU+WnqLHZWQwP/Fyq2AYd226joN1
	 95Rj+oagRilhDfgyxdC5oMnH+tmJILUq9uwWwYlG5oSxbS0KIW8JwTRokEeltIe/Qh
	 hICQIEsXRuYAPGDR3wM8ONynhukLUpusgiI9vOEfGyttH1Qylplx/KYsJFA+1fi+QW
	 ljqIhSmoyLNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DA6C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171513734278.32532.7555459509759282868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d98469dfedb7d760e2b8b4efef04f489a54ca6ccc204078420b7754d99e79f
Date: Wed, 08 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715137342
