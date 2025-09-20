Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317FB29A2
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758340794; cv=none; b=XXrtdJqr7f//vLVWhPvoUsXB7wl/PIo1IV8TTay+jcOjvhlIbZRRBpUKM6lG1UlT3OgDcR+dAFGmyWgJwKVtMZOLeCHv88zv8WkqMGdkKdNuvepe9MlsWTQ90KBrmf9PNdtK3JryWhqja3JZ/1e7Q2Hnh+scmktOlsCLR2ocHcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758340794; c=relaxed/simple;
	bh=izoQBpW7JP7Hj5DKzETCQz/4T24QEJlXpOTrlFBSh6U=;
	h=To:Subject:From:Message-Id:Date; b=JRp6OR/ZIex43d2Cqvj5GdBHqbV7h98eJQ5Zr4pmfYV8io51trd6wZqLWLAglodSGQgnZQhzUjYDorqO+m4c/lGKkextnt/JjGnJKVie/cHmn8OaMSfeBxLxyBhghitQKoGD9JdpU6AjGNBXtQJxzErJOyOHr2e4hluhV6WLsjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1/kxF85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1/kxF85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E66C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758340793;
	bh=izoQBpW7JP7Hj5DKzETCQz/4T24QEJlXpOTrlFBSh6U=;
	h=To:Subject:From:Date:From;
	b=l1/kxF85siVeoyAanVXoewzFYcY5LC53MEzHeJHvpPdUq3b75B2WPbK5Yc8XEd0A5
	 Q0t6QM2/uKwllRRySiA3KjraXdhQrvsV0Fg2ajX7+Gcl/1zwIzKZ5WGbR6Mh2wcpB5
	 fK7HxJFJGZKB5nSk2JbvRB1QEbmdHlbWH5oY3EcFJKeIegpYKCxs/ZzfHfK8RJih7n
	 CK4rrvI2FWKHYMSdRs74gPbtikrhbxWoGWO6YO+fKy9orxtsDPWsJF5I+4ER+wf6Lk
	 pU/I/Sx40JMiMmTkFkE47i3cxpYu3GjzOSs8Fr3kHqUbNQQQMXbOjMp19w8P19raws
	 RBRFndMrzv7VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91290CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834079357.22257.11419010652243445519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80fa73b5c4d01b48ce9573bc9ea995699609ca90b2786358a3b01417d359799
Date: Sat, 20 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758340793
