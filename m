Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D807C194AD9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727906753; cv=none; b=eq9qxcsYhKzfAblNqxEMXgphMBkVBjUPd46NkDy+yiPtu+XQuB5NJCxErcNTW7809huvdlv8nFvUOzCEp7moEbJXRMyiEPtPuRzHm81l+JENshG+JjlaDqtO9g4oUmfIzN9pRE/X/QkxTkfFja/Gsj3rs6pp86dKrVSSFv2PXNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727906753; c=relaxed/simple;
	bh=3CD0bDdLdwzIDzzy6DsU2RBjKgm6OgoATJYq1TL0bzQ=;
	h=To:Subject:From:Message-Id:Date; b=QEcGJCsC+wwUo8NAsbUPXd37TIusrNrjACnvyMTw9SetMQcIGuvO8wio3u3kB/BJ5L+cIJtTrali6aDSmLA8P/KUBXY/2vyVEOvS8hhNsZ/OU5yF0xYBfRf00vKNOr+7+2Gj6K8+hNGg1QxS+fY0FiCSyNDjwCXfN3lkJElCxkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ3+tS/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ3+tS/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B5EC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727906753;
	bh=3CD0bDdLdwzIDzzy6DsU2RBjKgm6OgoATJYq1TL0bzQ=;
	h=To:Subject:From:Date:From;
	b=GJ3+tS/4G6wsquEKzFVp5EJVxJWjdgiyyeklwoZ5JZ8fG6EgDO3aINdAnzlzmow3K
	 lmJLGHA9uYH3iA8hR4T3UH79DSEH3QPbAIi8w3oRvGXIYfhhGdBIDZxSUYPEm5md6P
	 +wD5ZBE6daYz9TdbOIx5l3/d+pglI4tB8QZczgLAJVNqTXt0bhoO0qStzqgMw5vjd3
	 pybQ70K0X0S2MNxiFNiVdYC3D/JoQHFC4Z555eXUBSMvch5JUJfvVc2f129zOGi0P2
	 aSfGV/luhfLZap7RkEJKpXI8HD6dO11EwKFGbPAd61phKS2hxqMqsxqFr4bj/xwiu+
	 2DpDoiUvl3NcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A375CCF8540
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790675363.11775.14913312887183559700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd71a0bbc7929e229b9a6e86564630b79b572a27878af1e58c8951b0f4afef10
Date: Wed, 02 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727906753
