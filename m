Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10FF36CE0B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769036034; cv=none; b=QZmjweT8O17LHCZFhc48fkbfZdTHO/HY0eoxT67kgwXWXS3aWmZ4wogYnzouBWolpLOBbHnutL0IfOfzrS6KVVXkgksRL4YG59R95kp5EX2357U/jwbl8irpHK/h3TMf1RfyS2Aynky1BKedMAWDyNuZGQa42PoTpzffWZPk+aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769036034; c=relaxed/simple;
	bh=U2ld9fVUFXycooi3A4FXz9BXiZAgxxvrp4qiGKYuTV0=;
	h=To:Subject:From:Message-Id:Date; b=hOpf2KE5++j/lGNX2rRAguvT9ocuPllm3q6nYwEnihKStoUvacvvLFj+SC+xJpJCdr6+hRa7jG7avAHP81q3ASLNhlQKtfzkyIdzCVg7UyCsrIznia0uG8jLmYvL56ZbeeIZdXR9prk+Ooe3yK/QsHoGxMJId0u5Z3oQcZja1QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WveSG7gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WveSG7gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B24C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769036033;
	bh=U2ld9fVUFXycooi3A4FXz9BXiZAgxxvrp4qiGKYuTV0=;
	h=To:Subject:From:Date:From;
	b=WveSG7gcdbZLoDhw57+O8v5zx4khE8ZBS6I8csc1P5AnCYEkytACl5asZRszNSmGT
	 GcE7mIKotOn7+NVVLqXGHPMQjF+Wf39wT91nxpu60BR27CtDiQV137PQ6yeeclJtnS
	 /NFOrInZsEpNIGXBzeh4V+4EnapwpXb67VXiHa+ADSjqM7XC4gNCnj5mlYl7+MRagR
	 j3yYa7c0nLOnggn+zB6BTU2mv3ImzWiD4R4E18WyqRlvMyJgqOAlxEMPjv2seHPaf5
	 pvg/ttrA9Sgwmoxg8IrO6ZZJ8nbSyMkyGiTacMDEStnZX+X0jQkjv/va1AuJalz39y
	 GIJJamX8dsqhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90400C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903603358.5031.136726670275994248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7375b006ffe802f0dcd75e9d0d287fc293fdaaaafd707d33384d81a73f4dc0
Date: Wed, 21 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769036033
