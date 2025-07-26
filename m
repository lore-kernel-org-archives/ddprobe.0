Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0348B1DE885
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753567794; cv=none; b=nl0ZsCa4UUGWKQC7kTX3zKs4213gw9vzqLsyi8C2PY6eZ4MDyrrcces1q/GPFb2v+0uH+7ZdnkgmpOUl1K5KW2smb7aHc92K7H+fgGYPkGYwLCq5+OskHd5d+L8pFq75LMMVqhfYyKjNYkq0cwhdyzjnlwZd+dnuPEWOUIwtD7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753567794; c=relaxed/simple;
	bh=LKj47Ha7Bn8lHSkeD6UuXdhMTKglmTVeppd2boQwDJc=;
	h=To:Subject:From:Message-Id:Date; b=L8ZaGoEWv9jTORIeFP7KLuuTb7xhXKdGJ2B5qaDJeP4wJu+phN1A2KkINPZ7oh+cSmXM8cf4O97KCWmRNGvePYv7RVzvurA5gj06A9RZVYZmlG7iTYmsv8ugHIQC8yGd3kBSXqK8NUq8rIHaXGgeNgggq4vy1UrIVjfqUsPihc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it79WwRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it79WwRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C14C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753567793;
	bh=LKj47Ha7Bn8lHSkeD6UuXdhMTKglmTVeppd2boQwDJc=;
	h=To:Subject:From:Date:From;
	b=it79WwRVeQX0wlb8t4tYgSkoWtTeeytne2uBYpKP+EesbILh2HP7VAk9qcEcGGha2
	 NyW9koXNc0AXde8xZ6iimQqz5cDotkfHPTbxjKJ163Xhe+y9mZd33uAp8GkJoX1CzG
	 tOJo1QX2eLxDliwvBGYUTVBWNxs/MyrELWOxgenn+2Dx3s/2ydCOzI+obZqaPpKHDv
	 zJKYkrc8cC0mEl5uug1rmhqy1x8iUJUdSKyf1kQoURVth7/lLOCa0tPbrwvGg6aN8R
	 o9OMAyvi68wNTpBPHWV/mP7tWE84F4klZ7a5WmPJ4YyCv2sD3PctmtvdeKHhYTj4zd
	 3keQPA+aQvuuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92391C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356779357.21270.17945888105360126126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3332ab64851f09fbb6d85bfc435b507636889ccdc5d533b9675033240477c5
Date: Sat, 26 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753567793
