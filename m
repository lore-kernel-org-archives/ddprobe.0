Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B33C263F5E
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765357374; cv=none; b=l7QtWBH/3abPbA9uibNY8olrHeurDFnRcvbA+C/AlFrZBiUJig6ke2hs9plhJTny9bRBKNLxlzo7HdPx0GPsOvS3/rREIc2AXZjta+Ex+4JofQge7enLiNmtRJZ+Eahb14AavoB/8K+973hmPhnmw+PUojAh6g5DmnlXkHnL9/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765357374; c=relaxed/simple;
	bh=HcYHiYaNd5yqGkoWfgvXnO3QG1jLtvJHhS02qAkGZGY=;
	h=To:Subject:From:Message-Id:Date; b=ThJTO+1IA8Z4rt9viHNIzhYrbGPQ2JonVODwYbBHGgahOrJofcosoLLuAp9N5CuvSiF4tS1nVal7qWzsInfBuc/RZec4UaGL5Rw2C94jdzRar1jtvPcfipjF4vpI6IUvkbqnYkjmUciRVpq7sk5KpOCel5wLNf3eQeN3KPBPHWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8EA8r+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8EA8r+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9E5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765357373;
	bh=HcYHiYaNd5yqGkoWfgvXnO3QG1jLtvJHhS02qAkGZGY=;
	h=To:Subject:From:Date:From;
	b=A8EA8r+hd7iR4SvfQB9r5VELb78/NlmWB+lT0WEXRPER7ZaBV+KQjqoOTHavxKF4p
	 ktGmTAmQI60B2eK6Vez6cP4w8CtEwA6n8SoM7PoClir2oDFylkOZPyTg5lJg7tZeP4
	 x6XzoxbYky49edknHgfsNO3lhS7kwV0hQbpyh31ONBqD4EhS9SUHUS1+zqLBImdkAY
	 811Aqf0COOW1q9jEwv81ft5Ddi/XABWMr+QVDYG3txRtLBAlkj7oBU/LAGzinjiTX4
	 EmYkT8qHAWDfbEKJuDlxmLR7WFCNanNgxuTN1Ad/g02Km73Z74xfIqLrbkQbd3Aogb
	 duP7Ev4CvyBJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98204D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535737361.26935.2557232690489734037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e62bf360b633a38201ecf17d9dc52a389d3de79e1b09c748b958ad925d0aaa
Date: Wed, 10 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765357373
