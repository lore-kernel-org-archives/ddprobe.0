Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114273570BD
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768283634; cv=none; b=lm5vmtQ6qeOtWOjdC2LbKUyfeoRXq79R63DR6K0JsbGKc+zF0j6TDGl5gpcRwS8osMiML8tPq1D79BXYsj9vp+pHrY+HJLrBtf5NooPR1z8weHas50JRcmxo1/9gXIEpa7AYa8YW8yqthBfmvK54FYCVfz/HGjeoxV9bv++R4BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768283634; c=relaxed/simple;
	bh=hkU+VxC6ETi3NtyGfmRsSse+/6KYRwyHAh02OFYAY4s=;
	h=To:Subject:From:Message-Id:Date; b=DUcP6ISBQaikwPXCVa8nQh/DzVoRedFSSkSbgRGZJ6WExEOjbndgyTUimRYKRVvvhVGPl06ksNv/FPMFxg3Yym3pEGhaLbrw/x+oac2TCYXBOCTiqjV5XK2H0iYj8+TPAeHEB0ONc9sTFGens1N2PvtdZvpBpiKy+1rc8a/J+gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOWPQYer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOWPQYer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4688C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768283633;
	bh=hkU+VxC6ETi3NtyGfmRsSse+/6KYRwyHAh02OFYAY4s=;
	h=To:Subject:From:Date:From;
	b=IOWPQYerBtdUUupsTBNgVCeSWJn9YFy5vtvBfAIR1ot1U6lvSDKmXA32hvBcvwwLU
	 6O2B/X1vv2xavlrNtkLoTjDrDXQZIXkiCGyrUtdZl3m1Br0pWqYOd/OIO72YOvPn7U
	 RY5A6SR6uaQ170F0kTv8XUIP750iYWfOe8si9TRAfrNX346pzagPL12Zly0iy/oOi3
	 HlsuR5dyXqRjMGPU6Yw6faQvvRMEVEymPFbQqDBauL9MNVDVunn61mWidBfzfjKh9q
	 fZgIQhiGspM0miGd/mGpP5RmOyZqhnrtP2RyYpEO34ORXpZ0sHhmAHZoofCC96L6CB
	 hBdX8vlO5wLcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92830D29DC9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828363357.11442.4909547707235775772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5693bf7ececb71bee539f019ce506b44c11e79d4602c10adcd8833e0987ac2e
Date: Tue, 13 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768283633
