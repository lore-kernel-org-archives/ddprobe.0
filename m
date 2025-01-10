Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5F624B25B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736540154; cv=none; b=TdecsSFc5H9j8rUPFORjHRvC6HZjqts5/OEQv5deqGDdOu7pCgM6U5e0Q0c41fIS3v9gIEcAHy6ipm9KVDQ3B27SNvqWWG++bTsKpMuvi/Jodbu1oRlSH+mCbe4vQdcbfTTwCMStTlpyMa7r68D3mZHEZ3gyi3N0E/7nEHsiB3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736540154; c=relaxed/simple;
	bh=wfJrQgLZwdooRcqa5UoypkXviGaNxFAaRvL/13pfCUQ=;
	h=To:Subject:From:Message-Id:Date; b=XqsIorh7Q8StE/du9yoq/qfLvrwCuN3oPqTCm6SMpgCZEUcyFg2ZvTBDxZktV3ZFOShubxzpIGYRnZx5q2fno1j6UYKXZw81/fE3uEx0BgPN9y1NkVKK2ecZiLnrWMpEZeyaJYbqYHOd3l98WVUY+znR3wW5YWuZ0UUGne8BraA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+VtR6GE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+VtR6GE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A0EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736540153;
	bh=wfJrQgLZwdooRcqa5UoypkXviGaNxFAaRvL/13pfCUQ=;
	h=To:Subject:From:Date:From;
	b=r+VtR6GEDTokJM8tE4ZSBbTIMA8XCMuktxXPFwwt8yQCu2YP4Uu4oGheJQQq0ZuAP
	 /B7SH42Sc/jfZ/pitbRx6vWrVB+9hc/SSV2mbEnjJ98neWGRXEXp4UFyzI95zVuPhA
	 VaGHCgQAeSln50QS4bC17s6YFuRL1Yt4fZ05dD2bZJ2IhYrsaXtoaHLiNm2Ylh6WBc
	 r8B1nh3HvQI4tkoMN0qiUENAbm4/Aa6oDPrafUWkbixXbWXuFn6VypQTB4i5xjFKHc
	 ARdl2F3H7mndiwShL19CWwhLwByLrGIgdt7M7u7cRcmSlQUulNIIzOgU/npgNafzCb
	 wobfJugKjLyOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98670E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654015361.31641.9760932553792618178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d648fb12a9fe08dca689c16666349ce66393e403ddf64d43e6905f6a2cfa2cb
Date: Fri, 10 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736540153
