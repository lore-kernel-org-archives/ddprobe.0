Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C491E89C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776910054; cv=none; b=Ct63ehuqrl7Sft6c+37LO0E2IDOxap20IL9L/nT/TIdHQMYjwX6hXNzZTh5hEvZe085Pbl9h2UAfbYDm9U8RBv1lo7gLLW7k+fj+w53oo66gqsWk9xmwwLagcDtwRaDIaHKMkOL1XvM2Obzxh+6kumt408+l9d21QdRkMJQFRXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776910054; c=relaxed/simple;
	bh=VsWLephxniFwAYqbGfZhUsyiULLmmjxmRAxemSR4XLg=;
	h=To:Subject:From:Message-Id:Date; b=VDmeK/gA4WTMg7FY9ur+MrP0aHIE6po8jZ8vfPDnh4Yl9n948mx+GbAdLLJULuDcPs1F4BRxPjdbb1Yj/M8DM8q9ftfLGuOjRmnIpaGvMVa2WatHrDZ3uhXYzYF0XoL298JQW3ggvyRa1pac0QIXkWr1asSnAR25uQ80+YK2/No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+hJHP8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+hJHP8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5EDC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776910053;
	bh=VsWLephxniFwAYqbGfZhUsyiULLmmjxmRAxemSR4XLg=;
	h=To:Subject:From:Date:From;
	b=q+hJHP8BngUAVta+XK+8wB9R42mC6p8wJYLupDSgQC2ekSDkawbSsuy7J8G0Bzd1r
	 AbtzpiJBRrlM8CqPWWm6Gm8Py5W3HugZ//FiF7y83heWqNv7LkWQsAnNbK0T04QZ9Q
	 ZdIM/f+QUJgmfE+lqJg1k3UBuHe14O5QXr6z7tY754+nOVf12Xi2/q0C4fEWPz2yhJ
	 I8+/b6HlZDXpgM+PGJYuwwkDEnr8rNxAE+IAHd0GP6wlguu4GoG+NhaCUX5rQSxE1N
	 lcB23KzqR8epW2lxKZs8OttyiGs35F0OFntXZVsT7EgLD7Ov4EWGCLXSQ+dncA26Xf
	 hge7MuQVTmMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D0FAD3E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691005368.26026.9352476769429491242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05eb620bc8c6bc93afbd0cdd3b8c478691476bc9dbbf16d495fafcf73a26357
Date: Thu, 23 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776910053
