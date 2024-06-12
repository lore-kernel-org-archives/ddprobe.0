Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF0E2D052
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718168903; cv=none; b=WPpDeBhtnDcRFu0CBNnXE8tJUNDwkEfsUnS1xG5GrB5Od79Aon5gxeREmTE8wHFocXd3LMi3wfemvfDtzPiNiku9c2QhfI15zCJ6ubALOnDGLCfCC7COXs/41rg16d5kxcVeBtDELy3NLmLl6TQJwTxdQV1Z7vCo0mmGaZQxmzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718168903; c=relaxed/simple;
	bh=k3sxweqYJwkQjFPN8tIROvZPWVnJilTe8S0puEJldnA=;
	h=To:Subject:From:Message-Id:Date; b=AhNCrWkCN1tTQ49pO7q9W9GQdX8sfYqI9HEZPYT1sX5GC/ULAXclZDqvy1BzOx0RJzt3IoOo6NrbUSeyB939CGTRf4lGfRRWMI3fcvkJwuQVZpM/FSq8pSjiBUxKbXYill6qmGEM85BtrOxnCRbNTwpoCvJCu6EJGzaGFP0lOzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWfv+VCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWfv+VCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DEBC32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718168902;
	bh=k3sxweqYJwkQjFPN8tIROvZPWVnJilTe8S0puEJldnA=;
	h=To:Subject:From:Date:From;
	b=fWfv+VCw34WHOGh3Z4ccnlnfOpi86byR+rk1D/IumW6LNS+RLL6gEAe7443qoCaHo
	 WDsjmF//USuJWcssV27e7drb55KuXFSc+fHahz3U3SSgJU51vDpgmR79j5Zf8USRHk
	 DdaSX7JUFqOTYA6HxlhEd7HbmA4KOB1Qo4JL/ERahM+rW+zcw6BViqzyKr1J9I4Ls3
	 3mHjoYU5jCZ4G/b1KDV80dF3NMmD1zqvJPVl48PPmjHMQ2H0rQXNWVHojWq1hxE4pc
	 C+AJKloSHGvIUKcjAfjZOWCr7nBo3A2Ivq02zK8vn8r1iphOXIrvPGlie8xRdftnA2
	 IqT8fpoP60+/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4435C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816890285.29658.15069279905993344919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f2059c8088ee515a85b7ea3ac57aad4d53bf6f35d642fdaf4d59a2060aa0fd
Date: Wed, 12 Jun 2024 05:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718168902
