Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BBBA55
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757032194; cv=none; b=NCAaXA/Et5BiWM84Q/EPr6fr8n2JGr6R6rSCt2w/J87LVBRq6XNOpQinOhipu7mUC7RKMx3AzVtsEAKmWmDJYFvHR7Pg759gvvoUbFmpJG4wXpPOWsxEPA5zvyvSXoD/0Aqhu9y5AQ7K8Apzclp2Ia32snhty4NlTtrlQhLHWnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757032194; c=relaxed/simple;
	bh=DXB5iyK+tEmyVLJKYSilLGlY9HGTvAGXSVPkSkXNbFM=;
	h=To:Subject:From:Message-Id:Date; b=q8JsnV2BHMcr4K53wQrSOI1cL1myaXMLLmeK9+8Ry9kVOM5fhnAu/cBfN7KNhm6LOHDZlm/RonnDt6VJuhm0VdvMGtAdByQvHD884xOw+QwcvVvR5q6hi83wKRKBIOnfO4Ih/L/Vo6RRy+mPVNjAeHqjEqi7nzfN5r/tQ17AXG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuBMTu6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuBMTu6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA283C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757032193;
	bh=DXB5iyK+tEmyVLJKYSilLGlY9HGTvAGXSVPkSkXNbFM=;
	h=To:Subject:From:Date:From;
	b=uuBMTu6mloxhvcM55upygOt3ZmkvS8kFrXz7cMn8BPQtvfY+tyodRYw6qwUWhTiAV
	 VHpP8/tPNH+3MF3NKFPLF/3Val5HSo1YrCb4O+M+XuJn1k8nmWs5b2qQDoKi6Z4Pd+
	 o6kOdcBelktVYZ0jJbfAw1uFFFvIPbF9Hol1t3696Io6zWIk5RLOEYTkilk1sMP3lh
	 qaRbrkAcqsMDn5djuT7/db/qPfLhM1kMmJeq77WdTgrooulh5nIV06rnZ2ORWP9gxt
	 dJjDSbcxHf8I4h+9MApZGVMm5sdoBobV176lDZfp/qarvXuXtPev6SIzJqhhKW0RTY
	 VwkwA5IajFI2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93651CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703219358.6623.11783327030740415344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411778efeb1ec9b25b0ac633266acaa6b52e15f3ee5f300463b536b56a78e9ca
Date: Fri, 05 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757032193
