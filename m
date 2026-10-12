Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DA11A681E
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791769234; cv=none; b=A8p2vggtHJjnZG5cxMZNVs2DTQH2p4mYQNRsXrPSjIlEi/xcO5QzXrgpwDBbih11KcHAPnQo1igNCxrj+dEdm6nNRPO8n4F65ZpgGJOq47A31kKKof8/76tzkUpbAHrbKi0cxvymKmhQovKJy2ArcJLvcEa5MHvy221hNZ2Dqk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791769234; c=relaxed/simple;
	bh=e04T4BebNAYaNze9G/6zBwA8kLmyR69ZplvMyM8zg9U=;
	h=To:Subject:From:Message-Id:Date; b=e5/OgtYytaqya929REYAN9hqfCGIeUB8TMMMZySBpYXgjKeoDgFVGXioScCHM9vPB9Ku7hU8CDHjHgm7VZnJMCx4r1k103P1Ei/6N6ldJAtIIoq2TI1tJvvvrqh5HP7IpTr5P4fyLoYDUj85BvW8EKLWKCZVh+2gVqWkWYz7xIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkkQjSo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkkQjSo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CE9C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791769233;
	bh=e04T4BebNAYaNze9G/6zBwA8kLmyR69ZplvMyM8zg9U=;
	h=To:Subject:From:Date:From;
	b=bkkQjSo8M7TaKeK0wHYCdTkxfAUOjXJf7dNjTXtNnLUUEYjGLLyl9b3mZshyRyLuL
	 cnerIGO1yN8jNgJ8hWhZ5ILBTQT05mz7kcOAz8VMD+ExPiEnxNuZxC5gna6Vs2DbQA
	 MBKQ9Alsev0j6ZUrZ8Eb77xP145Vn5olW91lePnFe5N13i1FHhPEeU9fMN7sfUdlrc
	 fGXVJYsnfXRZDCc37dddvhF5h4GZwZnfBIbW1BwH5GvhiYWGBPQYRnAtBvfoH4HcC1
	 3uEF5w2VJO+MItn9w8OR87UBiJbiTB1sb1kPpQmB8QCdUejKk2ogolRqase374YdDq
	 pIGWag9fvlD5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5E7CA9EBD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176923369.19941.9375098452544877123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c283964a58a5cfd86d491b4efb98f1da70d22ac8e0593e0c20b1a80bbe0c6829
Date: Mon, 12 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791769233
