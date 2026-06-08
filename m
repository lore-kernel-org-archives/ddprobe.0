Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FA0288B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780950274; cv=none; b=HHKwIVhAoi7J1BZDo1mh6F2dBRKIZcGY+zoehI5E3nTa+71lJ4BbhdO5fvhSy+AePcZy7phZE8g+YSzKHvF++loRY+ANqzbAWiJ9aNUQi4lBfkgo0a4eW4RXiOnB3cXk4Nz3+fqCus3X/XTmq+WH/oG1eyd7wPjn2V7AIvEYFzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780950274; c=relaxed/simple;
	bh=5J+kPQ5XVvZaUJsVsi7g5ly2JGWAL1AwgmsG1WmWwk8=;
	h=To:Subject:From:Message-Id:Date; b=QKGuwyPvOCt2duuxytozrn4AOxiaWKdcC+wMfrgu+3m/zbRLAsdbPTXXD0aQ+h7838ku3aqY90Uk/zSRjJaiJ5ZuOWnfyCd8waNNVpTiZOmzjaknwb/e6W58wSKjKVmKFRBsPh78JmnbAh9Jegp+v4jm5s3lgMmNTEXHq0he9bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcTKZPcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcTKZPcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4B7C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780950273;
	bh=5J+kPQ5XVvZaUJsVsi7g5ly2JGWAL1AwgmsG1WmWwk8=;
	h=To:Subject:From:Date:From;
	b=WcTKZPcJJHZqqn2ZkTrf5nstRpuBOXt1b0M0WzSYTfhnFpxqs9GBiNgE/aiJxMm88
	 qvKzhuL30Ss8G3U6MgxuWT2FD9HgHOXT1jBi48dNmryMqQGA5P/ItUEGZK69BYErWA
	 RZsJBSnwV31TqaGJEhihFkWU0gLmKmOOCwwkueC3jNqtxoXXq7TODIDtlccSWyMJHR
	 1gkUuja0Wg5YeHYFySdcM5uSLr77nlyuAChD/ACFlHIelAhv3B61Aw/uobCAvURYFh
	 s8MNdFIuLmSvjbheRnwqFdLc2GRuSRwZ2FtpxUqhgA6Hg93F5TuJ0tPUXNNxNW52eL
	 Q39DLtF3pU+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A5ACD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095027371.2070.7687640253444004437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e552bfa0af71542fd73a9bfb8528c6da5e5e5cddc00b2e81c30c62ebae94723d
Date: Mon, 08 Jun 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780950273
