Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375FE3FC2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748581194; cv=none; b=ZeAPiGaGy0bMcZoRzyuX4yYEerMk4RtuoCnDVgU9LdTuA8Z56JFyWrdk2Il/1zyx4gaWqfQgIk4SAYRBkxAR/4ElFIKLdqRpIS5M18Ksgik8sP4SMz1DPfS4bkMN62y1WZYaWT5sDhve0nl/gr7ACBZo2OzcHbpPfryu0HLpYQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748581194; c=relaxed/simple;
	bh=MQfZR61xOS18kzpDRuv4Ik16EcYEX0lBFox5ldStUwg=;
	h=To:Subject:From:Message-Id:Date; b=auqJwkW79hu8PBWgyiGRm9KzEWVI+pAy/2pK1m5b3LYOjS2pYwDiZvGqLVnLcN35fwV0nN0BkuwWEAhBEcURPvbdFYenKzHhaxjenMQJj6OCtPfnA4t2qtpEDWKtwE61VMDWLGGAS/kZDzA3xf8nmJAL8dMgYTl232s+etNqUsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtNUSy5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtNUSy5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748581193;
	bh=MQfZR61xOS18kzpDRuv4Ik16EcYEX0lBFox5ldStUwg=;
	h=To:Subject:From:Date:From;
	b=FtNUSy5pai187numcpbNvW06bvJKQUC3MvPVI006s8xOPgx+STolTQHrbOBxEsUU3
	 4RBqQZZCo31HVTUp+wxOLP2D8a5d+txMVJDsmQ5fUcBmvXySH6yNTD1w/+TIHFzBdH
	 WUvxQYYpUtrCXkwN/CluufLV5gDChyGv3uWlvDFe3jGxpzJWVhHG1AqaqFyhZvOtNH
	 bgxphQxc2yzkJ89J8y0q+qJZ+ifR9f8Hv4DSt1D59ipqACgDEPg46mngy17RTShPBj
	 AAHjtg3tsG8Jr4AhBYQuIhyBzBUQuaWSQ5OTRsI9RMaJApN0TkESm3w2fDUQReLZnd
	 9y/Y3dD95wzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA15C54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858119358.13883.7799611477208700325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc4a3a69f71d10a6a121cad85ca94b1ff16eb5c6b8f382815f7cbb344d9c796
Date: Fri, 30 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748581193
