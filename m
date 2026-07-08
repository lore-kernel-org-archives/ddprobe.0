Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D00372630
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783532914; cv=none; b=qTIIeHZjK/QqZN43YzD3bFROsgzZdLJjCKKzc0ENoR+JbwoYZzC5Wsk7/zYv4p1m/5HQJvPVnrHiDYhuEG9FiXb+tEw7i+JzN731fCsUUbvRs0R8Ybhilx3mIvxtFRCzvMzW0qECbGdPbIi/eHnEHW1hwIhK+f7I/m9BBqS8Bes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783532914; c=relaxed/simple;
	bh=iCfUHS5SF9D1jgYvdM69071TlzEBgxVmyo2KyjBldyE=;
	h=To:Subject:From:Message-Id:Date; b=Vf+UidUogZ0u0HxJ2Iw0sBCD/EObMlW+sYk8XulscjfZHAyCGdpwVfg9/VM0EbGA5O3r6xxqtMbPJv56d4l0ooYj1hRmTn+8Opz+EdCB37DsGLdsfdga7BUJ4mr1DTuiYufEQoI/NM2sjXM9K6B2Pr7Ix3XnOVZB+9ntdYVH56c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHRwiHn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHRwiHn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA32DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783532913;
	bh=iCfUHS5SF9D1jgYvdM69071TlzEBgxVmyo2KyjBldyE=;
	h=To:Subject:From:Date:From;
	b=pHRwiHn642l6WHEA2A1TYYMJRzdIFDA6SQJBuncYmpw2EbOtfuzVOknfiR4k07K2k
	 6fdf6e8fBjZvBq9jmpje+PGnsSDvyRuZeGjjaWhQarnxcrB3fz5CV3X8pq7mRfIF4n
	 ZwEHk+Dcgcj5SPD5YoI+9mudtRIfLcRen8cn4PcL07+6RQn0DnwfHXvQ6BM3L9hGxb
	 jIAMCb4Vuezx+khsSzmCaztE8kA2EvjnFvzdEn+Q+WT8NJNmWza5JVzm40n2+n3J/s
	 fsE2rlzdWVvXKX2KhIsGBrBUhoOIvfHvM9xNvn5uPs78ydP5rtepNZHMW486y2Ceds
	 D2dbTptOSGePg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88CBC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353291368.8628.565713282712873105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660ee269ab6d26851d54ffcbcb0492a6e79c98e1236b4aae1d35792a6f8b8f66
Date: Wed, 08 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783532913
