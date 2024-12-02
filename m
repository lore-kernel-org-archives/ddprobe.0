Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E41FBC84
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733135154; cv=none; b=lC7ac/p6JGZ9v7bUxhjjQjLoEi0PCAkpK6dhbe+3bWUGn2GfmyR9rqLS8Aq7Hm7XDuMNQHX55ppRNKflBrAIkdrBoXqmHa1qOJcSixkVVJFjQJZ+ECeGcM7rsuQ2lEFIqPIiUCDz0QVPqF+c/J9N4TvxoyU7pj5Afgyt9xEmrS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733135154; c=relaxed/simple;
	bh=Ccm4zJcS9Xx9BriohiUQotwTIY6vkLn4/GD91kpW7F0=;
	h=To:Subject:From:Message-Id:Date; b=f7xpiw4EXYiNeIeMjX/VD81XI61BEF6GV+T2x6wdfjsBIv2VvOltjfLYjD2rHV7oGbhZTWNjNkD8+hRX6ZMCz3w7860y1i9CqTxHPAx9uu5a7+yy+Tn7SJ0mn/Hk2AKHRVWJ3HGViKDrHu6r/0OqdfRhLbJ/Di85SBm2ayC57vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3LBaibJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3LBaibJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC152C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733135153;
	bh=Ccm4zJcS9Xx9BriohiUQotwTIY6vkLn4/GD91kpW7F0=;
	h=To:Subject:From:Date:From;
	b=k3LBaibJXwPhTIywLz5ZL089L+lhM1bZcVgrvlnFUfpXd0T28bA4SATjdXIu/qvaS
	 yVNFjHAo14Rfx42X8G+ToaB8P+oIFflLjHhciQzM03xTCVOOVoinU7ESgR4YiJWL5v
	 Hu40FP5DfIonmVzzv7sR1y0PNhuDshIxZuDu+oTXZwZivuPcaOpVPpIGjZolEaysG1
	 aY/XwtpcR8Za2fi+A0FGQUuG7kiHN0pVeUhfpDENStnaNCpDSXM0+RN9QuEWxHReOj
	 EKgKHykXv7zQiNXG4xjGC1MbjO4wGARcids5IqCaU28WrGZYi3CK6ERsCtElLa9Glu
	 6MGIF/r0Vr/8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A228CD78302
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173313515365.22517.5508219487520776093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c1cdaae7129bf252c4fb4a94a8fad02b8841c862c070c6c9d363d26b8307a8
Date: Mon, 02 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733135153
