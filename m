Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C00D238166
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766699634; cv=none; b=A+AfjR+UdmNjIwdJwMKPzs0RAeEqTonU1Avn2egf1kiXl1MPQWrlUNR5q+WZV+PTSPJRbbba2jbJTpLB8ukVxhmF5j6ULyzMyX/8DKhAFSjFmPMPQu1rMQKrDyZkLTMI2VfL7U4of87rBLa8hbiVtr6bYpfs7nJ+ggsomRE4D9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766699634; c=relaxed/simple;
	bh=nGj7bsEhrXjIgrZaxsOtBOa9YjE0Vw+7UXI/KnGezMw=;
	h=To:Subject:From:Message-Id:Date; b=s76QicjqZN6O3G0rxqJhsB7FAgk/OOjdkbwRhm/3UeN4T0dzuKEGufwDUKxUK8Jbz9WUYevewQi8qIegH0vrx0JspkHWM8/pgB9Cyi6G887Y3tAQVWIHjPhNa5uFghExwRQ3CY9iiBXOWGKg6i4bnG+sAf4SeGKqDLP4rebNt3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0suPZCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0suPZCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B3FC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766699633;
	bh=nGj7bsEhrXjIgrZaxsOtBOa9YjE0Vw+7UXI/KnGezMw=;
	h=To:Subject:From:Date:From;
	b=Y0suPZClKzUAi4GKoUghzETU3kHA4F+H7Iex4uTz/bB/Cd3SJBI11oURUKGYTA4d6
	 pDSlOj/k3on+7FZWYQN52CC8VxzDpzB6q8WnfnBytJjZ4W5dOendh9MpO6ab+XCY5j
	 dlxuzvkWp2qt0OH6PTX2NqGSMHfUY9jrAw3amrafdAeBexCJEwMu+HXU2ESLQTDNU6
	 Tv+EkXQPhhNBXhp4eZ+7SZ7kCAACodGS42RARu8M2X6YdfQ259DDMz8G4hsCHqCL6l
	 blB2o+7ua1wXcgU+zzZDSYV80MeWACGcQ+r9HgKqwirINzF6cr3csRhc1xvuxNaLhr
	 +G+Dm0X1CxHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E20E7AD4B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669963359.23068.530020498432436567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bf2d1b868b5cad5b64246c95b8dea3b2e86dd36d7f0059addcad5b602c65b1
Date: Thu, 25 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766699633
