Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B33F374C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706588297; cv=none; b=Xuzc6hwKDQpfCzINwC/0/V+egRzmdVlJA+V+ckXd7SsGWoWQRYMlDHfz7+xRQp0W4vjXz4MuN0zX2MYYBYiMET6IjgrBZx504ht/dFc7+/IaamckcW76QTLTQYSD1SJviVf8GVJfA/05JhF4YaMo4BXP5KJs2tQqmkHUSLblbII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706588297; c=relaxed/simple;
	bh=c3qfca+SeB6JNHHRudgEZBXiRMXYI5GoHHpYBO74w7w=;
	h=To:Subject:From:Message-Id:Date; b=qyyjAV1/4ApEgVwjqKPp7rW1z+OR3LNqyBnNj3S2Qq4As9qCY8axSyBoVtur6JLtF0LJNi8evzyEk8acha5yb6RReIRQ7ti0AO4ZNUxKBfqmYiFmJfsnSAtlbuosddIqq9DBXHuxRnBglwGfdc4D/5Ug/YL8usvcvbwy3UR658w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFg4VGlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFg4VGlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8375EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706588296;
	bh=c3qfca+SeB6JNHHRudgEZBXiRMXYI5GoHHpYBO74w7w=;
	h=To:Subject:From:Date:From;
	b=tFg4VGljEgNFyYf7Ztel5EHHG4jNzM/4XiXtrUKti40sphUyPmoad9Wwe2vrApZms
	 gaIM8jCXYDG+c0rcNf40SuFeWr223CYF9IUo99JJWyJKP/HTleduADNMI6DzOtUuuI
	 ETYZ+htlqiKArOYEjTnCZTPgT7P3cC71UbzfeRMCzhbpzK8+DdulWTY6Avja05kEZi
	 gWU7ytt3+0wQ5efEFMildEL/i2kciFOQ8GpM05PqrxdM8mhnwa1g48AwoI20KCsmlG
	 LBgIHXW7ZYHtsMyB1LxB5bujxDrLUOLPT+75j0ZFkMW/rif30IznPZqT4JEW+tT5Eu
	 CyDDOWonOTE3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DA1C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170658829638.16260.11854277680650624536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78662d19165a68c5a80efc08bd49b26d9a044067dfa0de1fdae2f7a621c775b
Date: Tue, 30 Jan 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706588296
