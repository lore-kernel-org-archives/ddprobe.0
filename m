Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B54F4E2
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715493143; cv=none; b=rbGVnsYMVMSojL0yITtUqIXY42JsXOrr/tOWonhzk8tTu+uPBNKNqwHsGBpuFoliSvI31iP4ZuN01XlP83G3TeK/tE1X1tM/OlamS1eWsbGw83BU8AWWQBv2etvbjSK/oY4XxS4VzpWQYFF39Wgw7EUjwJ7/updBI56DnVkm6Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715493143; c=relaxed/simple;
	bh=aMLaxWQVoHzaKIZaW3jSrgYFB1a3y/zQSkHemgVegQs=;
	h=To:Subject:From:Message-Id:Date; b=d5TH38nFKqj3WrlGoDB+MeIlMWMf6Su2n7qwWN4Zq4lL0k/DTEWQpV/Zjf1c6+Ze71YeY9lQPjpfkcoHFt4jlnrm7aeVz6YIgdtW+ANFsy23I9r3EQnqNb9hYdPVbZs/yrfs8RFW8bTVkeRjbqiRvJ+3R91AD0ruj+b8H1HLpq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOtQ+goj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOtQ+goj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07AB4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 05:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715493143;
	bh=aMLaxWQVoHzaKIZaW3jSrgYFB1a3y/zQSkHemgVegQs=;
	h=To:Subject:From:Date:From;
	b=TOtQ+goj7HmqmqfLRk2WMombI4LxtYAsn9Ypw6LgNaOCoYY3gr6ur0l9JlX6AOFeB
	 0vzN0UNSRmcH5mG3a/I7mIcmYwibWAD47aL5Q1PTuWHWxNJRbzR3K/+ybperWXs3I0
	 tP0lYbUzEGUayZpIMkD42bJlGCuXp9oSQl4eqSozHy6aXyLznzGxxARixva4OVUyTO
	 tNaBJ7QQiPZiav8gTXtSB9dHmbNvsTEI/pJJEN/i9i1Bj8BB6RDS2BAudnPZAlaP97
	 pO4Le9V4r3tNg9L9GBfWiLinQdJb7QEXLIKnS/FR991maZw4mEtoxvWnFUCWgTQ77p
	 AkIDJotS5EaAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D61EAC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549314286.23036.17844616932356365615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce544855c7dbb76d5514257752c8ea3a59ab70455c3b484455873f9e1a8a8580
Date: Sun, 12 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715493142
