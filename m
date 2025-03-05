Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4109F2E3364
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741177134; cv=none; b=V1vYv0hjkDp8NK0BymM3s87lh9p5pdX57EbOg/ybztMzi4j4X3+G3rhKI0AbzI0ptbgJlS26A05oF/vPc+YRRqYQ59i76knI+I0OFOjtztJ7MWZSZt+Rwl+piEN9UfsdiXmAHCni6jbKkEaAFlfD1HrzACOmPCRjdV+8P68+PkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741177134; c=relaxed/simple;
	bh=+IjKE40jTZS8dqsk8+q14sMIza3etpcD7RUO5gnQKTY=;
	h=To:Subject:From:Message-Id:Date; b=lGhBHLg3O+/355nP9srw3uj1WdSe4YyK5GEO85zn2QAn0ur4JbGRpH91cXqBAkAIFXTbrDNMGv7owEs7W5gXmPM8cjmNrG5O9O/pAi7rsdhWdrIpmhH/+qKI1uQE/2CRm4ZJop+OOOdi85SGgRrDcX55wtIKTxaAUqOm+Y5o/1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGlIUuKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGlIUuKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3DCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741177133;
	bh=+IjKE40jTZS8dqsk8+q14sMIza3etpcD7RUO5gnQKTY=;
	h=To:Subject:From:Date:From;
	b=qGlIUuKRPvYPliCc17dKrOdGhJAcRFObsNeGplQ7HcOnE6yRZbrUwsNwuIYCuTUVb
	 TCxubbLG/jz5jIKtylmfN/6VjhChsQhgPEXyoVfdgFsK4VQYdzhXZXdXSsjbmZ6Zk8
	 wm8NtwQQ1GyJHADqqF+hSOa6drBHi9icVEQpCdpjPnwul6nODNFtCM3XC2LICZmlOE
	 9Y/cEnTF3u/uiPsK2g/GsJhN4nq4Rf8lzseB1dXCNz1n98lqaJMPmTdSYOrwewTZQ9
	 g2LvN4MnrODn4G1jmN2a+Rw5JVlJ4NZI/0e7YVKx7IqDyYVhUMOpw3Fv3lH1JI8msz
	 FK52Qs03SqWUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3EEC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117713364.4613.9975911883999873346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0240aa555889befecd532df3b72c50813c74a6871493d43506a4bd47d3d203f
Date: Wed, 05 Mar 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741177133
