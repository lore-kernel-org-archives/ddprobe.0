Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB9C1448F2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744307395; cv=none; b=JEL1XjykehRoJYtcw2NeJWmqfGbwzWZXG+JROUzZpDPx8OMk2zSOGdZIZ4Dk4HjDwWihyHejbbO/PWpy0YnsVw84L9yUjKPex8W4t2fXcnul89OLAGT6qRQ+LWyrvW/rwWFmB+/eSP0O4l0P7hwim/iNZafdErpMT2xcS3YpppM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744307395; c=relaxed/simple;
	bh=1qJWi2wSMmu3nM9gcqFD+0gLsRf4BY4m+tXpXrvVnLM=;
	h=To:Subject:From:Message-Id:Date; b=qgr8aatmcS3PGJZyROq7av4isbDWNYVeBsPu+kNNkiy84PpQL5T5+ScxwiH8dafDiikD7mPYKXTd2YKXujk1TQ2nNgYo3br2ULrCUTjj7FkqRQU1W5rd1hm/EEwCYQAZmxyxFfPSJU9AuWPSYJpFGe62jfdtI4ufHOnr2pW04i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAhRMaSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAhRMaSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9908C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744307393;
	bh=1qJWi2wSMmu3nM9gcqFD+0gLsRf4BY4m+tXpXrvVnLM=;
	h=To:Subject:From:Date:From;
	b=NAhRMaSsZrMPspUJrfpgAyXyx1l4X9npprAldTc8idprNV3PqhfGDEYmZZNldbkBr
	 R7kHMNIRBneyYKtcg/XW4t95zzrdGEJvMS6FwD7z3YcMw61KEuH0+6P5QecGFPlOXk
	 0MGVrAm3nWEvPAdu4UMR/Aqyk6JFCuVQF0N5ck0DSbo6eDNWx1M1MVub7Ik6ZIfxLS
	 /M3/Z5jTVquIYI+FoV4monWrQh1AzzQQVBbMQMqRlIgcTtq9DPi5u0vJE+EFZTLnz9
	 TkbwOaGFP7g509N71PYeGWQA3UpAfs+9b3rpWlx/j8Forx6AzGQ1bwRBWV4zYyr1M/
	 adGKeUy1ZfhzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2692C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430739363.13732.2610407354073880183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2711e30e3af16533a3292fc758f8a4d8900308762519e756ce583e5eea0673a
Date: Thu, 10 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744307393
