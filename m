Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2A2293C6A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751896194; cv=none; b=ND4uxelmIkAI/N1hralrqGjsauRvJwjuTgLy2y30ioylejaJGp1WJBjVYrLGV9T1cbXk+sLWJ1SIKV1q8YFmkMlJQVZpx+3gLs8h90+t39e+koxcYL2YGhXH8ycm2U1sSP6hu7lL8IcWGopYRiOhATsvcsV4rMN41t7T/0302go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751896194; c=relaxed/simple;
	bh=mfwDivzdj2k6axzyXk8TKwle4msssv20JjmqepYMjss=;
	h=To:Subject:From:Message-Id:Date; b=oT7rfip8oGeOKIdtA1YiCKxGhwE8D1oxNLLmZ8fWofdZLLOhv6YnYPDf+y7/rKG6Gk/G7cQPFTGgZhTktYpZsCl6Cf/M4FTtaPojTT8yWE9VFJH234+RafCcR/xWPBJeN4jmB+qWwrRDeeHfWOcefMhif2WF89HF6s4JOlyAa/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW++BVDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW++BVDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6FDC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751896193;
	bh=mfwDivzdj2k6axzyXk8TKwle4msssv20JjmqepYMjss=;
	h=To:Subject:From:Date:From;
	b=hW++BVDJSA4aZo5WzHJfVwPTSxetcHTCDbi+pAF0ddHK0sNzxEmpHEfsWJTdZJLSX
	 fMEy1EW8XO1oQdz040ZEnlpvCbTrJjYNILpi32lgwCSepMEew17enBwmG3LasDIqEb
	 gtZfZYaT6NnJrYo1ILab2xllqLlv4Muk2NU2na9HkLsf8tCjpE8jv+DP+q73Ykhj4A
	 Mf9W82I536uYjtB2cBYirqNMS+OuCROYBHg8xK525d1FQSLnJkLmYv1Ih7q8EkVUgl
	 zqDJeHPVZd8W3DhSvpN6YgleTng7sH8/tnvYwZkKlQjbSATlHBqkCp/LXkZdQpL5AN
	 QCCqMxrgXvElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51FC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189619357.1086.8669490358906362357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5769abe79d0efe0de5ed8ff68156a1f1b9f12b7c16151659e62d2443fa929caa
Date: Mon, 07 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751896193
