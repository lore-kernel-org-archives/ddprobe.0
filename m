Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6705DEEB3
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791764434; cv=none; b=T0TE8/ZR83QOFFtdQak7G0gKBRgSy9/dYGC5saMWPfP5yG+63U9K8HZpVf6IRVK2liqr0gqGSimAJ39sP2kyCTYwlfMgP1No25Kda46LnL8MqTPUkzDVQ1k1a3rmIKx63DXrnul5Do9lu41xEBF7e/TnZtdE2Qq8PeVpiESaEnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791764434; c=relaxed/simple;
	bh=dDC095l08qFM90OoIQTruAEh78e1BQ1IvweEQn6MMrA=;
	h=To:Subject:From:Message-Id:Date; b=Pl/SR2ZqF6o8ZzU7ACWgXUcnzO6eTgFCS+LGrYBJLmZzVzAC1zPAk0hZcHAuauO99yXoHKYD9KL8bnFS1cAgJ6G2gt2O/Hi7FMFpYT9J/+HbA396nyMMK58AhLkc5tKclXquUTneu4NdB8MjJ2evvyE+xb1L3DxWwJUnCRoel3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5mAOkLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5mAOkLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA858C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791764433;
	bh=dDC095l08qFM90OoIQTruAEh78e1BQ1IvweEQn6MMrA=;
	h=To:Subject:From:Date:From;
	b=r5mAOkLgL26kxP6PY/1t0T4om9fFp1okXi55PMXtn49kJpVmusM6ykNwMZxHMdCQ4
	 J+Q055frx1gEHbNdwjSI4RVwH5VnMwjlVDaeoQnzWL9SYxjd1Yo1oCWhxCDa5Cj7rj
	 8Wb0a5h82vl9yO2zeKW9Udh/17Cxc49xsWrcb97zpCbxwEDs6jj8QOjBZ2z50MXGaB
	 EK2ewda9rQIrxrF361nBCp6LqMe4sG8r2+ymoq8ZxgB/GCEOm3H2k/YwY8KmajIhae
	 UgSLy5dMLqvtHg8SWTQaW69wftzq7tvixb0lmHBPAyg3ZwIoGlRKNOQBXPCdrYV1MC
	 ADig/6s9NEb+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1215CA9EBD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176443369.23269.11233434279438343284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33e74e43a3edf25eee9341ab610d5773021a5a2a859231274d9d1849d3e9084
Date: Mon, 12 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791764433
