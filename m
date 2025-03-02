Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4106C1BEF6D
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740902334; cv=none; b=NCMRWMkYPb4o1BlYVDpgC1cFVvgtazMECRsdlvkgdNJXgEk2rLDoCs8OSZJq/P6BZUEuq7X0zNpjGo6/tYaB8xv59zyf1Lak9kxVZOE49vee9dWRG0seBwL1GBPwCOlsy39cqVbkya9SKW++Lo9su+1/uwPP9WhzqSoPtgBXYBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740902334; c=relaxed/simple;
	bh=ddAZ0wH24DfCaLanqtNVxSRSuS9eH32ikQ60bKVxrV0=;
	h=To:Subject:From:Message-Id:Date; b=A9aF0z89vEOt/KhV640kxniANuPw/ehO3cxMVoPxqyRY/6N61VAUMAN4PlYxD3mA9RphDI1+6HfqTU3U2560bLRFyK83nt7zrbbe5w0Zsk4unSqCP0Y0UWxJAdIDI5iB6HLMqtbdDT2CGmVDR1NZ4yaQ73DLIa8mjfyKASzPg18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6bvQM45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6bvQM45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91FCC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740902333;
	bh=ddAZ0wH24DfCaLanqtNVxSRSuS9eH32ikQ60bKVxrV0=;
	h=To:Subject:From:Date:From;
	b=U6bvQM45cmWyLZW3lJnRM7ZMxYr9SHuoe4YKkdhTex403EjPmP27BaV4nYfpQfVe2
	 5MQeGqw7okfJ2Aqk2ywmyWv9TZpDF7DSFFf52cyvrRak6PTygkb/EU6uSl9ZjzPekR
	 aKFTJFjGmdEThGwcrixSwZtucXyvhO8C6LSBF1mHK6ClKozFF7o+dzi1Uf7kPqJJN6
	 Evb2GsfEprzYYF9zr55DkzQktRdu8eOzmItRd/NnjMAZtxROseEY7ovH37o0pI9iZJ
	 Hu08am0g74lZkFAAXGrqqSg95Cy30IkCTs+UDs963jiWmcaO49DLhQ2yqq3z/peWsQ
	 m3I4axbgE8Jlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB3C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174090233359.5011.15892441105867260120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226dad7c351d63a3ec6210813eeb91e2597503d1c679d57aca8dc082a71cc657
Date: Sun, 02 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740902333
