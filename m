Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4B035B130
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761275994; cv=none; b=Ka5Gi8AvnTgE4uw+RleOGPg3mQWc31FOuFMJYPbtrUS3nbqGzqHEmSJjPidmcy20/Upmk3cwyDUs3qAlN9tvJnd1lD0c1ITddm4VMoaoeQLHt2ckSAilos0Ruz/JzzFlbdlz1ElFEU23dDWlHzEmvAwIksnIGMvBlhgkLPAUqqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761275994; c=relaxed/simple;
	bh=R2r9X9Y4SOgJA3InIHFVqrEitLomng0LEZI/G1DOkf8=;
	h=To:Subject:From:Message-Id:Date; b=sjArpaoHla6iTCgj1pc78Z2Zjg4xuxtwZSUzGF8AwMOimm2bRPUO7HjxrEBbjGHjUhBE/hVzUPXakzX9Oh5CI2xXwjgGoqpMQJy4BjgVS3tkRV8D3w7AQsw78ad3uDJU6bk9HcN7HzJEfu32B4Sdm2STb+ShMCMbOXwI1DZZ61Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4FB0fwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4FB0fwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B51C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761275993;
	bh=R2r9X9Y4SOgJA3InIHFVqrEitLomng0LEZI/G1DOkf8=;
	h=To:Subject:From:Date:From;
	b=q4FB0fwppQpPrM25ofdWAJVyOwkgtqAi/yzWKzrSW3v28gOvdNAPa6xvvR6J6hjzk
	 YGVhndyqIadPXmjymbK8st8W4V7Jm1Wg8QA5YaHxsMuT24UCpiPdHvq8CuM8+FQM3h
	 gCEySerwueV/kKFBRXevbh3yO76kcgluyVzRghz548M08F8SQpYbzGpv2yc3eFS6wv
	 DVxaKy3R3GJHUmBZiylQIpysL0SZoly2hY3Im7adChlWHnNLOrKrA3mYw6wJxA3Hpm
	 LpWJWncolNGl4RHexs8d75DIjKKXENgWSYJbzt5m7uxO7BsAL4vAjlDCEGyMY5wlXB
	 jg7af+q8ia7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242BCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127599357.20739.1516137649925828688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00be24a7c9e39ac7119417cd06a5bdad9c9947ff49aede66cb57959d2dce16a4
Date: Fri, 24 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761275993
