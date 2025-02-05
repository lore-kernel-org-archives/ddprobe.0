Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504531B3F3D
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738778154; cv=none; b=cGxeZaq7djWwlxXIk9OGLhVD1McRIUkwSXWpkLsMgBQXH2MBYjNjDu6s3W06+pnySv50iVbUA4VXZUiXmNe4o/gzvXOtifeyfghjs3xZGV/6MxAimcJHSAdTtmwujbJnn2N25cCDqDgqqOlonEv6dIlRsxIRIqcwBpPmKq7Svgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738778154; c=relaxed/simple;
	bh=7rUQF5UzwwcifkrG+u+lxXkyxKhKQNheuSdOiwCe4w4=;
	h=To:Subject:From:Message-Id:Date; b=rJx0SFqfAPhFPGPHT6RqwvhaEIjMnqJaCLPQW9KmASB+qEylQEiEylqlpYZq7jXkaLecVzSCSGIaufklD+gxrXPMDwgnpvCAsgoHvOe667qSmpDJpu3GZ7j4W65HoZ0cgAHW8vcArETjQplwj8zwqPtYSsI42vtBhT/WKXFT+Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWX5NqN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWX5NqN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E3FC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738778153;
	bh=7rUQF5UzwwcifkrG+u+lxXkyxKhKQNheuSdOiwCe4w4=;
	h=To:Subject:From:Date:From;
	b=EWX5NqN0EIaBwEAJtSc0EKQv30fqfwFzc/2m7CIDqMFSLtRSKottHoCytXQqf2L0J
	 bvKYdLy1uPUXrQugb68uwjl7rpXpqnyFGhl4KnW6jKdCgs0femSwBtgLe1r1I1RMrj
	 64Axr9aC7dCsvMh/5HhVEn5ymLDKm+l9yL+a+oFK7TDG0PMpRF3MVxS6fxL1HqSvX9
	 iUA/fNtcc0bY/BI+ETDQVLBLHbNmnJOvn89qwSI9jGjyrCNQtqqC38pmslhKxG6lnX
	 QnMrRHDH+5C9t2aXJF3L7BnKOR3bXvh4tZ/iQmoNzBod3O9h7yf+lb3mSnhy/6vlhw
	 hzXwVWIotoEGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDFEC02198
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877815362.22577.17743814050679563533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31581613ef49ab29253f0e56468e0d950558949346ac0685644414de5328314a
Date: Wed, 05 Feb 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738778153
