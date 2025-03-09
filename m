Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5902D1C700F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741552134; cv=none; b=k5HT1EEzicBTa/EvTryUemSvRXpG5i3uUL0Re/5GaMXBd2Ah4tmhOB5bNsW9hyX/e2cU0SfD+Tl+5FKDqg7dDjpkuOWe+NDzQssBxeye5V4AbFVu+mCNLyQiuc3HZ13Wqsn37rp2I+CHRY1zPSFLhDOlPuAPwxYx66S9ipsVNkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741552134; c=relaxed/simple;
	bh=vad/TrkG7BMlW/XJbRW4PCAXEQESl7TRoFO/jmkGcSw=;
	h=To:Subject:From:Message-Id:Date; b=QSzCMG1wIYgzxqsJKanCL0kxQCsJ6q7vdihy5SC8eeXq3muX/dRrpxb7pIvFHHgph5GTtdp4+AZIpKMOno9VZMmKzBOjAr7oQe3r6+P5Aa88jC921DSe0QUxylU8RPcQG6HmRC7GekArS0elOA4e7xZqSf3yvTlQcB0ny5CbDiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au8ezq0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au8ezq0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4381C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741552133;
	bh=vad/TrkG7BMlW/XJbRW4PCAXEQESl7TRoFO/jmkGcSw=;
	h=To:Subject:From:Date:From;
	b=au8ezq0ypf7hR7BQwhZnsz0cK0B2oU4zhZmpTv0C81ABV3bRxVGZONOugrzwF9Zer
	 d5zRfpitqoMz6MpwKn2cHl5wxMGPpNuzqkCQ0Io2CRNDUJIddhurQf1bK9D7rgsIgw
	 THaVCt5Dah8htzOO0kYUfUhhr1FeTdKORzXi0IoPREUtBk8nupROKFFKVtY4KQ9T1n
	 4XG6NAslcGWn+pQEPHQHhx2zohsd5+85dsP6wJfjBI9fXnvxMAH0Pff60VSGNU97hC
	 WEIE5zluOav+QewPqiJhbLTx71PBAkb7SxEBVbeJAKGFfq3UfvRtW1j1aFQaCHXK9N
	 t67bi4s/zL6sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A75C28B2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155213363.30215.4391193228933964737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a75410596e242f849de4944f2c94afb1b03303d56a976c88f6f3c49cf27f782
Date: Sun, 09 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741552133
