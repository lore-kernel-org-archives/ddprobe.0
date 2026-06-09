Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3807D2D8DD6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780974874; cv=none; b=jLsxSvN2ZnkVqlikx2GCIUamnCId9q/DTszUq1fl7vm/D4ro0em2ajgdCePzFN1xTW5OCLjwvBv7wVnj96Es+en8GeotYkfgPAwEyW+9u53chiRsB6DA33mMR6rOb8eOYvb/N69zENJmXGuvIqs95hbxZ0JdreDYe7Xs2LrslJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780974874; c=relaxed/simple;
	bh=Vf225yEyDF8JtCAsPBQpRJC9cTbsTG7uDx6NFsW/25Q=;
	h=To:Subject:From:Message-Id:Date; b=AcgRHWRXa/jCy/qp4u4+lsC/lvJBfTwvZtXYjTSh2XQ6nJzXrvRU9sThzRd8wJkoaVt3TD23iA9GFOaRQLLbuP2e2kRW/L71EUs1PEXAgOTLf6MdFQL0cmgtv1tWOMBU0YCcUwskVJHND+man0idDGFRbGUXzfVVRsI6oMP0es4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMMFPBVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMMFPBVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7D2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780974873;
	bh=Vf225yEyDF8JtCAsPBQpRJC9cTbsTG7uDx6NFsW/25Q=;
	h=To:Subject:From:Date:From;
	b=fMMFPBVeHqSqMRzJA2W0OrPQAZVe4A5EwKXEMzpRxXNo0hyeWIV8OE44oK/dIt1/F
	 h3zvmNkSrOd1kLYDpRuUh5D19v2dm7nnvWtPlsbmejGvMLwedAxoFsf4m0Qtb1HPpZ
	 v0tBxG6nlc9xpCLJDtiE0TQjm5H0m+kfjhIzvTEi90Ik39QRJxbJurLXeFdDluzSn7
	 SnypfSg4ZeksKNP0FEpWfcCyHEbP8j4mKoUh4EZPTsa7wmiVmnzrO4kOA9s8d5q0hP
	 3EyL/dzD7CFTaVDE4JrqzQYf+2CtSIaKrd+q1G2JbBgXg+sAFT8AdnaNZ06Ftr/tku
	 REohYvinugtLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ABDCD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097487371.26514.14686155592449432282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7bd0a23b6c517833392c2157413ee4355c91b79aa45aa9c3bcd10e67318f18
Date: Tue, 09 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780974873
