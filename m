Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1D536D
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728554754; cv=none; b=Sz0ETdmylP21C/l4yngXrWT9a6MumojzAothg4zwf63Uw6LaLYvmYbVaab7sBGRDa0OFLZL9dlZQxwypgTYIZxjfWE/Bq9Kwp14gJoRz6w0OB0rSk1voNnxoa2dliJFbLsbu/33TARKec5a5dnuItjDk0Ypi6XfErESlddm4Q5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728554754; c=relaxed/simple;
	bh=t4UsScFTMRkRlqtK5t3uKw44qHyJI3XMjXfPM7LBtFQ=;
	h=To:Subject:From:Message-Id:Date; b=HAa5ThFEKjPkWa1XQZ1Ia4deNlUXydZG8NfHbEDjtWcIzH2n1mFRfYVj89G3aAq+2dFNUo2Gz4LXv/cZgndcD9H8Y3MhcvdfFZoInoWI6bLtwTvSzwLTvuRdnjFKvS6iasu0zf20BBXaeMfhYl8uKo5cVTbuRCEJuC8v+RO3BQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDkyQ7nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDkyQ7nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A0AC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728554753;
	bh=t4UsScFTMRkRlqtK5t3uKw44qHyJI3XMjXfPM7LBtFQ=;
	h=To:Subject:From:Date:From;
	b=TDkyQ7nxTDvVyofQUqVZ5sHCblJ52JagHDB+dYohfoQJkusX0G+j6gOztN1apKghf
	 /s/TmBujP2g48ustp/N+jZWP8scurKINO9PQ8BMXBMor+q4TzHOhhylw/1O8YlvSYZ
	 VXYhesppG+HYqD/5CTtYXJNoPULsH15UqXphxlONGpqb+S/uvMru8tvmC6ADgyg/Hz
	 RYMnCMlbRyeFQ3wWLG7E1YVJngVQhE3uCywD9yMr8YzGlGIBEjY58zV8soAftiNPDs
	 ihRZTmaP3ultweMU0KB4o6G5qWoIRHSDNYs30eJy7zG6fSIUH/WcrvLcfKkrw26p/p
	 kl6vJ4QENyYLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96872CF11C6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855475360.15575.14346608905673170110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e57bc09f242b6bbc7d081377754f8f91fa5f58ce10225675c7c733bf037d53
Date: Thu, 10 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728554753
