Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474CF20CCC8
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741267734; cv=none; b=oG2jKQN5tPAf3BV0sdhRK31GaUkJ1z3DM8kK6dMd/WszXOZq5wNdZxmxH5PXgzNKz4gHG+ctWLlGOGQ9hYNIApe6z++kDReoG/d3ze8zVYvUXHppKDgITxbhuc7+yosvZ+dv3TzKpsXIVbSpkLibbC66PJzNXAIUmPvS4/jJLjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741267734; c=relaxed/simple;
	bh=OzG0gkSX9pO2LQtfMPQZgC2WK0UEwpisNRVXU17tTsg=;
	h=To:Subject:From:Message-Id:Date; b=VZyklhtIPTP8Q3P3v66vvoxEW8h7Pmiau/QqW2yGekJdBVS2Ks/s85/BSyFjmu2ppDFlxLnOgZrO9/zfuHnc5Pf1GiV0wecoFv61cNKzEqj/uSiwM8/oWvX5Xpg1ibNyvNX1fcn+MgQI0mOQHVaZnGs1IDmVBiv7IPliQyx+9Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPzaVJOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPzaVJOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D8C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741267733;
	bh=OzG0gkSX9pO2LQtfMPQZgC2WK0UEwpisNRVXU17tTsg=;
	h=To:Subject:From:Date:From;
	b=iPzaVJOHgL+Wo5doN1PMAoCgeCVrKL6737kkg5wXxu7XaB6P58xDvx5JKRjgF4M2q
	 7fbdFNxbYLAMaFbrQQ97pV9dJ3i6rl8X1bU7QW8IBl6EXP5xsz2zRAwsi+XTxow5/d
	 e1oomkipASL+IMq9oSMjo0rW8URKwVCRsqLkwCX8qyXwok1tweekyX1ohUQYhRrR/h
	 I9NRgLfx7KydFeHrBPuHul3XnZFwxVoBn3SyL4tJHh6d25WKs93JFDZQqKtppBO4QW
	 2hmVqCE1xXXXgzrkLdD7fTFh0G4+6mBTh+MJYbZaORz2ZOc9kgKyhogntgC2Kdpoom
	 br81tTPhKiYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97569C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174126773361.28025.2225511043907616028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a351f6498185eaf326cd619a65e2bd7bfd62e5cce4bf5723a4a4f02e45dde381
Date: Thu, 06 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741267733
