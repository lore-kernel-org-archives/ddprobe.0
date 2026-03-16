Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBDD24E4AF
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773648294; cv=none; b=s1pkqysams1e1kB3jG0bLKa4IgI0p2kk2YdGdWjJQK1s2B3r734WFEuPqE0Hs3O/k465085rAhCatOIl8dmovRgu2zNB7GNH33L3hKfi4ySgEYjN2TmI26+LDywebPwATCZ/nCOECUIwnjM7FjTGxOqy9A2FxAmWpED4ZqoHP1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773648294; c=relaxed/simple;
	bh=iRkkivBETrwjOsOYYTnE9n61uceDahFMgAIy4q3DeOs=;
	h=To:Subject:From:Message-Id:Date; b=ECAASnZC65p3nlrpS1KAbr+QlM4jRYQu7iyK0fae1eRnI1naS8NddeW59IT8piAZBa2yfdtM7pp3wAXH6jyA5+UGRedML0Lx0QsBqsay2Z+tRvzPBhnBoVhls/AVgSvBTatYkTt557oBLPCy7mXUCqHMqxPwe0SA/emKPQ65QWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4YTh2uR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4YTh2uR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF180C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773648293;
	bh=iRkkivBETrwjOsOYYTnE9n61uceDahFMgAIy4q3DeOs=;
	h=To:Subject:From:Date:From;
	b=s4YTh2uRIofx0Xx0ffQSPueaL0Lh174ResML+N5AXufcBuu4ZFpqCQpP8iXhu9K0B
	 LCTnxw06FJqDq0jL4TCwNnH48lS/0GtpKogOGHMH9rxsHVn9ajN6vjDMQosBZ3A3RT
	 M4oB9ujSUvWbNjNd1MP0ejs3QlD9oAj5GBAwIztvyh5HI7Wdinf9RAwvzg10vY/k2+
	 U77zHWszy/AujWwWPdM0lSPFjfmG6rr5GNam5ytXuamWq1OsVwMzwVV/ffXsUBGBN6
	 t74pNlwub+cp4sVBa2Slq0HkfHdeEGeiRW0zsTwHae1YTWustX0DiPJtvALrYaXJz0
	 C8P/gC/2bsdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C41DF013C5
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364829362.13675.11499197035935809947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51881c44b7781b06368904fcf4fb6d62857649f1aeb9d9df7f502c2420c888e3
Date: Mon, 16 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773648293
