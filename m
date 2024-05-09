Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1DA38DE8
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 06:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715235143; cv=none; b=NJZMha4K1aBAUgrcGjagok21/W2ApSa1iJBJyXwqKRrJE/7sBjXgqHQEu6BFIm7UCFl/xsjYq0d6igatjdbNuDoOU5L1GmQziy6jbjA/9VSI4sMlat8iobvrF97gAR8JgIEfO4UDH2lGxi+P9y/yfcI55zDSIkDZb90qdrDpL/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715235143; c=relaxed/simple;
	bh=cLOydCkzTtJ1aumnDpTdkObf5nrrRqH+LaE6QQ0hwsg=;
	h=To:Subject:From:Message-Id:Date; b=TmffmEPXAnUohqD4LHJo7aECrrQw9ulp/wgdYbdH9qq0dbBvvVl9KnQe0H9x1BolNExtg/5VqYyCVwnIvrehb0hCJo0v0LZF7WnN/v5OxWLJCbMQVU2WwLPxL+MG1e4PVyIHP3ZOTnRqI+sn6j1vGA3W41O0yMPqQ+nV6dhLJlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlYEhLne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlYEhLne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4629C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715235142;
	bh=cLOydCkzTtJ1aumnDpTdkObf5nrrRqH+LaE6QQ0hwsg=;
	h=To:Subject:From:Date:From;
	b=OlYEhLneM3llOnCKycl0O1GTt7vPYXUQOo5mfXFAOlfXM90mOdA9ODTeYhmK63vC1
	 Samf6VdPFBoDC/g07prAtVIBgLIwJPyrjRGFGNA/um1GOTGYXv/dQ2P3p0gdzbOs9y
	 ndRI3JEA8fdoG82iax4/ErDIniLH+zxTFWxWa8cd1YfDxuElIDkvVsBKXMx/B3IBJa
	 Qv6PEmJgxbdKscdPAkIbsFHXfq5nLNcSt2e/Ejm/OxLbvQP6QWg+V/HYBasBkDHI4O
	 Hp4zdG5PfIeG2JIdojqnTsXHQHIHp33rJZk+/w+j8MOSY8WykGNoE3wH93tPdkLtBs
	 g9caBlm7qR4rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDDBC25B74
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171523514276.14072.3492824260220280307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdf5e33b7ca02c6538551d0529580de5db8ae243b028b78c9ed5f15c0b251a4
Date: Thu, 09 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715235142
