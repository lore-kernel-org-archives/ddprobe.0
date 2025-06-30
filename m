Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DDECA4E
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751289594; cv=none; b=YaM8EkaoZhuOxf1aZQ6urLWIwUPVGw/Kd0oN9kxV4fhMomtMB1TFyhpNF1PFY/9IVXTvOU1wPxWVH0Cea1tMZfsFEsqF4DX6Fz61j0uGbaU0W+RcqNSfWabsel4kn3J3M2Mg2mXlkcVndekaP7JdfzR5dRxHdRFuGvCIwiWbTt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751289594; c=relaxed/simple;
	bh=YOXTap581DP45BkhOQc+ECjigLnoJgjs+szZWaejfNA=;
	h=To:Subject:From:Message-Id:Date; b=f0dBHqGh/sskFthOsBdz9cHg4tA++n/uKC5axPtUBxj7eByGE8zclpRqDyidx1zCea+KhjuVFoDSHAusXKzpeB9RzseOl5d05QafvtCgdYsI5aEmr8T65+QhrULcC5+EMTPoiZP0Lx+nDM86/83hJgmtIUfwDFMgjHcDJBAnHIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaXBpYUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaXBpYUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC76C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751289593;
	bh=YOXTap581DP45BkhOQc+ECjigLnoJgjs+szZWaejfNA=;
	h=To:Subject:From:Date:From;
	b=RaXBpYUU39AST5kqVgttbfXE6sa5x1czjRxlLclYWeEnsucfv4wm9G0ImQvPebARX
	 MdpD7Rus2ANB2fRFrTjOp4gMdgOQcHqKzCaMgkLfJXE+f0SG9M8g76JYETO9Q91cEv
	 OXhsikzPknHZ5iDz4KeWJz8JW8eJrE88iBpQmuUED3SX060kQn9hAKWHMicIYaNPTM
	 +0uHEwPEP+6AzW2duaj+wRKkovUpjDxWm+U0bq5RZcsf+YYVJW3UgPo8x/+dOq9Zj2
	 +bieSAWr7NuQjeU4pUhJ0ruTqTf+tW0adJsTMypzDkoggSjlDNWdHDhfpEMqF+1vuo
	 viN+86NGUN92Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E91AC8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128959357.32330.9577056482689315088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8febf7b864e0ad4e5dbf319f4d7e338ae609fa27ae0db47d3e9c03646b715a9
Date: Mon, 30 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751289593
