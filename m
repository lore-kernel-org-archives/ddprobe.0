Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93F920338
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705572497; cv=none; b=muOKGZSWPGAbi80FGWpqDdAF1nP5BfE0hGU30yEHMbM6XrnUGqkWnLNR62AjfhAUD4bJrq5GKjlzJacloxwGu0k8tmroRMG590R+NvJt3eN5UGlwxFBQkI/1VL9M++SM48IKLc2Xif6xRw8GTV5c9luhfziZzg1tCK3X1B9Wvic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705572497; c=relaxed/simple;
	bh=57i2VmKTgYkdO8xWJFVs7OyCv256oTU0iHIbKbSwj2E=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=DOOxubWbr2idcDhkfwlwSEttW2VUdOkrA30IQt+tWoxPNtJTLHY1FpUVHjZgddHuM5gvx3X3aMDvPLgwCp0FPA1Q+DZYWFN6pKcFBRTIwGPE9ikQLkQeUQLDPfPYufzAOBrXB/Uwa7vHjHTdzY4OHYij3cefKjhGWC+3E0tTyCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIrzprRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIrzprRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76398C43390
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705572496;
	bh=57i2VmKTgYkdO8xWJFVs7OyCv256oTU0iHIbKbSwj2E=;
	h=To:Subject:From:Date:From;
	b=BIrzprROEo4YUDSj1fPL97tFmL+o0cpYoxpAjC76JvUItqcHSlvhJeqgwZTp0EeO8
	 EmJGFX2CMdqtSrxUXs9ANE1eZ7yHgepHpoZRdrdBZbpbqeHOdKnH2Jj3chYl61eEp2
	 G9Q1F+giwwropmFL0AOjkvhbR6CkRaQptX8HLzmjTCN9Pf0XoGCEV+3Ako6UPqW81j
	 rc7zFsYgLMeCYIAQyIW9Weu3VLcDgEoivIl2GuDKlmMY3AwQdhkvRiy9UWhUHaAaBI
	 8akLXOkkxV5e6QtYIEwP0jxUDC1XNY2skCO2jCycupI8jirix/dmw5ShK6iVU4YEMw
	 nohE9y+mMz37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B281C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170557249636.24387.15441095971372802972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c374c2e11af9fe8ccd1ca3823fd1b9fb302f58cff739a2241a53547befee89
Date: Thu, 18 Jan 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705572496
