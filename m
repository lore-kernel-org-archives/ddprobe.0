Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C892F2D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748926194; cv=none; b=PrwHmd6rzPk5feCA8eiYObdWjG8/uxWlnSWaLwtSGjJNpCcLrEZW9+jF39tNSzOr5LP/xnuLY3ky5oBCJdkZW0hqAvO1xDLfmqfUgDA5LJoBl9m58TY5HMP+JKE2GZi18FE9hZ9MHMFlG0QfnEZQ4ewYpmch7SYgiCVi/JWqA3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748926194; c=relaxed/simple;
	bh=/gj0C+Z271ENQkvtePB8G66MfTruVyvGAYWlrPcbRM8=;
	h=To:Subject:From:Message-Id:Date; b=VqMZ/P5R+36mT/sfZiGkJQ81KZ8ontCZ36tD7xhxGiVN8V5uaLJTPuqO76H+rCGyU9lqzyG6J7IWGHDANv7bioAzE2beIFcnMR59LbGAd+qGEAChpTG5YDQ/yqqTell0snaXb7iWyRXVok4yfQHT/fe1iqiT+YL4hOoVfzhpUm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9TBc92l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9TBc92l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748926193;
	bh=/gj0C+Z271ENQkvtePB8G66MfTruVyvGAYWlrPcbRM8=;
	h=To:Subject:From:Date:From;
	b=t9TBc92lJ754Z08IMZaAHaVrPeesxYb+usMBsastitDGL0vdn+q1OLnfSCuw5L8r1
	 9OVz/DqblKazc6WRj3JjVps0UyHxQOUeKFyOjKbBHU0ojycCsUoUXYnyj13/ox9Lqs
	 btcj8Rj0qoTbSlFG6aALNJEL4LMdVhiPTYTsARI3axPify2zQsvmYryN8aabd86ehL
	 mgcAOsgo7rqRDVkpCZYlEdmsWc31Es00oY0YSP0TNswkiBWfUJvJNHl//mlZUi9hL+
	 rIncfETkyegJgUmqC7czl0nb8uNTgkEaiC+ENzg5K8vNzG1Uj2wfl+5lA2/9zdctjl
	 pgyf7usVcVyoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD6C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892619358.7728.7656239894098112546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ff12ad9337c3c7785b3e8b98099671f608e17d28bd08ef5a1701f18a1aefa5
Date: Tue, 03 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748926193
