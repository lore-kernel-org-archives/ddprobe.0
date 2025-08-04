Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DFF2E3705
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754279394; cv=none; b=oezuYBiqBFo+qVPFRblL902/iUhjO0bgsvjs843CLbl5AqBvfOGJtfERm6v8IJ7fhIzEsTI1nN63R5UKq8TtQhjv9S5T2yOOhA/WALTCd7Zu8SM/SQZgKXWvZzDOI75grIIt99QWfXtI83uiWZU3MUzum9QFpkO1XWMWDLpM+Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754279394; c=relaxed/simple;
	bh=2nVt5+c5NburU9CX3wnlVs5cNsZx1DYS3QPsQVodxwg=;
	h=To:Subject:From:Message-Id:Date; b=n6LlYzNF/c7LG/4sxnpTT27/NTUW5rl0cnz10t3jBa6Cwj+bZ1hKeSsZWia2N3xiC2ncpL6AAvl0TELqdl0KewJ+sFiESqtL3Sc8eriVc6jOiIM1ozKDRjPrksCf80ypcUlYEDyqKM38fBOU/Fn3faQJaKFuxJUUOaFa3R5dEMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kf+i/lx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kf+i/lx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754279393;
	bh=2nVt5+c5NburU9CX3wnlVs5cNsZx1DYS3QPsQVodxwg=;
	h=To:Subject:From:Date:From;
	b=kf+i/lx2J1HgJWK69hn5KKbRWuIMWibDLoucC8qiNanA/9Oiv272s5tMRbiQBLhu/
	 Pww18BEuj++abTkZAwEyWCFJJxLWmrlmlUU6+PpCPurduTPKsCbhuSMw0gn8pkwbuy
	 g7OHe/NqJ7a0ay5GsfdcMewuRZQF07Fg8y6pkl5XgTTeyTjwAIoNYb7bgZ8zL135Lu
	 I4fu8hv6C55wzKp8HGJb6c9oNSfVU9Kym4HIPlD6wjvNabjxThfGrPuKqwAnmxdmRh
	 s5Zid44M80nJBNptaEHfzywC3zpSbLvGzdW+t5Fv7LBsPTrmE0FEYPwnz1jWXP9yaq
	 lY/WbsLUube2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A2C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427939357.6477.10531802725515216515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48eb4f740db45723614818e901ab7e1ebd8269925d0c5352f7ca679c69532573
Date: Mon, 04 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754279393
