Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3500379C2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725239154; cv=none; b=E0Fx71XBJ9ccWvxmia7dht2F587ZQ2fMbY18p9X60pTflIoTmZSfit49GrhD+8EittYwVw5zQlCx9pdNpvpgUzQjoEo6jVS43k+2io61rrx5om/3xQx4MPLH/Q6LuO6iSmxvtDHcilWfga/r0yC53uZuYHWP+xpOOdrNDU9hnVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725239154; c=relaxed/simple;
	bh=OwQWl1iClklaCc5c29t7sQRkn+MOKdL9XxC/2WVamkI=;
	h=To:Subject:From:Message-Id:Date; b=KCJjRcqSaRarQqYunvVtFkt73z+n+NDNmrDS6b1UngnBT6+D/GHqFsYAgzY5DFNIaQBEC2DiQ0w/927ASoGucFuqh18Fv4nJ9uvxUcfRsbwN+R45IuNpl9FsJltvqeCleKLton0IyVLBoTHmLboI0jRyz2lkksc04BdYhp0y6FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Njfkktew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Njfkktew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8147C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725239153;
	bh=OwQWl1iClklaCc5c29t7sQRkn+MOKdL9XxC/2WVamkI=;
	h=To:Subject:From:Date:From;
	b=NjfkktewRuu7qGNQCU123Zf58U0KqadUgnIFy8AJ+cDu43x9HemTCJKMnrOUC8aXB
	 5I0OT/oHFLqXoPMQtPBrzD2S+ZMCwM7h8PSnVul13rHSlP7QU6zzo4OCMThQzfzivo
	 LiR9zHySDsROCtY4zNxkjaC2IU1HuU17kZ7Z3JLkdX7BBRpoLPC/X8RUDjkXqRiBEB
	 NkmWYcyZ0icwBaoV1wz6+jxFBuTdPe1tq15FJD1jyOwIeKUB0o4LtSjsvia1f4Z0fX
	 fZaV1WwvMRL7ZmNcUfQYmuuzBq1H2MB+Nxx7+Z7MumgWQoVDCC1sY5WwDsdS9qsqVd
	 5aQEX1oQyLKEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96641C54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172523915358.24865.13296143414035390533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab28eb33f6f38ffc2d929eb75838fec21dccbd8f3157bfa6ea103b9e71d9e4eb
Date: Mon, 02 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725239153
