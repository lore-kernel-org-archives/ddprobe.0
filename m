Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA457284672
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763150994; cv=none; b=KgAAwX770clrfkDu5gOH1eLtzCxjxuN08mDzM7IoZgAIqlpgiJlF+vhpUDOzjFrrpBfWsyOWY988NT1G5QL6BCTQ9OzbMXIExwrXcy7AuSwumwjePTPpnvYIlsGYXuE0TZLpDzkAS65oHxD8VD5tgX53DewZ5769Be6brAkzYAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763150994; c=relaxed/simple;
	bh=2SIH+dZiUkPEgXPqovhYsz7ycsXefP7g24wiRDf5VKo=;
	h=To:Subject:From:Message-Id:Date; b=AYhwRm4veBpNPGvDIc/oVkGm65wxZsjhjJZ9ymqz2vMsOl201BtnK+NWAxeCEu6DJh3s9VCsuTOASy8UdSl4g8VQ9YTtcOIj3ApvI5LCrjnz/yL1PPBj/DlCQt/yX14OHXlwq4rgWotagCcjgW+A/a3/1l+sMRlj0YqT9HqVyGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dU/ltOAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dU/ltOAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D310C116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763150993;
	bh=2SIH+dZiUkPEgXPqovhYsz7ycsXefP7g24wiRDf5VKo=;
	h=To:Subject:From:Date:From;
	b=dU/ltOAQ3GW4Ea1hcCQOIAIx0c/eHu6qOlETH5yIGbVUWH+WOFdMQf+KGSfkeIN98
	 zHhK2661SlPaaAH9C6gkptBxDfc2zU+k0ypOKg/xd6uXTOmWF4EUm7q30I1hrmK75C
	 0Ed0CK+IBXBjMJyfgGKxoAJvMDaGBeuWTKqIerv2BlkvAPcCK3ErPP/Y4e3L2svNXj
	 zoSoEmFNklpcGuifi+dq/2/ZMX4uizkZ9mlPbdrqglw2XXBkqNOpSUG4GSPy7VIQEa
	 pdJVJFYS8IvbQgbk5nXDPzi7IKAGaBZ7u76tRyJNBlzqIKJvCDgp07IHI0HbHSHVzJ
	 XvouOVl7rxLDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0BCEACC9
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315099358.6496.7942962200601120548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2c9df23410c5fdaefdfbb2e316c5e5f794e60315aa7b2e46344c95ebda6bc0
Date: Fri, 14 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763150993
