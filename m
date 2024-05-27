Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE293BBE5
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716797663; cv=none; b=cA7nO10H3RDMxenRgyURQJEhnDKFnnMtEKp2DCwVHEqKle1dqYI0sVXqm1R5gaFmVdsPys6ZjxfgnFI81C2usUIDsv9wHk/Q6VmBAqyUYqGuBWxwBG4DLud/QfY9BgMkokbc+auXkeHMjO7CmI6nZMvjN8S3hU/ya4+3V2EGzgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716797663; c=relaxed/simple;
	bh=/s2t3At5rlMzDF7dEWIMUytuIgCP1gqNeeiJmmyNAPk=;
	h=To:Subject:From:Message-Id:Date; b=pddR8iKtPb1amGv6JhlRSOsYTKfCwe9Wc5PswqP3C+s8+YIPslN7MdJH40oCjApzlnAN4whTGcFC/66+PBiSJ5Sm7Q6UnTSzPxzgYc2WnJP9feb/nfgRx95AOusm8F9qN1NK48wDv391jAydcJhLfHAIC2efunz9YBReaRRA+yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX6fDDco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX6fDDco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC782C32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716797662;
	bh=/s2t3At5rlMzDF7dEWIMUytuIgCP1gqNeeiJmmyNAPk=;
	h=To:Subject:From:Date:From;
	b=BX6fDDcoVBV1EhVkRwclWtL9ZyfHYC2Oi6FCqu9yH4SiZ5cHf4lzdc2oIRdsyOPTE
	 PbL25/dKrMecH+YN5mBjIFRqjmbJhCtQZQbiaRyWrDJzGwgS/+/XQjVnDS0duPLcOn
	 keajP6EEbnJJ9s8Mx8gMESz6XmoJcl+dGArV90bvDphPBz9IookktUEp8vh3n6jVwa
	 rRs0D0gI+ozDtrapR8p9E5A1QDVWHrgzbGaPct2Uwd7ZXVfk7TlZ2vgNKtVbR4K+e6
	 /winMTQtnKZabQKu7A187pLs6aD630yvrvF3IYhNkduppaL4hm9otHxgT8HZxI41rK
	 OpKVro4FSUraA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C805EC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679766280.6969.7186032762887673366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02460d9351558dc457eed4a727e5e3a33354faae35a07819ec00f3e439dbc533
Date: Mon, 27 May 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716797662
