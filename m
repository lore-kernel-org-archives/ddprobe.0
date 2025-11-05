Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220F57261C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762307394; cv=none; b=vGFYf3JFmRRrByb8JzfAMNW86UySkDOxFcKazUvkdbVqrYDVuf4HEpPoQIPgJ4aZzliJN1a/kgaj8QCtKwj+AqfJFna0Mlp/SnFBp85uuBP4Mzx9hsrVxBmPX4p1F+FOZFMJm00YjaSyJjzdX8pQfZWQgWTTCz9+m9u9WSjSReQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762307394; c=relaxed/simple;
	bh=P/X37z239ExsFG4vUe1bAwsLfpmdU3mYJMpCVJH8OZ0=;
	h=To:Subject:From:Message-Id:Date; b=K+PVHJh9xO0necXEkvwATmxFHmNHSLLK5PYQpIkeFhc7+ZP1wpkRWyG0IKKetY5IL9FbDfQ+0Vm0zT6kv3HUOY56WMHs2kHr3M/x8IbdY05z3rUL9DthsWes8lNFbP6GW3AtZGsqjKpVMx2oAHeP/XMSsoMo224NqaD0v3XK4Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeBxH1Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeBxH1Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82F5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762307393;
	bh=P/X37z239ExsFG4vUe1bAwsLfpmdU3mYJMpCVJH8OZ0=;
	h=To:Subject:From:Date:From;
	b=IeBxH1QmGuodTPRMXGcdUyZBM+8ww1lYvOhKHO0jwRzIEitCo4O8d718mGuaScefj
	 QA8a39BS9z5HKBMCGQqDe6J48QXii/zSlykm4r7+Qdb+rcBTwWBTVq7zSCu9o9hXew
	 ef02Y+7aiG63ITL7cEshp8nqFVR5ZfF9prcgNAkeaWMZTB3q0MZmmEBRSp1bMtsmUL
	 yMou6I7FESB+UkWth7z59+nXqWibiOiXG8YWjAqHU++cftO66POUENFsm5RH35+4Ii
	 ZC7/Vu3fk7KGaLVDmJdSAJUXmSoBjLO+Cx5w9uYilRgpbFissNCpg19T3Y0ZVWs/9e
	 GWQmUa4Fzz1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995A3CCF9E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230739358.8425.8819240694723957540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916fd4b849bd4c6a60999af1dff98ad7bb5415b10c3a7db123975f0ce87aedcd
Date: Wed, 05 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762307393
