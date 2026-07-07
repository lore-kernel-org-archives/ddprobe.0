Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441B52DF719
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783384714; cv=none; b=iuVWkO0v4TwW76SImehA1zysJ3Wt40S6NSAJpoZAbGzUs+CthCEDH3oqbnYcW/IGTWRKgW39DiP6rp+7DX4kxlIRu8hNRCk261mBQpSb5pbsHReK0Gx8bzvDhpxS11wFVQMkX++bplHBohExXDiONVtksJcBBZSMfYl8cmvWnKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783384714; c=relaxed/simple;
	bh=Xh2QmmY8OogYuquxnsq0hsn4GFvvfyvFqjjsx3sZhpQ=;
	h=To:Subject:From:Message-Id:Date; b=ZlOx+lCL/FQ4/7y3LLOGePUv9Emj8r9c6V4cnAd6paQagUFPTfiKjZtg2v+5Z1njwNB2yK7QI2WVjFbV0H3Cuyv7K9yeOSkYWKF5J/llh+KjE9VACR2C+rm1g/2Z+FFe+k64mGyPM/KFZTTvWGgN5jXAxYeqkrMXdm9qnoHHXN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpCsgxsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpCsgxsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D0EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783384713;
	bh=Xh2QmmY8OogYuquxnsq0hsn4GFvvfyvFqjjsx3sZhpQ=;
	h=To:Subject:From:Date:From;
	b=EpCsgxsphMyCP2q/WchXCjBOejQlNDs7He6ZSF6JtQCIQzIK7L+ah1XnP+0qS1/sB
	 x5wpXSYPF9Zjui2C6Y868pvzt34Kb8KGbgl8JfO/0Rk44ouzXXle1Bj/FVMleWTE0l
	 2xQl1g2IP8OeNrAiq9M8KMDBCdNibcDn9ZP9crmigrqfNVdgswQZLWg6D32s7WBiv8
	 GpUrAiyBsSXYLu/MugBEYmb311cSK5IeiS3HOO3sByyUAGJ2moC+RJ9PK+w6AY6o7r
	 ohZ6vasmn7Hdj/k6OvtVi+gdM1MEGLkjaiP4CsTA9JIDzD7xJlA0LdKLd4bhIWlT8a
	 9KRxBrbYsQPHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE302C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338471368.24881.6720416759729294870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0c713947fabe96627dd1a777e86cd3f8d2d3a678959dffd129fd738ab8bcf4
Date: Tue, 07 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783384713
