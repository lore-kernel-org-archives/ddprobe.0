Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09B829D278
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755441593; cv=none; b=Mqri99ynCmc6r9BFrgkHqxxTyeECbI+vB7GsYF5P72pq2HaJw9LBKsN64RqTcjJibd82yYLzlTUwnbxMwG+FlltL8ZnJ294IrRff1T3Jr+QJiATgmzmbnaSx0G8kzDZDvQa8Eiw1havErjyAq0RtDEFWndxXizKtnET1JM5l6kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755441593; c=relaxed/simple;
	bh=uT3U7P8NpRjse/R5nbu1+/2osR33HPuIKcaPFsOJIn4=;
	h=To:Subject:From:Message-Id:Date; b=e5VTuSkQYLYjeMnxAw6tO/LDNEwbEmsV+uJiHhtpsX9OSZJLCGEsAt7yvYjGsH9h8E9KGWItniPB5d5rhrP4gvWre2UhXG5KfV3yTUKFp8oRnHr2vZJ1nRvZezI5kkuw6i7u8FTEVT7htUw2A838hXDW37N6TXHhk2s5+DaY2fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbYsw+VJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbYsw+VJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19CFC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755441593;
	bh=uT3U7P8NpRjse/R5nbu1+/2osR33HPuIKcaPFsOJIn4=;
	h=To:Subject:From:Date:From;
	b=sbYsw+VJmCmo2Tp5hIoMLZsf3rIBqV20OrP4HVJuqK/DnzVuqb5VoAYxHmmranA3M
	 HVu1FUMm7aXn6EKjHg+yCac5Am3at3ozKavOgqRx16ox0fei68zP+/jpM/tT/kpXE2
	 N3XXk5+Ze0dY9swmRUuWckNaf+qHlbcIg1BA4N47e/BBp3nGV2zs3Y3HR0A9fbZ+an
	 nzjMvO1a/KBfsLpvGnOE2Fbhgxfcc3Jyx5UgmymUemZetRjxuv8CW8+9ja54YltQGy
	 qcsrawVx7dC3paMEylyFIQe95Dz3npFPpFo0zpTgSCHhgHmGjm7rcqhUGB/oh2i/4z
	 lvuFrpzXz21Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93238CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544159358.11464.2792396198851360429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727fcec8e91cdc7277f96cdc8a2f1bd8f5038673c111334bd813fd94fc63f481
Date: Sun, 17 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755441593
