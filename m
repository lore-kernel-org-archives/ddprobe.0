Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FCA2BCF4C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774014294; cv=none; b=VoPbAsTnxScMD/3safF6S/AMk56oHgX1DqlTC2Tcp5p26n9zVRiSvPZaTp8DNdMhZxwhaizh0b4pMB+qBSTbjGBueoRJGlV9t5WaEdR5XCbQb9u7CxNnPTCjWIGrj6Ae2sGcFAspI5fqRi8nOfO/iwWT3uO51tcjGxLDW1pg490=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774014294; c=relaxed/simple;
	bh=NK/Nq+/JTfOfgilHEcyh+c2KK2rWo2XChPyavMQylVw=;
	h=To:Subject:From:Message-Id:Date; b=iKfDl6W1ppT7CPRQrP1IKbGfMw8XuT7G3p8HG1j11YsVXE8XG2pE1EKn7i2gG2PmKAQUnga/GEnF1aZ7JvYwLjJ8QuAhfFwTImKHxm7FOdtiNhwxYhSb9i/HEa9PJ9FAGsFnzVnNmMNr2rabF1p7SCtSRUB1RFI+FTTgZG9Q6CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itXGsA7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itXGsA7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F214C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774014293;
	bh=NK/Nq+/JTfOfgilHEcyh+c2KK2rWo2XChPyavMQylVw=;
	h=To:Subject:From:Date:From;
	b=itXGsA7lJW/K4op2vWRLTUscAdro/2+JDh1zNu7DHl5DfdApmFbAO/FqHRGSGZtc4
	 D/9ODblT1VmqkUVIF7V19CJkviRDZlbslwRRFOt5r3bBeEunRMe8kJCkvBG6XTFPCE
	 9sI7aDUy3Q3DWXtKyIKhpkR7Ca3w2ImPer2rE0SIIiOSjkg2gapXysEGkSvnzmalP2
	 fFoKb/vGByYx3SjGs9BN6T8/OD7CwggRZh6lQuwK/yPfDYCwO/AbKJJYGy5BEsA1//
	 9S3icO/83NDot6gzjJSfac7jQm3ppUSiSdDtyRiSWcAf53jv0X7uj+zwFfUr0xYinq
	 WaBrgwdtQ31OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7D1098782
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401429358.5835.13643109716299446190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc1f321a1c901d3fad6618e3e98a60ff31dce91d92ab10854cda40e4d259761
Date: Fri, 20 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774014293
