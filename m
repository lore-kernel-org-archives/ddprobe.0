Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4E8272E60
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751473194; cv=none; b=twbrbW9y5sDjBf6d/FeB+FGh4J7vw6inzvzB534L2y3zZexR99kXrwriXF6YGdUmyrnCdJV4qKDQZPHLoqeCzsuX3N4wRYHMo3mFW/+VBAlijOATR/0Im+7XSyHuM8AQHwT/Uv1jltmoYi+qNJFWSKBnQadHBjCAT9OfuuFy2IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751473194; c=relaxed/simple;
	bh=4KFWN2U7sZ9uhNhq34J1OGIUVhDVaFlNH9AEWYcCZzU=;
	h=To:Subject:From:Message-Id:Date; b=j1RZqXuLjTOY7nytK8H6gPCskTifCNKXEa5TBN+96Nv+SEaM3EVR/BEOFovCMzZFvN12LqMgWRmJ6Nqjlyj3iIaF995nXnhLl7FDNQdjg4pXWGWKV+ZLby2irpupIeQH4AuONiZdoxAHYBdUExE6aii569VBtxDZ+UAs6lTkCH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldXxc4Fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldXxc4Fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF79C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751473193;
	bh=4KFWN2U7sZ9uhNhq34J1OGIUVhDVaFlNH9AEWYcCZzU=;
	h=To:Subject:From:Date:From;
	b=ldXxc4FjUkoxyJ/hrvUQu5kBqWhSFG7EEXSR7OgDjzgcZ6q7wxLxm3svTBTZtRHhB
	 yoBWk6SwebzZxvUuvoywCgkyLaw7Fo0+tQFVA80E4q8UP8u0E3MOawmSVHyaanTr2Q
	 IOCP3MV1oN3veR8G5mSR+XEVQuDxy2kvtGl6KgJ/wosGbIAluPjS8gWD6K+Zlu9CAn
	 SMh4pA5LgJRuBhVKTpKWiVYJkGHtv9OiCkf80v2OJdnf/hF5WtDXseKU1lF6lxifeg
	 A2wPC/lQGfNQdLEC/f9x1+j7EUCwW7eaery5wDLyRI9YloDOVdUscVWkAo94eg9isn
	 S5AB6XQhY4PqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9131AC83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147319358.24168.1700131739076650187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0534a58832cf38da694d5c49cfd7b75334c572df9b583d02028290242a9de3
Date: Wed, 02 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751473193
