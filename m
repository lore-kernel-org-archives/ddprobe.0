Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FC82E4257
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790026234; cv=none; b=OHo9atmr4mFZsB/w8BJVXVmICY6JQiVTAXrgZc/gry0fiabSvplLUiCF6VmdmrPAcj2JbIR36cz7Vtx4Yq6sekviHnLhSypSxEqJJH3cYdKGukj+NqkzDLn0HuZY+Kr/bS1T3brcTEj+fXWkk1uW6kHW8yimWR8WMOOpnJd/nAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790026234; c=relaxed/simple;
	bh=P72+IE/G3eo7RVBB//yb18iLfS8+T4uPshmxq/FK2Vg=;
	h=To:Subject:From:Message-Id:Date; b=uZVoCo6pPXZZHyfqwSxvDCQUu/0FcRtfIn6bPWq8UqhaTCivlbzrW8oZc2gWVeipoi6SSjDdt5pswR4pZIh5EoWM8yZSuGFHG0gxhfi245OVciifUUgzs4qE6qYTtJTju0LAawmBTbBXjbaAkSt9eYUxJ5diXIykrqdWN4pDN9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afMid0iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afMid0iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E6CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790026233;
	bh=P72+IE/G3eo7RVBB//yb18iLfS8+T4uPshmxq/FK2Vg=;
	h=To:Subject:From:Date:From;
	b=afMid0iNwNCweDGCknspy9RnBlYlAvs+hESbpLHN8wlYaPaWhU1VRMPIlJL5GZX2K
	 kNZxMNUZC+6ZdNG/yC2Qn1OL2AKon+yu6R74V0/Bq/YVfvBli6pExh5r2A4D7e9TG3
	 bZKqFCJl3nbQmHXF8Gg/tng3c2gQ8xWRG5WhIVwpfpzknrw7LqVpctyzsJIn1fL8vM
	 krMDzSp3+m2zjkL1yd+/NsPn37GYDyR7eCpsg3eHRQgHLtMXfgLu3osmfmlZL0nMN8
	 QEODV/0hauQLjXWx+W4G6No9KB+rL33P9Z7EsyGCkScRNNdCRerkjLCnHDKbFFATKW
	 qGAVcSwpN9fVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2784C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002623372.10104.11912153279679008796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cdf8108607a7856755e6a183f0dbb5624f9c0084c0d6d227f4cad91099001b3
Date: Mon, 21 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790026233
