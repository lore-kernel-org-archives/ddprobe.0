Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4701D1F5821
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744774194; cv=none; b=FyUE+NMgY9++4YiJYQhyyuD7N71WfGMik67+7Q7Gy70l4t12Apvof/g6McHK4nJ6I7L3DVMTuGmLoPArzrNyn6FAhVYMwL/9CWn25EWaBcAKYvF2Sef1oDnLeF1jiqfx0IENkm3Jw09aWVDZkWQY/UKSUlf1OvNIyVk+KiPxlow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744774194; c=relaxed/simple;
	bh=nBRkUvu+dSC+kf12MQdA4rXHp1RZIQMllQ4ydaY6qhk=;
	h=To:Subject:From:Message-Id:Date; b=jZGWqe5mNADiNy+HcU8lCtKwlg8QAmhGtD88t5NVVWPCgLbtJrjEi/5EpvtG9foZF9gMdIDqneQ7y3OmhXHtsDaS4QLnIhs02Y3Xg67GA6iO7ox27NrZw2WLgOmFWlJC2GCDaLHt/K0L92H57T01YtdJltJ3KAvXHnmVLHH6jX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUsgtamy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUsgtamy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEBAC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744774193;
	bh=nBRkUvu+dSC+kf12MQdA4rXHp1RZIQMllQ4ydaY6qhk=;
	h=To:Subject:From:Date:From;
	b=CUsgtamyA3T4ZC+GEC1PO30QeqJ0qIPrgjR4HnNMqdM0MwNS9UUt5VYxBxdegxG9f
	 cbz8s2KtTH1IM3tdCo+jShcyHhRaOLirVjJpoMUZEo79xMejvXQITkyavTceixLwD7
	 QegJ6HgEiTdZLAUNeVsDL4/MY7zEnegjXwdq6WcIIz/F/8kMQa/wVetYuxxphimzjs
	 Koz4IsdJQB6ak/PRYoM+YBpcFh6AONfNrYeXLQsDKgJcqmDFPL4okbU7fU/rculhnl
	 3mvgWiWNk8CsOGG/CIiQBZ5GuqudRrHYnLkhN0vKLtj+WLO3Yxtz+3JKbdc+x8LrrZ
	 IMCGOfXLZaGpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3101C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477419364.25352.8082124573529568475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412021d4f81b2f6ee9f9270279243c78a4f96096cf89aaf51ff1fe4cd2ae5857
Date: Wed, 16 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744774193
