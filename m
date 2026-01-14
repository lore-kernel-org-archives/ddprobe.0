Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045402E63C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768356834; cv=none; b=i6JuTIiWNPrIGiee8mmGmBDk9MgjA3cailGEfVGKMqvR+uQwF/5slNFXCpwPm5RnA/B+a6UBCfi3DqpoFkqSGaJj/j0XJGHqhHPDfWwObnzxlnhTXkW1v3bxkoD1xX8XvV3PqyEF4js+fbxHfUKTdTIbvdQq4bxBRV0wv/xDxkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768356834; c=relaxed/simple;
	bh=VDtmOwa2QjN11qWgbWWMyue9Aqp9DA9Vi0WmZQ2FpnQ=;
	h=To:Subject:From:Message-Id:Date; b=mcoDc9TS+JsYaGB57t7Gf2PXfc8JsXN3zqw7HprW1kF7hVCWqN6NoM56C1AaD9baY/djVCoBTo9bcu1xhAz7aNxnpuwlrx3565IhpEwa6+GeqIb6kSD41seMzVwdIBbYNSs5jxwugtgMAdu5zEJYh/jOT0epy8tIbxoiWoxmW5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8eCkCeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8eCkCeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A640EC116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768356833;
	bh=VDtmOwa2QjN11qWgbWWMyue9Aqp9DA9Vi0WmZQ2FpnQ=;
	h=To:Subject:From:Date:From;
	b=D8eCkCeIFoWdUW3cdNC0BuokgsSX0DUiBQirAb073uqTM9uqMHTYAG2AMvXbsoYFH
	 ahBk91zmJZVYWqf/aBnEuqVLF8IKdIO1aot56zJ5fbFIWVSyOxy0SIl0lvtcqSl1ff
	 TnaHatHiZvo4CGefLPRvoGHdIzWw8ouQTiOsoSkHgEVisDv+lklXtd1oq26sGP58Yh
	 OU8UMCxS4+EmKf30Z5W5RJtqXqQ5SGUJVUr8OnGry6rlTyt0LGB3Uo5eWdk2stwvoJ
	 tbfneSt9zLPWWqSxtpYYgQvdqLnzsKnjpCrkgaA+uf5lxpucpyZTHH5adhLEUL5s1Z
	 S4ED7W/+v4wpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95516D31A05
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835683357.12518.10347864475687429154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460f8a517a9b00fd09ad0c8afa909398d4c90e382515960948b73d61d5cca03b
Date: Wed, 14 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768356833
