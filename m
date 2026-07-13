Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898CB2652AF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783952314; cv=none; b=pNDQjjy54E7QgUTAz9Q7/hdYkL33Zi4qgnO7BkfVn/GAkMq9hh4q7W+IT/+HxejiCYyO/MsgLcBmmkwbUz1anJcAO2izcHoVK0DIYwllqbOCf5foFlQUyIqyWLdu0fW/G3hWSgw5hlEm4zd6gGp4jCPn8N3T1YzMmNFapLfl4W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783952314; c=relaxed/simple;
	bh=GebxQAcIZXIP65cZXuwSiy3y/5sHtkbtcCvbjJY5OJ8=;
	h=To:Subject:From:Message-Id:Date; b=Sm5/M1jcN4NWUZAMYAtWgf1zDKGkem7iD/rf0p5ocTvmBAagJqGX2zSVH+JdwjFc+6F1PIumeHcZGrgaSHVTixFU0hzLB3fN+nlUbEwDin/3eaBpeb31tqeW5Br+ictfCu+9OplD5pspT2S/4xN7UEpmPe8cjE5kYzUM6K/XhGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcaBK8jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcaBK8jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7FFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783952313;
	bh=GebxQAcIZXIP65cZXuwSiy3y/5sHtkbtcCvbjJY5OJ8=;
	h=To:Subject:From:Date:From;
	b=DcaBK8jq2+dv9otmTFKMYvPSAA6f0rw81SU2xmlzc6AmO+q+ZxbCMo9tGgmn7gQ12
	 JyJwzJP0ltspdJw0uVrrcqhdLIGziGZGW1e6WVv7IbA71E6RiN7Cl0btE763lwkwbY
	 zjQ7LifiqSf6CHYWd1CejmQG6pOz8zixEtzUz+X/7axHt05e0ZDbK23feHIM+flm1q
	 aDv1ovIfveJBjXUoN/QurtTFr936Jr58+bi5Dwj2h4zujIOHgWn504yoX0tufzyHu0
	 TgFFNfQ/vWwT9MiGC5xS154E4YLcwm/p814MSIEcvT0gibj4j9wJ5UOs1fq/EvafLN
	 5xqQlVeo1oqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA444C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395231369.23903.4454547691352925368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e4cd0d992733799ed43dad3de5230a32f762482a9eb48853890d2aef72a756
Date: Mon, 13 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783952313
