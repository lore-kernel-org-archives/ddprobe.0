Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F91A15D1
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723688154; cv=none; b=EsvESQZdwCN8GrJj+S/GHRkhwbOW1Yp42JkqPvkopjETov7RT58bp1QgEojLputdOZycCGvzLbWUh6GOFJO6Pd7ig82xkDbmMXMg7oJxWvcx/rczzkeU1+2CK4yUO2oZn+mOXhrzkyQDBEId0nT1+JuWV6SoGEtLQwa0UyRfY0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723688154; c=relaxed/simple;
	bh=vTyyv7ILTcf/24PEYg5kGRFLfF197QnWKbENeGZL8So=;
	h=To:Subject:From:Message-Id:Date; b=dv1X+eQYf0v5FMY0zl/45wCAHAb8+cNxNqPrlWQSDjJXSCWpdExV7ZuxwOaCs3rxV9+JRzfz1rfR9dg7rUUJ3T9W8IIfmRqlqZ08zTvvBKJjCborfYSSUWgoUU7iio7zdSAwG9Jd8zAdQwYP4Ycj0LRH7Tsj9ualx7JcMxoTwGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxDG0PLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxDG0PLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B019FC116B1
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723688153;
	bh=vTyyv7ILTcf/24PEYg5kGRFLfF197QnWKbENeGZL8So=;
	h=To:Subject:From:Date:From;
	b=jxDG0PLGylzm3acpjdhT0GNx1UBgTdXeWukXyZe65BeZpKOenaLlecDaJQUJDLvhx
	 mpppYicS9JVx1gZ98NicrErcQ9Oj2jGE3pQ32Hamc4FsWl3T+DFwI8uuOu09N0Vwof
	 APfLnFesBDvwBGK6i+e8WzhRNbr0H0eubUe9/T8Rg4pbAl269yjUYpHuiIqQ76u6nG
	 F4W2gaL44dECrB9Su+cj6ggqydwVXjU83AkBTuGvz901MPbkrLKrUcId+yT9v1cLeI
	 jar2Lz+GakxGId1Fenmode+42smzultQQpsXEeLeYwa458zVWPyfQcnkFKiy1/V+4r
	 +f/SjNPMFkpBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AD5C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172368815359.4858.11058615037801556235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee09b9a6f750f378e63960ee6d4c4b68978623248d80c80ad427d8707a082bd0
Date: Thu, 15 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723688153
