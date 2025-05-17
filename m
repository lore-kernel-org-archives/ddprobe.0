Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506DB1957FF
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747479594; cv=none; b=SRWoNEaiVIyBoxlK9zJgVeQaa2++MQotLNS0pPHQ6CWlqAn16llnAFYzWriW0eyf1jx9Bcr+/+oQto3nC179fGlR/+ZfY9jJXfNEAFDOxDbSZFV4vggaYjJQJIEp9OC8D4cK1aCgOrCa9PZOqqjYI+bGWkDwWwk4iDR2NXG1MH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747479594; c=relaxed/simple;
	bh=c67GBWakiP4QQv3RPu2yFigtDuiw/yIMSijXyap+kOY=;
	h=To:Subject:From:Message-Id:Date; b=KBQtK4eczOrzJsvfsk/NWPoise4VzCoDSUTvlDTHJBiLKL9wXIma2vQYqpgBOvIkc7QRS8lXT894+rYvG3zqiYjGaEplCrK5jajpGRdvcqvk8v8NU7Xi01iDdlAgEE2DTDwPqqnvQXEOFruBq8WJmTxdd/6Yfkzc4JoZpyaUvnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+uFInAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+uFInAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A982AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747479593;
	bh=c67GBWakiP4QQv3RPu2yFigtDuiw/yIMSijXyap+kOY=;
	h=To:Subject:From:Date:From;
	b=O+uFInAgNSgygG/9MRPGkrJ/c+K7uZvqALriNYZBATVUc1qdm+kvU7U1z5lV/lpJo
	 TQ3oJioQ7daHplPAh/1c/qDDruEoJeg5IhEZvQzmdcNq3hZ20DxPUJhl/YyuyCGI8z
	 6J5BzAJzBtrDXZGpSQIcZljeqsk73+2JSF1LVfUkRMgeCzAUosNPAuAJJTjSY+1lhV
	 7kujqdi2/eLs6d3DoxeLWs/nvoeMvw80jTl85l3s6uG6ANmsyRsysaLLjdraeyhKB7
	 PJMGvj2qVFH6jaWIWWPkWG/LoOAjt3MGJz75DCH/x8V6zq9Crh5nlxkWnOfA8CZoI6
	 S8IhTX4Ydp2Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E1C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747959357.30735.5954093844288183368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e637558ad646b8391093a957c4a115f3dedbd3ef4f232f192f29ccfb877b232
Date: Sat, 17 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747479593
