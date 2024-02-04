Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B55822F08
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707065297; cv=none; b=h5kLMCZ+0eWJvg4HaInsuSGwcH57/9XxhYrGX3zpC+lP2Xg6KegPro/wII7BV6Mb9Cx5hurGk38g0TJXB/NRYLWTrQJcNHiKKrL3YmqswrJRU7D3NPqlrtM5EaHHNvvHGm9voYctznGEnMb2nz8Qrud5+lM7DLFxF2Q26EZCYuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707065297; c=relaxed/simple;
	bh=7CdEbAaaiEBz7sZGmxOxjNhVnx/mD25fjYolIDlRE38=;
	h=To:Subject:From:Message-Id:Date; b=GCH1pTUzajxc6KjnMkHTZfB4u+2FBAp/HJ59kNKPBHhIa+XiXbZEgd8I9V1pykZmlxe8b0aTMgbA8BTlTL9H9tFDJJRrU1YuQ2sCQOiIHZO1POR1q7XlFklYP/7DahzJehNCAVQhKBzqZnS5pEC7srCjeqNHZxiiD22f3jWVd5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohW1A4J8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohW1A4J8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 941E9C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707065296;
	bh=7CdEbAaaiEBz7sZGmxOxjNhVnx/mD25fjYolIDlRE38=;
	h=To:Subject:From:Date:From;
	b=ohW1A4J8gSq7MRkXDcsN0YhC32q7MV5rtX0fHxEvtdVpcRqisDrC4DlKGvjjjGSBt
	 B4pNeeBLPh+UIGtqFkpLT5tQLO+WCtNUxKVEI74flokWmRjUuv1W67IFCqW/zGSr9+
	 bDmhHZsu56be0XP5ncCqdve0cp3zsDDBfhdMAjrg+P0EDiAmm9Gydjyx+gQZdLlTxJ
	 ejhf5b0U95MnyKspVo/mIZQ4GNAPVn0BU74TqRUOAOcRlT9oj+6lScIgUKqqnL7HbA
	 qOf09l15FoylQBU7wKBC7piDghVHZfvsEQssdJIynZ2VtgtzXywjJGPeB0MNwDoq7k
	 Sp9q/eSSyMWPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767B4C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170706529644.17757.6073630194120342260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f020e39dc40400f3b863795fca34ed87ef3985ed4edf1f93ee8127b17b840be
Date: Sun, 04 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707065296
