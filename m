Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5442036E9
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755243594; cv=none; b=l7bfb0LNi5n14QchNHn5fdpyczxcZgRilxq8YrZ7XIkLMZo2Zw2n2BjqzI76D2h2OGwGb9a+a2oJivNcnCCWFBgQnxs4bi9eXC6ZiqYEyxlznqPdHKz3j6fDDl2h9EzzefpvC4d4gHQGnl1eICWpSbubGvVCf4+y6CvT3d7/kjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755243594; c=relaxed/simple;
	bh=NW/IdXrmw/2ODVtkwca8FQN1QMiqzbkFs22lEySk/JA=;
	h=To:Subject:From:Message-Id:Date; b=CTvKuHqS0k0iJnqYsFO3Bpb8/2G1g+JMpvuhRPiTuG/qMtmfc+pClrvfixt9bmD4uUqS0wA4deuotJKiT/XKojKR8RwPydkN8eG5Y4mFzeU2gqk0lmpEqlw6Zhq14Y4tZMALIYB0l8JFAmwgrrwzXEEF28zh/gso2mizc20klBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSTEny+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSTEny+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484BC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755243593;
	bh=NW/IdXrmw/2ODVtkwca8FQN1QMiqzbkFs22lEySk/JA=;
	h=To:Subject:From:Date:From;
	b=KSTEny+BHQQL70aURO7N77z+1tmHM3k2+kBZwuPUrDGjSj2JjuwMKT55y/K0thKXk
	 V/T4W21uvQ21yTnOfVRgXHKk4U6Q6JztLLrqWW84h8yTIaUr+FWJMJ15rabXQPpJRX
	 lapn4/z7tuxlvYTg61UkPK848eJ7LfQlJUg3Y/CCTwa05Shg9Sh6T2Ho2kRg2OoBWD
	 K1aetUOLg5rC5imc3aHW6OpZQ0R0qRXNR/Ma751s8PkXksch83Nrw3VI24CxY3E8w5
	 1lHaJCpikypcBgmIwj4gJCJ6DX3mJh+G9jqd8JEnI1aI9w9XLk4NG1bgLtaO2K8+lf
	 PqetyPawFLJew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B08CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524359358.31901.5012253356937490622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820c546a2d5bec0cae45e8b24c9776dcd7abea3fc5e76381d30417cfe215dccd
Date: Fri, 15 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755243593
