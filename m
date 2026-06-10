Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455B42F6918
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781130994; cv=none; b=hR70whmXzzXYvGSfFVFHTmCOUmOCVOIu6nfy14OSjJPX3FYtEPhtDhijKPSRMvELbVHv+5Qe0P4bOSweEY2niT8QNE5/BXO3TfSx4r26FFONlSQQF/FHRIiZxFcZ49TFc1ybP6ST2QBK1yhL2wJF4jLOnj6vSQ88NVLzWisTjQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781130994; c=relaxed/simple;
	bh=+oieghc4623PJQ5Eayk8ADkorzc6vWTvZje1HLDynfg=;
	h=To:Subject:From:Message-Id:Date; b=E3T+xAmfy0diOf3hfsmaUeGHGW0Aqs68OAFhCqN5wHI+KBM3rVZNh8ug2HMiYgGiiUaGNHBb26/8hYTGdxoDVOk/btfcjoSHodyX+uV3I/da2jHQWmevJ6zVdeQYkOUjY3y98t5pSnH+CTJQYaizHo3Nw/SbAfcx5iU64dUghy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv3jX1DO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv3jX1DO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A8EC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781130993;
	bh=+oieghc4623PJQ5Eayk8ADkorzc6vWTvZje1HLDynfg=;
	h=To:Subject:From:Date:From;
	b=qv3jX1DOVpQRcLlFmYMSHoahPcFYtIQ22unNvi6PN1AXqMG8S+N5mWqQBT5B+Svn9
	 Bi1VM7TB1HDqXqSyTnhV9j6ojwrc3Q1JY0I1z63t7yaI4AVuT/sUmxn8+xYbeacHZ+
	 X/YTVLZaPFNe1O6OLooA3xTAh/Z9EB3MmtbZYXPiCP8zGylGcBsuYoiH9JJVifxman
	 JcXBvWH2NKb1QsGW6HbYZKxHccAzXrb0NfjGcOSyiVY9xO5+q9ZqbrvWI0VQkq/TAr
	 XrO43DjWSSxQlxNVTVf0Ikw1rICbXiyo5GtxA3HkNjQ6fa7FdA37fvudCR8kZwix2W
	 xf0bVik6+RBWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57B8CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113099372.3618.736008102062938939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c1adea8d8cab4c0de8d02e1b3cc910830ea1d7b92f5f7312f8ab1376e5edf2
Date: Wed, 10 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781130993
