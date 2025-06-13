Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93F274C08
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749773393; cv=none; b=pTaYQ8b63hGvUM8bomWgx/jUeTAYVC8MJOUI4Id/3FCfBcDp7yeEKj5A4YpXgYQQpFfdqfsjrARQXc2ncJInFq+3UNH3LzG3pbat1UUOsgMmj59hxaNhcyExYxJzj8E1ggxYKi7U7xyoRRAfneEarkS2oB4AviwHQSEM168+tjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749773393; c=relaxed/simple;
	bh=7K87eUQ8QU+h2hws/d4voHRP96Wh6+H58VjPC5HP164=;
	h=To:Subject:From:Message-Id:Date; b=RzY0nOJwE3COqSzMum6fZ0YHGNa/VmGFeiQHNBAnbtli/5osoiXagAwTWvRB9smF7pSoeHvyuhCFmvLYbh5riGpiMDGN1PG60OefKgD1OdyECNaWMMdcCXyFTfZZX97nLYyLCyiVa2NzFYb7/cd+kl+hbgrc0edBUsGwGGWxjtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI3oftu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI3oftu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6967C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749773393;
	bh=7K87eUQ8QU+h2hws/d4voHRP96Wh6+H58VjPC5HP164=;
	h=To:Subject:From:Date:From;
	b=rI3oftu7jtnGoeYOMe4VCEah/W+5CLR6714K6qbJD7D5OE5FYTDOLkX64QGnrsckz
	 nlXcq9hMw3W9+AwtAj9xKOgHE8rI7iVD7rE0DZphD0z3iIg5EOTwFoi28lgFa0EZjR
	 8tXEVr0VzGxF3dBR1p/dHc+IOKEh1q7e++2cHJpxHQrfm3q2pELMPWaDh0kdW7SywM
	 tanpRYgWpLBHKuMGWzIVRpuP4lRVZxih6wSte7SJ2J4UrH9hifiq2RSadHVh7tLWJQ
	 r1KrBnyOUZwB/1lHcECmOGGyo2OioNBzDmI0dumNHAdFy1sT7IpP+pzQDUcdkxjJIC
	 EOzfAq+865T3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CAC61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977339358.27608.8095450486652955775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0f3248486cce09e051b2f3c9afd066973dc732922d7bbb12d7522d70c212d1
Date: Fri, 13 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749773393
