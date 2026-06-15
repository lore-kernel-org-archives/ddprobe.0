Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FAF285CA2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781545594; cv=none; b=AGXpm3wxK7TYweAE+0FN807tPOQNs/XNxSrQY26mxvmQo7DXknMmxUI79fcB24I11elEDurm+3W6W/IIQHHpnv4/9BZJLv6BS8otIsfW4Ix1F/YzrKTHuZhN37jHWHpAHyxmelbQWTE9pZ0Hfbgs3+NIgwmJrX4rKPUKz3hFOnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781545594; c=relaxed/simple;
	bh=7ZI+J+Kb5+Q5a8/WK6RC/lDfVDgAT8c+v3xbsLMyNIg=;
	h=To:Subject:From:Message-Id:Date; b=trRRCyE4LQDIdIN6vMAdzz5AO7edH3dwvrdObO5JhH8hysLFxUUFZ9hwBxu0diUnSZjqpktXVaafg/EpXunMzwdlcBwcM9CwkPuSYW0XYL1ZJGVDJYcSfqIkZn7FftoJOQ1MT1+kvjT/zhLdTrGD6k14VTT4tAguI19wCfxpOVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KudfWqdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KudfWqdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF46FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781545593;
	bh=7ZI+J+Kb5+Q5a8/WK6RC/lDfVDgAT8c+v3xbsLMyNIg=;
	h=To:Subject:From:Date:From;
	b=KudfWqdKtmZdd9iI8JEQ2aHXS/20KODNmQEr6nJm3JdsDbdt/yTmralL+VKbldCCh
	 ExzHVSfPoHNnUe/x8jEZcs/YEVHMypLc8vX+1ujOtPJddrS7HVjeMcQCdpOR8gFmqs
	 Il/u6JnAvPevgt3ZkDBLHDPldm8QO/KXqWoQd+EH8js0Zb8cP6+Nq0b5uUYWLfAeYs
	 FTvAoxvRqzOja4W92oUusmvCV5jvrUt30KM8XP/F6xrTlxR0fWYKdf49PBP3NnqqXb
	 8k/ne8tOOFV0aB4EpI9Gu2+4puD0VBGo587PFn+F/m0g1mu3dGJcBB/8Ow4hzbunT6
	 mEMPopIYprs3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B417ACD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154559372.6324.10936616398187185035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1701e8f28f17d032172faca01bf0f36dfa1d0fac99da5d17811c4023ee830389
Date: Mon, 15 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781545593
